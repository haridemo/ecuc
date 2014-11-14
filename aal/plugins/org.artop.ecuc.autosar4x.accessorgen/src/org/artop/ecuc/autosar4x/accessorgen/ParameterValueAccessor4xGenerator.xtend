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

import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import org.artop.ecuc.gautosar.accessorgen.AbstractParameterValueAccessorGenerator
import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GIntegerParamDef
import gautosar.gecucparameterdef.GFloatParamDef
import gautosar.gecucparameterdef.GBooleanParamDef
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.ecucdescription.EcucAddInfoParamValue
import autosar40.util.Autosar40Factory

public class ParameterValueAccessor4xGenerator extends AbstractParameterValueAccessorGenerator {
	
	def override String writeReleaseSpecificImportStatements()'''
	import autosar40.ecucdescription.EcucTextualParamValue
	import autosar40.ecucdescription.EcucNumericalParamValue
	import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
	import autosar40.util.Autosar40Factory
	
	import static extension org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil.*
	import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
	import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
	import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList
	'''
	
	def override String getEnumerationParameterValueTypeName(){
		EcucTextualParamValue.simpleName
	}
	
	def override String getParamValueAccessorUtilClassName(){
		ParameterValueAccessor4xUtil.simpleName
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
	
	def dispatch String getParameterValueValueTypeName(EcucAddInfoParamDef p, EcucParamConfContainerDef cont){
		DocumentationBlock.simpleName
	}
	
}

