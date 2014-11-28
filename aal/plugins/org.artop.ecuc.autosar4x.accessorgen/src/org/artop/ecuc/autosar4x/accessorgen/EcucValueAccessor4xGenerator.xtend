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
package org.artop.ecuc.autosar4x.accessorgen

import autosar40.ecucdescription.EcucAddInfoParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory
import gautosar.gecucparameterdef.GBooleanParamDef
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GFloatParamDef
import gautosar.gecucparameterdef.GIntegerParamDef
import org.artop.ecuc.gautosar.accessorgen.AbstractEcucValueAccessorGenerator
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import gautosar.gecucparameterdef.GConfigReference
import autosar40.ecucdescription.EcucReferenceValue

public class EcucValueAccessor4xGenerator extends AbstractEcucValueAccessorGenerator {
	
	def override String writeReleaseSpecificImportStatements()'''
	import autosar40.ecucdescription.EcucTextualParamValue
	import autosar40.ecucdescription.EcucNumericalParamValue
	import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
	import autosar40.util.Autosar40Factory
	
	import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
	import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
	import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList
	'''
	
	def override String getEnumerationParameterValueTypeName(){
		EcucTextualParamValue.simpleName
	}
	
	def override String getEcucAccessorUtilClassName(){
		EcucValueAccessor4xUtil.simpleName
	}
	
	def override String getAutosarFactoryClassName() {
		Autosar40Factory.simpleName
	}
	
	def override String getParameterValueTypeName(GConfigParameter parameterDef){
		if (parameterDef instanceof GIntegerParamDef || parameterDef instanceof GFloatParamDef || parameterDef instanceof GBooleanParamDef) {
			EcucNumericalParamValue.simpleName
		} else if (parameterDef instanceof EcucAddInfoParamDef) {
			EcucAddInfoParamValue.simpleName
		} else {
			EcucTextualParamValue.simpleName
		}
	}
	
	def override String getReferenceValueTypeName(){
		EcucReferenceValue.simpleName
	}
	
	def dispatch String getParameterValueValueTypeName(EcucAddInfoParamDef p, EcucParamConfContainerDef cont){
		DocumentationBlock.simpleName
	}
}

