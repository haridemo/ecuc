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
package org.artop.ecuc.autosar421.accessorgen

import org.artop.ecuc.autosar4x.accessorgen.AbstractEcucValueAccessor4xGenerator
import org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util

public class EcucValueAccessor421Generator extends AbstractEcucValueAccessor4xGenerator {
	
	def override String writeReleaseSpecificImportStatements()'''
	«super.writeReleaseSpecificImportStatements»
	
	import static extension org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor4xUtil.*
	import org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor4xUtil
	import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
	import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
	import org.artop.ecuc.autosar421.accessors.lib.BooleanValueUnwrappingEList
	import org.artop.ecuc.autosar421.accessors.lib.StringValueUnwrappingEList
	import org.artop.ecuc.autosar421.accessors.lib.DocumentationBlockValueUnwrappingEList
	'''
		
	def override String getEcucAccessorUtilClassName(){
		EcucValueAccessor421Util.simpleName
	}
}

