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
package org.artop.ecuc.autosar4x.dsl.paramdef;

import org.eclipse.xtext.common.services.DefaultTerminalConverters;
import org.eclipse.xtext.conversion.IValueConverter;
import org.eclipse.xtext.conversion.ValueConverter;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.eclipse.xtext.conversion.impl.STRINGValueConverter;
import org.eclipse.xtext.nodemodel.INode;

/**
 * Custom Value-Converters for ParamDef Dsl
 */
public class ParamDefDslConverters extends DefaultTerminalConverters {
	
	private STRINGValueConverter valueConverter = new STRINGValueConverter() {
		
		@Override
		public String toValue(String string, INode node)
				throws ValueConverterException {
			if (string.startsWith("'") || string.startsWith("\"")) {
				return super.toValue(string, node);
			}
			return string;
		}
	};

	@ValueConverter(rule = "VALUE")
	public IValueConverter<String> VALUE() {
		return valueConverter;
	}
	@ValueConverter(rule = "KEY")
	public IValueConverter<String> KEY() {
		return valueConverter;
	}
}