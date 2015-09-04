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
package org.artop.ecuc.autosar4x.dsl.paramdef.generator

import autosar40.ecucparameterdef.EcucConfigurationVariantEnum
import autosar40.ecucparameterdef.EcucDefinitionElement
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg
import autosar40.util.Autosar40Factory
import autosar40.util.Autosar40ReleaseDescriptor
import java.util.List
import org.artop.aal.serialization.internal.util.AutosarTaggedValues
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag
import org.eclipse.core.runtime.NullProgressMonitor
import org.eclipse.core.runtime.Path
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.sphinx.emf.util.EcorePlatformUtil

import static org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType.*

/**
 * This class does the Convertion from the DSL to ARXML
 */
class ParamDefDslToAutosarTransformer {
	
	def void transform(URI arxmlURI, Resource ... xtextResources) {
		if (!xtextResources.exists[!contents.isEmpty]) {
			println("Xtext Resource List is Empty")
			return
		}
		
		val autosar = xtextResources.toAutosar
		
		EcorePlatformUtil.saveNewModelResource(SphinxHelper.getSphinxEditingDomain(arxmlURI,Autosar40ReleaseDescriptor.INSTANCE),
			new Path(arxmlURI.toPlatformString(true)),
			Autosar40ReleaseDescriptor.ARXML_CONTENT_TYPE_ID,
			autosar, 
			null, 
			false, 
			new NullProgressMonitor
		)
	}
	
	
	def toAutosar(Resource ... xtextResources) {
		Autosar40Factory.eINSTANCE.createAUTOSAR => [
			adminData = Autosar40Factory.eINSTANCE.createAdminData => [
				usedLanguages = Autosar40Factory.eINSTANCE.createMultiLanguagePlainText => [
					l10s += Autosar40Factory.eINSTANCE.createLPlainText => [
						l = LEnum.EN
						mixedText = "English"
						xmlSpace = XmlSpaceEnum.PRESERVE
					]
				]
			]
			for (xtextResource : xtextResources) {
				
				println("Transforming " + xtextResource.URI)
				
				val model = xtextResource.contents.head as Model
				val packageName = if (model.packageName != null) model.packageName else xtextResource.getURI.trimFileExtension.lastSegment
				arPackages += Autosar40Factory.eINSTANCE.createARPackage => [
					shortName = packageName
					for (d : model.modules) {
						elements += d.toEcucModuleDef
					}
					elements += Autosar40Factory.eINSTANCE.createEcucDefinitionCollection => [
						shortName = packageName + "Definitions"
						for (d : model.modules) {
							modules += d.toEcucModuleDef
						}
					]
				]
			}
			val ite = it.eAllContents
			while(ite.hasNext) {
				val o = ite.next();
				if(o instanceof Identifiable) {
					(o as Identifiable).uuid = null;
					(o as Identifiable).unsetUuid;
				}
			}
		]
	}


	def create target : Autosar40Factory.eINSTANCE.createEcucModuleDef toEcucModuleDef(ModuleDef source) {
		target.shortName = source.name
		for (c : source.container) {
			target.containers += c.toEcucContainerDef
		}
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.supportedConfigVariants += EcucConfigurationVariantEnum.VARIANT_PRE_COMPILE
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def dispatch create target : Autosar40Factory.eINSTANCE.createEcucParamConfContainerDef toEcucContainerDef(
		ContainerDef source) {
		target.shortName = source.name
		for (c : source.container) {
			target.subContainers += c.toEcucContainerDef
		}
		for (p : source.parameter) {
			target.parameters += p.toEcucParameter
		}
		for (r : source.references) {
			target.references += r.toEcucReferenceDef
		}
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def toEcucParameter(ParameterDef source) {
		switch (source.type) {
			case ADD_INFO: source.toEcucAddInfoParamDef
			case BOOLEAN: source.toEcucBooleanParamDef
			case ENUM: source.toEcucEnumerationParamDef
			case FLOAT: source.toEcucFloatParamDef
			case FUNCTION_NAME: source.toEcucFunctionNameDef
			case INTEGER: source.toEcucIntegerParamDef
			case LINKER_SYMBOL: source.toEcucEcucLinkerSymbolDef
			case MULTILINE_STRING: source.toEcucMultilineStringParamDef
			case STRING: source.toEcucStringParamDef
			default: throw new IllegalStateException("unknown type: " + source.type)
		}
	}

	def dispatch create target : Autosar40Factory.eINSTANCE.createEcucChoiceContainerDef toEcucContainerDef(
		ChoiceContainerDef source) {
		target.shortName = source.name
		for (c : source.container) {
			target.choices += c.toEcucContainerDef as EcucParamConfContainerDef
		}
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	

	def create target : Autosar40Factory.eINSTANCE.createEcucChoiceContainerDef toEcucChoiceContainerDef(
		InstanceReferenceDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}
	
	def dispatch create target : Autosar40Factory.eINSTANCE.createEcucInstanceReferenceDef toEcucReferenceDef(
		InstanceReferenceDef source) {
		target.shortName = source.name
		target.destinationContext = source.contexts.map['''«it.target.xmlName»«IF it.star != null»*«ENDIF»'''].join(" ")
		target.destinationType = source.dest.target.xmlName
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}
	
	def dispatch toEcucReferenceDef(ReferenceDef source) {
		if (source.types.size == 1) {
			source.toEcucReferenceDefIntern
		} else {
			source.toEcucChoiceReferenceDefIntern
		}
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucReferenceDef toEcucReferenceDefIntern(ReferenceDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.destination = source.types.head.toEcucContainerDef
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}
	
	def create target : Autosar40Factory.eINSTANCE.createEcucChoiceReferenceDef toEcucChoiceReferenceDefIntern(ReferenceDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.destinations += source.types.map[toEcucContainerDef]
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def dispatch create target : Autosar40Factory.eINSTANCE.createEcucForeignReferenceDef toEcucReferenceDef(
		ForeignReferenceDef source) {
		target.shortName = source.name
		target.destinationType = source.dest.target.xmlName
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucAddInfoParamDef toEcucAddInfoParamDef(ParameterDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucBooleanParamDef toEcucBooleanParamDef(ParameterDef source) {
		target.shortName = source.name
		target.defaultValue = Autosar40Factory.eINSTANCE.createBooleanValueVariationPoint => [
			mixedText = source.^default
		]
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucEnumerationParamDef toEcucEnumerationParamDef(
		ParameterDef source) {
		target.shortName = source.name
		for (l : source.literals) {
			target.literals += Autosar40Factory.eINSTANCE.createEcucEnumerationLiteralDef => [
				shortName = l
			]
		}
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucFloatParamDef toEcucFloatParamDef(ParameterDef source) {
		target.shortName = source.name
		target.defaultValue = Autosar40Factory.eINSTANCE.createFloatValueVariationPoint => [
			mixedText = source.^default
		]
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		if (source.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MIN )) {
			target.min = Autosar40Factory.eINSTANCE.createLimitValueVariationPoint => [
				mixedText = source.min
			]
		}
		if (source.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MAX )) {
			target.max = Autosar40Factory.eINSTANCE.createLimitValueVariationPoint => [
				mixedText = source.max
			]
		}
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucIntegerParamDef toEcucIntegerParamDef(ParameterDef source) {
		target.shortName = source.name
		target.defaultValue = Autosar40Factory.eINSTANCE.createUnlimitedIntegerValueVariationPoint => [
			mixedText = source.^default
		]
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		if (source.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MIN )) {
			target.min = Autosar40Factory.eINSTANCE.createUnlimitedIntegerValueVariationPoint => [
				mixedText = source.min
			]
		}
		if (source.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MAX )) {
			target.max = Autosar40Factory.eINSTANCE.createUnlimitedIntegerValueVariationPoint => [
				mixedText = source.max
			]
		}
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucFunctionNameDef toEcucFunctionNameDef(ParameterDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucLinkerSymbolDef toEcucEcucLinkerSymbolDef(
		ParameterDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucMultilineStringParamDef toEcucMultilineStringParamDef(
		ParameterDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}

	def create target : Autosar40Factory.eINSTANCE.createEcucStringParamDef toEcucStringParamDef(ParameterDef source) {
		target.shortName = source.name
		target.setMultiplicities(source.lowerMultiplicity, source.upperMultiplicity)
		target.requiresIndex = source.requiresIndex
		target.desc = source.desc.toMultiLanguageOverviewParagraph
		target.adminData = source.toAdminData => [
			sdgs += source.tags.toSdgs
			sdgs += toSdgs("source", source.eResource.URI.toPlatformString(true))
		]
	}
	
	def toMultiLanguageOverviewParagraph(String s) {
		if (s == null) {
			return null;
		}
		val doku = Autosar40Factory.eINSTANCE.createMultiLanguageOverviewParagraph
		doku.l2s += Autosar40Factory.eINSTANCE.createLOverviewParagraph => [
			mixedText = s
			l = LEnum.EN
		]
		doku
	}

	def setMultiplicities(EcucDefinitionElement element, String lower, String upper) {
		if (lower != null) {
			element.lowerMultiplicity = Autosar40Factory.eINSTANCE.createPositiveIntegerValueVariationPoint => [
				mixedText = lower
			]
		}
		if (upper != null) {
			if (upper == "*") {
				element.upperMultiplicityInfinite = Autosar40Factory.eINSTANCE.createBooleanValueVariationPoint => [
					mixedText = "true"
				]
			} else {
				element.upperMultiplicity = Autosar40Factory.eINSTANCE.createPositiveIntegerValueVariationPoint => [
					mixedText = upper
				]
			}
		}
	}
	
	def create adminData : Autosar40Factory.eINSTANCE.createAdminData toAdminData(EObject o) {
		
	}
	
	def private toSdgs(List<Tag> tags) {
		val result = <Sdg>newArrayList
		for (source : tags) {
			val target = Autosar40Factory.eINSTANCE.createSdg => [
				gid = source.key
				sdgContentsType = Autosar40Factory.eINSTANCE.createSdgContents => [
					sds += Autosar40Factory.eINSTANCE.createSd => [
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

	def private xmlName(EClass cls) {
		AutosarTaggedValues.get(cls).xmlName
	}
	
}