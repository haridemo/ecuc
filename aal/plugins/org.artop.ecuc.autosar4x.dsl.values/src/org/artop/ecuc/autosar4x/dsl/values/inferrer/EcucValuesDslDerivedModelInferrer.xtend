/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar4x.dsl.values.inferrer

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucdescription.EcucInstanceReferenceValue
import autosar40.ecucdescription.EcucModuleConfigurationValues
import autosar40.ecucdescription.EcucParameterValue
import autosar40.ecucdescription.EcucReferenceValue
import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg
import autosar40.util.Autosar40Factory
import java.util.List
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag
import org.artop.ecuc.autosar4x.dsl.values.naming.EcucValuesDslShortNameProvider
import org.artop.ecuc.autosar4x.dsl.values.referencesapi.IDerivedModelInferrerEcucReferenceValueContribution
import org.eclipse.core.runtime.CoreException
import org.eclipse.core.runtime.IConfigurationElement
import org.eclipse.core.runtime.Platform
import org.eclipse.emf.ecore.EObject

/**
 * derives (m2m) an AUTOSAR model from the xtext model
 * @author Christian Dietrich
 */
class EcucValuesDslDerivedModelInferrer extends AbstractDerivedModelInferrer {

	@Inject extension EcucValuesDslShortNameProvider

	@Inject extension IDerivedModelAssociator;
	
	extension Autosar40Factory = Autosar40Factory.eINSTANCE;

	def dispatch infer(Model model, extension IDerivedTypeAcceptor acceptor, boolean preLinkingPhase) {
		println("start inferring")
		val packageName = if (model.packageName != null) model.packageName else model.eResource.getURI.trimFileExtension.lastSegment
		val autosar = createAUTOSAR
		acceptor.accept(autosar)
		autosar => [
			adminData = createAdminData => [
				usedLanguages = createMultiLanguagePlainText => [
					l10s += createLPlainText => [
						l = LEnum.EN
						mixedText = "English"
						xmlSpace = XmlSpaceEnum.PRESERVE 
					]
				]
			]
			val arPackage = createARPackage
			arPackages += arPackage
			arPackage => [
				shortName = packageName
				val vc = createEcucValueCollection
				model.associatePrimary(vc)
				vc.shortName = packageName
				arPackage.elements += vc
				for (m : model.modules) {
					val EcucModuleConfigurationValues mcv = 
						createEcucModuleConfigurationValues
					arPackage.elements += mcv
					mcv.implementationConfigVariant = EcucConfigurationVariantEnum.VARIANT_PRE_COMPILE
					m.associatePrimary(mcv)
					mcv => [
						adminData = m.toAdminData => [
							sdgs += m.tags.toSdgs
							sdgs += toSdgs("source", m.eResource.URI.toPlatformString(true))
						]
						if (!preLinkingPhase) {
							mcv.definition = m.definition
						}
						mcv.shortName = m.theShortName
						for (c : m.container) {
							mcv.containers += c.toEcucContainerValue(preLinkingPhase)
						}
						var index = 0
						for (cc : m.container) {
							fillEcucContainerValue(cc, mcv.containers.get(index), preLinkingPhase)
							index = index + 1
						}
					]
					val xxx = createEcucModuleConfigurationValuesRefConditional
					xxx.ecucModuleConfigurationValues = mcv

					//TODO xxx.variationPoint
					vc.ecucValues += xxx
				}
			]
		]
		val ite = autosar.eAllContents
		while(ite.hasNext) {
			val o = ite.next();
			if(o instanceof Identifiable) {
				(o as Identifiable).uuid = null;
				(o as Identifiable).unsetUuid;
			}
		}
		println("inferring done")
	}

	def void fillEcucContainerValue(Container c, EcucContainerValue it, boolean preLinkingPhase) {
		if (!preLinkingPhase) {
			definition = c.definition
			for (p : c.elements.filter(Parameter)) {
				val pv = p.toEcucParameterValue
				if (pv != null) {
					parameterValues += pv
				}
			}
			for (p : c.elements.filter(Reference).filter[definition != null && value != null]) {
				val pv = p.toEcucReferenceValue
				if (pv != null) {
					referenceValues += pv
				}
			}
			for (p : c.elements.filter(InstanceReference).filter[definition != null && value != null]) {
				val pv = p.toEcucInstanceReferenceValue
				if (pv != null) {
					referenceValues += pv
				}
			}
			adminData = c.toAdminData => [
				sdgs += c.tags.toSdgs
				sdgs += toSdgs("source", c.eResource.URI.toPlatformString(true))
			]
		}
		var index = 0
		for (cc : c.elements.filter(Container)) {
			fillEcucContainerValue(cc, subContainers.get(index), preLinkingPhase)
			index = index + 1
		}
	}

	def EcucContainerValue toEcucContainerValue(Container c, boolean preLinkingPhase) {
		val result = createEcucContainerValue
		c.associatePrimary(result)
		result => [
			shortName = c.theShortName
			if (c.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
				index = Long.valueOf(c.index)
			}
			for (cc : c.elements.filter(Container)) {
				subContainers += cc.toEcucContainerValue(preLinkingPhase)
			}
		]
		result
	}

	def EcucInstanceReferenceValue toEcucInstanceReferenceValue(InstanceReference r) {
		val result = createEcucInstanceReferenceValue
		r.associatePrimary(result)
		val IConfigurationElement[] cfgs = Platform.getExtensionRegistry().
			getConfigurationElementsFor(IDerivedModelInferrerEcucReferenceValueContribution.CONTRIBUTION_ID);
		val contribs = cfgs.filter[cfg|"infContribution".equals(cfg.getName())]
		result => [
			result.annotations += r.tags.toAnnotations
			result.annotations += toAnnotation("source",r.eResource.URI.toPlatformString(true))
			definition = r.definition
			if (r.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
				index = Long.valueOf(r.index)
			}
			val anyInstRef = createAnyInstanceRef
			anyInstRef => [
				val contexts = r.value.contexts.contextsList
				for (c : contexts) {
					val data = contribs.map [ cfgx |
						try {
							val Object o = cfgx.createExecutableExtension("class");
							if (o instanceof IDerivedModelInferrerEcucReferenceValueContribution) {
								o.toAtpContextFeature(r, c, contexts.indexOf(c))
							} else {
								null
							}
						} catch (CoreException e) {
							null
						}
					].filterNull
					if (data.size > 0) {
						contextElements += data.head
					}
				}
				val data = contribs.map [ cfgx |
					try {

						val Object o = cfgx.createExecutableExtension("class");
						if (o instanceof IDerivedModelInferrerEcucReferenceValueContribution) {
							o.toAtpTargetFeature(r, r.value.target)
						} else {
							null
						}
					} catch (CoreException e) {
						null
					}
				].filterNull
				if (data.size > 0) {
					target = data.head
				}
			]
			value = anyInstRef
		]
		result
	}

	def dispatch List<EObject> contextsList(ContextChain c) {
		val r = c.prev.contextsList
		r.add(c.object)
		r
	}

	def dispatch List<EObject> contextsList(Context c) {
		newArrayList(c.start)
	}

	def EcucReferenceValue toEcucReferenceValue(Reference r) {
		val IConfigurationElement[] cfgs = Platform.getExtensionRegistry().
			getConfigurationElementsFor(IDerivedModelInferrerEcucReferenceValueContribution.CONTRIBUTION_ID);
		for (IConfigurationElement cfg : cfgs) {
			if ("infContribution".equals(cfg.getName())) {
				try {
					val Object o = cfg.createExecutableExtension("class");
					if (o instanceof IDerivedModelInferrerEcucReferenceValueContribution) {
						val result = o.toEcucReferenceValue(r)
						if (result != null) {
							r.associatePrimary(result);
							result.annotations += r.tags.toAnnotations
							result.annotations += toAnnotation("source",r.eResource.URI.toPlatformString(true))
							return result;
						}
					}
				} catch (CoreException e) {
					e.printStackTrace();
				}

			}
		}
		return null;
	}

	def EcucParameterValue toEcucParameterValue(Parameter p) {
		val v = p.value
		val sourceURI = p.eResource.URI.toPlatformString(true)
		if (p.definition instanceof EcucAddInfoParamDef) {
			if (v instanceof StringValue) {
				val result = createEcucAddInfoParamValue
				p.associatePrimary(result)
				result => [
					annotations += p.tags.toAnnotations
					annotations += toAnnotation("source",sourceURI)
					if (p.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
						index = Long.valueOf(p.index)
					}
					definition = p.definition
					value = createDocumentationBlock
					value => [
						ps += v.value.toMultiLanguageParagraph
					]
				]
				result
			}
		} else if (v instanceof StringValue || v instanceof EnumValue) {
			val result = createEcucTextualParamValue
			p.associatePrimary(result)
			result => [
				annotations += p.tags.toAnnotations
				annotations += toAnnotation("source",sourceURI)
				if (p.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
					index = Long.valueOf(p.index)
				}
				definition = p.definition
				if (v instanceof StringValue) {
					value = v.value
				} else if (v instanceof EnumValue) {
					value = v.literal
				}
			]
			result
		} else {
			val result = createEcucNumericalParamValue
			p.associatePrimary(result)
			result => [
				annotations += p.tags.toAnnotations
				annotations += toAnnotation("source",sourceURI)
				if (p.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
					index = Long.valueOf(p.index)
				}
				definition = p.definition
				val vh = createNumericalValueVariationPoint
				value = vh
				if (v instanceof BooleanValue) {
					vh.mixedText = if(v.value == BooleanLiteral::TRUE) "1" else "0"
				} else if (v instanceof NumericValue) {
					vh.mixedText = v.value
				}
			]
			result
		}

	}
	
	def toAdminData(EObject o) {
		createAdminData
	}
	
		
	def private toAnnotations(List<Tag> tags) {
		val result = <Annotation>newArrayList
		for (source : tags) {
			result += createAnnotation => [
				it.annotationOrigin = "Ecuc Values Editor"
				label = createMultilanguageLongName => [
					l4s += createLLongName => [
						l = LEnum.EN
						mixedText = source.key
					]
				]
				annotationText = createDocumentationBlock => [
					it.ps += source.value.toMultiLanguageParagraph
				]
			]
		}
		result
	}
	
	def private toAnnotation(String key, String value) {
		val result = createAnnotation => [
				it.annotationOrigin = "Ecuc Values Editor"
				label = createMultilanguageLongName => [
					l4s += createLLongName => [
						l = LEnum.EN
						mixedText = key
					]
				]
				annotationText = createDocumentationBlock => [
					it.ps += value.toMultiLanguageParagraph
				]
			]
		newArrayList(result)	
	}
	
	def toMultiLanguageParagraph(String value) {
		createMultiLanguageParagraph => [
			si = "egal"
			l1s += createLParagraph => [
				l = LEnum.EN
				mixedText = value
			]
		]
	}
	
	def private toSdgs(List<Tag> tags) {
		val result = <Sdg>newArrayList
		for (source : tags) {
			val target = createSdg => [
				gid = source.key
				sdgContentsType = createSdgContents => [
					sds += createSd => [
						gid = "VALUE"
						value = source.value
					]
				]
				
			]
			result.add(target)
		}
		result
	}
	
	def private toSdgs(String theKey, String theValue) {
		val result = <Sdg>newArrayList
		val target = Autosar40Factory.eINSTANCE.createSdg => [
			gid = theKey
			sdgContentsType = Autosar40Factory.eINSTANCE.createSdgContents => [
				sds += Autosar40Factory.eINSTANCE.createSd => [
					gid = "VALUE"
					value = theValue
				]
			]
			
		]
		result.add(target)
		result
	}

}
