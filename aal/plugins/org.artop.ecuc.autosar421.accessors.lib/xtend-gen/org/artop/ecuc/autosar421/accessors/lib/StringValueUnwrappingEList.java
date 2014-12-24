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
package org.artop.ecuc.autosar421.accessors.lib;

import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.util.Autosar40Factory;
import gautosar.gecucparameterdef.GConfigParameter;
import java.util.List;
import org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList;

@SuppressWarnings("all")
public class StringValueUnwrappingEList extends AbstractUnwrappingEList<EcucTextualParamValue, String> {
  private GConfigParameter parameterDef;
  
  public StringValueUnwrappingEList(final List<EcucTextualParamValue> delegateList, final Class<EcucTextualParamValue> wrapperType, final Class<String> targetType, final GConfigParameter parameterDef) {
    super(delegateList, wrapperType, targetType);
    this.parameterDef = parameterDef;
  }
  
  protected EcucTextualParamValue wrap(final String object) throws CoreException {
    EcucTextualParamValue _xblockexpression = null;
    {
      final EcucTextualParamValue parameterValue = Autosar40Factory.eINSTANCE.createEcucTextualParamValue();
      parameterValue.gSetDefinition(this.parameterDef);
      EcucValueAccessor421Util.setParameterValue(parameterValue, object);
      _xblockexpression = parameterValue;
    }
    return _xblockexpression;
  }
  
  protected String unwrap(final EcucTextualParamValue parameterValue) {
    return parameterValue.getValue();
  }
}
