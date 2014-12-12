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
package org.artop.ecuc.gautosar.accessorgen

import gautosar.gecucparameterdef.GAbstractStringParamDef
import gautosar.gecucparameterdef.GBooleanParamDef
import gautosar.gecucparameterdef.GChoiceContainerDef
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GConfigReference
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GEnumerationParamDef
import gautosar.gecucparameterdef.GFloatParamDef
import gautosar.gecucparameterdef.GIntegerParamDef
import gautosar.gecucparameterdef.GModuleDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.gecucparameterdef.GReferenceDef
import gautosar.ggenericstructure.ginfrastructure.GARPackage
import java.io.ByteArrayInputStream
import java.util.Set
import org.eclipse.core.resources.IFolder
import org.eclipse.core.resources.IProject
import org.eclipse.core.runtime.IProgressMonitor
import org.eclipse.core.runtime.NullProgressMonitor

import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.getPluralOf
import org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil

public abstract class AbstractEcucValueAccessorGenerator {
	
	protected static final Set<String> RESERVED = #{"if", "while", "for", "else", "class", "interface", "enum"}
	protected static final Set<String> KNOWN_PARAMETER_VALUE_VALUE_TYPE_NAMES = #{"Integer", "String", "Float", "String", "Object", "DocumentationBlock"}
	
	private String javaPackageName;
	
	def abstract String getEnumerationParameterValueTypeName()
	
	def abstract String getEcucAccessorUtilClassName()
	
	def abstract String getParameterValueTypeName(GConfigParameter p)
	
	def abstract String getReferenceValueTypeName()
	
	def abstract String getAutosarFactoryClassName()
	
	def String writeImportStatements()'''
	import java.util.List
	
	«writeReleaseSpecificImportStatements»
	
	import org.eclipse.sphinx.emf.util.AbstractFilteringEList
	import org.eclipse.sphinx.emf.util.BasicWrappingEList
	import org.eclipse.sphinx.emf.util.IWrapper
	
	import gautosar.gecucdescription.GContainer
	import gautosar.gecucdescription.GModuleConfiguration
	import gautosar.gecucdescription.GParameterValue
	import gautosar.gecucdescription.GecucdescriptionPackage
	import gautosar.gecucparameterdef.GConfigParameter
	import gautosar.gecucparameterdef.GConfigReference
	import gautosar.gecucdescription.GReferenceValue
	import gautosar.gecucparameterdef.GContainerDef
	import gautosar.gecucparameterdef.GParamConfContainerDef
	import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
	import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
	import org.eclipse.emf.ecore.EObject
	import org.eclipse.emf.ecore.EStructuralFeature
	import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
	import org.eclipse.core.runtime.CoreException
	'''
	
	def String writeReleaseSpecificImportStatements()''''''
	
	def void writeAccessorClasses(GARPackage arPackage, String srcFolderName, String javaPackageName, IProject project){
		this.javaPackageName = javaPackageName;
		
		for (mod : arPackage.gGetElements.filter[it instanceof GModuleDef]){
			writeFile((mod as GModuleDef).createModuleClass(javaPackageName), mod.gGetShortName + ".xtend", srcFolderName, project)
		}
	}
	
	def createModuleClass(GModuleDef module, String javaPackageName)'''
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
	package «javaPackageName»
	
	«writeImportStatements»
	
	class «module.moduleTypeName» implements IWrapper<GModuleConfiguration> {
		protected GModuleConfiguration moduleConfiguration
		
		new (GModuleConfiguration moduleConfiguration){
			this.moduleConfiguration = moduleConfiguration
		}
		
		def String getShortName(){
			moduleConfiguration?.gGetShortName
		}
		
		def void setShortName(String name){
			moduleConfiguration?.gSetShortName(name)
		}
		
		override def GModuleConfiguration getTarget(){
			moduleConfiguration
		}
		
		«FOR cont : module.gGetContainers»
		«IF EcucValueAccessorUtil.isMany(cont)»
		def List<«cont.containerTypeName»> get«cont.containerTypeName.toFirstUpper.pluralOf»(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "«cont.containerTypeName»")
				}
			}
			return new BasicWrappingEList<«cont.containerTypeName», GContainer>(filteredContainers, typeof(«cont.containerTypeName»), typeof(GContainer))
		}
		«ELSE»
		def «cont.containerTypeName» get«cont.containerTypeName.toFirstUpper»(){
			moduleConfiguration.getByType(typeof(«cont.containerTypeName»))
		}
		
		def void set«cont.containerTypeName.toFirstUpper»(«cont.containerTypeName.toFirstUpper» «cont.containerTypeName.toFirstLower»){
			val GContainer container = «cont.containerTypeName.toFirstLower».getTarget() 
		    moduleConfiguration.setContainer(container, "«cont.containerTypeName.toFirstUpper»")
		}
		«ENDIF»
		«ENDFOR»
		
		«FOR cont : module.gGetContainers»
		«cont.createContainerClass»
		«ENDFOR»
		
		private static def boolean accept(EObject child, Class<? extends GIdentifiable> ecucTypeDefType, String ecucTypeDefName) {
			val EStructuralFeature definitionFeature = child.eClass().getEStructuralFeature("definition") //$NON-NLS-1$
			if (definitionFeature != null) {
				val definition = child.eGet(definitionFeature)
				if (ecucTypeDefType.isInstance(definition)) {
					return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
				}
			}
			return false
		}
	}
	'''
	
	def createContainerClass(GContainerDef cont)'''
	static class «cont.gGetShortName» implements IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		«cont.containerContents»
	}
	'''
	
	def dispatch getContainerContents(GChoiceContainerDef cont)'''
	«FOR sc : cont.gGetChoices»
	def «sc.gGetShortName» get«sc.gGetShortName.toFirstUpper»(){
		containerValue.getByType(typeof(«sc.gGetShortName»))
	}
	
	def void set«sc.gGetShortName.toFirstUpper»(GContainer subContainer){
		containerValue.setContainer(subContainer, "«sc.gGetShortName.toFirstUpper»")
	}
	«ENDFOR»
	
	«FOR sc : cont.gGetChoices»
	«sc.createContainerClass»
	
	«ENDFOR»
	'''
	
	def dispatch getContainerContents(GParamConfContainerDef cont)'''
	«FOR p : cont.gGetParameters»
	«IF (EcucValueAccessorUtil.isMany(p))»
	«val valueTypeName = p.getParameterValueValueTypeName(cont)»
	«val parameterValueTypeName = p.parameterValueTypeName»
	def List<«valueTypeName»> get«p.gGetShortName.toFirstUpper.pluralOf»(){
		val List<«parameterValueTypeName»> filteredParameterValues = new AbstractFilteringEList<«parameterValueTypeName»>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
			override protected accept(«parameterValueTypeName» item) {
				return accept(item, typeof(GConfigParameter), "«p.gGetShortName»")
			}
		}
		val containerDef = containerValue.gGetDefinition
		if (containerDef instanceof GParamConfContainerDef) {
			val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "«p.gGetShortName»"]
			«IF !(p instanceof GEnumerationParamDef)»
			return new «valueTypeName»ValueUnwrappingEList(filteredParameterValues, typeof(«parameterValueTypeName»), typeof(«valueTypeName»), parameterDef)
			«ELSE»
			return new AbstractUnwrappingEList<«parameterValueTypeName», «valueTypeName»>(filteredParameterValues, typeof(«parameterValueTypeName»), typeof(«valueTypeName?.toFirstUpper»)) {
				override protected wrap(«valueTypeName?.toFirstUpper» object) throws CoreException {
					val parameterValue = «autosarFactoryClassName».eINSTANCE.create«parameterValueTypeName»
					parameterValue.gSetDefinition(parameterDef)
					«ecucAccessorUtilClassName».setParameterValue(parameterValue, object)
					parameterValue
				}
				
				override protected unwrap(«parameterValueTypeName» parameterValue) {
					get«valueTypeName?.toFirstUpper»Value(parameterValue)
				}
			}
			«ENDIF»
		}
	}
	«ELSE»
	def «p.getParameterValueValueTypeName(cont)» get«p.gGetShortName.toFirstUpper»(){
	«val parameterTypeName = p.getParameterValueValueTypeName(cont)»
		«IF org.artop.ecuc.gautosar.accessorgen.AbstractEcucValueAccessorGenerator.KNOWN_PARAMETER_VALUE_VALUE_TYPE_NAMES.contains(parameterTypeName)»
		«ecucAccessorUtilClassName».get«parameterTypeName?.toFirstUpper»Value(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "«p.gGetShortName»"])
		«ELSE»
		get«parameterTypeName?.toFirstUpper»Value(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "«p.gGetShortName»"])
		«ENDIF»
	}
	
	def void set«p.gGetShortName.toFirstUpper»(«p.getParameterValueValueTypeName(cont)» value){
		var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "«p.gGetShortName»"]
		if (parameterValue == null) {
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				parameterValue = «ecucAccessorUtilClassName».createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "«p.gGetShortName»"])
				containerValue.gGetParameterValues += parameterValue
			}
		}
		«ecucAccessorUtilClassName».setParameterValue(parameterValue, value)
	}
	«ENDIF»
	«p.generateEnumType(cont)»
	
	«ENDFOR»
	
	«FOR referenceDef : cont.gGetReferences»
	«referenceDef.referenceContents»
	
	«ENDFOR»
	
	«FOR sc : cont.gGetSubContainers»
	«IF EcucValueAccessorUtil.isMany(sc)»
	def List<«sc.containerTypeName»> get«sc.containerTypeName.toFirstUpper.pluralOf»(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "«sc.containerTypeName»")
			}
		}
		return new BasicWrappingEList<«sc.containerTypeName», GContainer>(filteredContainers, typeof(«sc.containerTypeName»), typeof(GContainer))
	}
	«ELSE»
	def «sc.containerTypeName» get«sc.containerTypeName.toFirstUpper»(){
		containerValue.getByType(typeof(«sc.gGetShortName»))
	}
	
	def void set«sc.containerTypeName.toFirstUpper»(GContainer subContainer){
		containerValue.setContainer(subContainer, "«sc.gGetShortName.toFirstUpper»")
	}
	«ENDIF»
	
	«ENDFOR»
	
	«FOR sc : cont.gGetSubContainers»
	«sc.createContainerClass»
	
	«ENDFOR»
	'''
	
	def dispatch getReferenceContents(GReferenceDef referenceDef)'''
	«IF referenceDef.gGetRefDestination != null»
	«val refDestinationClassName = EcucValueAccessorUtil.getAccessorClassQualifiedName(this.javaPackageName, referenceDef.gGetRefDestination, ".")»
	«IF EcucValueAccessorUtil.isMany(referenceDef)»
	def List<«refDestinationClassName»> get«referenceDef.gGetShortName.toFirstUpper.pluralOf»(){
		val containerDef = containerValue.gGetDefinition
		val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
			containerDef.gGetReferences.findFirst[gGetShortName == "«referenceDef.gGetShortName»"] else null
						
		val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
			override protected accept(GReferenceValue item) {
				return accept(item, typeof(GConfigReference), "«referenceDef.gGetShortName»")
			}
		}
		
		return new AbstractUnwrappingEList<GReferenceValue, «refDestinationClassName»>(filteredReferenceValues, typeof(GReferenceValue), typeof(«refDestinationClassName»)) {
			override protected wrap(«refDestinationClassName» object) throws CoreException {
				if (object != null) {
					val container = object.getTarget()
					val referenceValue = «autosarFactoryClassName».eINSTANCE.create«referenceValueTypeName»
					referenceValue.gSetDefinition(referenceValueDef)
					referenceValue.gSetValue(container)
					return referenceValue
				}
			}
			
			override protected unwrap(GReferenceValue referenceValue) {
				if (referenceValue != null) {
					val referenceValueValue = referenceValue.gGetValue
					if (referenceValueValue instanceof GContainer) {
						return new «refDestinationClassName»(referenceValueValue as GContainer)
					}
				}
			}
		}
	}
	«ELSE»
	def «refDestinationClassName» get«referenceDef.gGetShortName»(){
		containerValue.getReference(typeof(«refDestinationClassName»), "«referenceDef.gGetShortName»")
	}
			
	def void set«referenceDef.gGetShortName»(«refDestinationClassName» object){
		val containerDef = containerValue.gGetDefinition
		if (containerDef instanceof GParamConfContainerDef) {
			containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "«referenceDef.gGetShortName»"], object.getTarget())
		}
	}
	«ENDIF»
	«ENDIF»
	'''
	
	def dispatch getReferenceContents(GConfigReference referenceDef)''''''
	
	def String getLiteralName(String lit){
		if (RESERVED.contains(lit.toLowerCase))
			"^" + lit
		else
			lit
	}
	
	def void createFolder(IFolder f, IProgressMonitor monitor){
		if (f.parent instanceof IFolder){
			(f.parent as IFolder).createFolder(monitor)
		}
		if (!f.exists)
			f.create(true, true, monitor)
	}
	
	def writeFile(CharSequence content, String fileName, String folderName, IProject project){
		val monitor = new NullProgressMonitor
		val f = project.getFolder(folderName)
		f.createFolder(monitor)
		val targetFile = f.getFile(fileName)
		if (targetFile.exists)
			targetFile.delete(true, monitor)
		targetFile.create(new ByteArrayInputStream(content.toString.bytes), true, monitor)
	}
	
	def String getContainerTypeName(GContainerDef cont){
		cont.gGetShortName
	}
	
	def String getModuleTypeName(GModuleDef module){
		module.gGetShortName
	}
	
	def dispatch generateEnumType(GEnumerationParamDef p, GParamConfContainerDef cont)'''
	
	enum «p.getParameterValueValueTypeName(cont)» {
		«FOR l : p.gGetLiterals SEPARATOR ", "»
		«l.gGetShortName.literalName»
		«ENDFOR»
	}
		
	def «p.getParameterValueValueTypeName(cont)» get«p.getParameterValueValueTypeName(cont)»Value(GParameterValue paramValue){
		val castedParamValue = paramValue as «enumerationParameterValueTypeName»
		switch (castedParamValue.value){
			«FOR l : p.gGetLiterals»
			case "«l.gGetShortName»" : «p.getParameterValueValueTypeName(cont)».«l.gGetShortName.literalName»
			«ENDFOR»
		}
	}
	
	def void set«p.getParameterValueValueTypeName(cont)»Value(GParameterValue paramValue, «p.getParameterValueValueTypeName(cont)» value){
		«ecucAccessorUtilClassName».setParameterValue(paramValue, value)
	}
	'''
	
	def dispatch generateEnumType(GConfigParameter p, GParamConfContainerDef cont) ''''''
	
	def dispatch String getParameterValueValueTypeName(GEnumerationParamDef p, GParamConfContainerDef cont){
		// Avoid name clash with enclosing DcmDspRoeEventWindowTime container definition
		if (p.gGetShortName.equals("DcmDspRoeEventWindowTime")) {
			return "DcmDspRoeEventWindowTimeEnum"
		}
		p.gGetShortName
	}
	
	def dispatch String getParameterValueValueTypeName(GIntegerParamDef p, GParamConfContainerDef cont){
		"Integer"
	}
	
	def dispatch String getParameterValueValueTypeName(GFloatParamDef p, GParamConfContainerDef cont){
		"Float"
	}
	
	def dispatch String getParameterValueValueTypeName(GAbstractStringParamDef p, GParamConfContainerDef cont){
		"String"
	}
	
	def dispatch String getParameterValueValueTypeName(GBooleanParamDef p, GParamConfContainerDef cont){
		"Boolean"
	}
	
	def dispatch String getParameterValueValueTypeName(GConfigParameter p, GParamConfContainerDef cont){
		"Object"
	}
}

