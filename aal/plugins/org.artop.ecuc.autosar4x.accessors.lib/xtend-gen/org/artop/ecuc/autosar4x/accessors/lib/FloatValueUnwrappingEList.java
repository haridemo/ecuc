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
package org.artop.ecuc.autosar4x.accessors.lib;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.genericstructure.varianthandling.attributevaluevariationpoints.NumericalValueVariationPoint;
import autosar40.util.Autosar40Factory;
import gautosar.gecucparameterdef.GConfigParameter;
import java.util.List;
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil;
import org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList;

@SuppressWarnings("all")
public class FloatValueUnwrappingEList extends AbstractUnwrappingEList<EcucNumericalParamValue, Float> {
  private GConfigParameter parameterDef;
  
  public FloatValueUnwrappingEList(final List<EcucNumericalParamValue> delegateList, final Class<EcucNumericalParamValue> wrapperType, final Class<Float> targetType, final GConfigParameter parameterDef) {
    super(delegateList, wrapperType, targetType);
    this.parameterDef = parameterDef;
  }
  
  protected EcucNumericalParamValue wrap(final Float object) throws CoreException {
    EcucNumericalParamValue _xblockexpression = null;
    {
      final EcucNumericalParamValue parameterValue = Autosar40Factory.eINSTANCE.createEcucNumericalParamValue();
      parameterValue.gSetDefinition(this.parameterDef);
      EcucValueAccessor4xUtil.setParameterValue(parameterValue, object);
      _xblockexpression = parameterValue;
    }
    return _xblockexpression;
  }
  
  protected Float unwrap(final EcucNumericalParamValue parameterValue) {
    NumericalValueVariationPoint _value = parameterValue.getValue();
    String _mixedText = null;
    if (_value!=null) {
      _mixedText=_value.getMixedText();
    }
    return EcucValueAccessorUtil.toFloat(_mixedText);
  }
}
