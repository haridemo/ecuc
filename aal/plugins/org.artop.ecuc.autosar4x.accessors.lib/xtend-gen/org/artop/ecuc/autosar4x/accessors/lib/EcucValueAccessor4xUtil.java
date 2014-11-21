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

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.attributevaluevariationpoints.NumericalValueVariationPoint;
import autosar40.util.Autosar40Factory;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import org.artop.aal.autosar40.gautosar40.ecucdescription.GEcucNumericalParamValue40XAdapter;
import org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EList;

@SuppressWarnings("all")
public class EcucValueAccessor4xUtil {
  public static Integer getIntegerValue(final GParameterValue parameterValue) {
    if ((parameterValue instanceof EcucNumericalParamValue)) {
      NumericalValueVariationPoint _value = ((EcucNumericalParamValue)parameterValue).getValue();
      String _mixedText = null;
      if (_value!=null) {
        _mixedText=_value.getMixedText();
      }
      return EcucValueAccessorUtil.toInteger(_mixedText);
    }
    return null;
  }
  
  public static Float getFloatValue(final GParameterValue parameterValue) {
    Float _xifexpression = null;
    if ((parameterValue instanceof EcucNumericalParamValue)) {
      NumericalValueVariationPoint _value = ((EcucNumericalParamValue)parameterValue).getValue();
      String _mixedText = null;
      if (_value!=null) {
        _mixedText=_value.getMixedText();
      }
      _xifexpression = EcucValueAccessorUtil.toFloat(_mixedText);
    }
    return _xifexpression;
  }
  
  public static Boolean getBooleanValue(final GParameterValue parameterValue) {
    Boolean _xifexpression = null;
    if ((parameterValue instanceof EcucNumericalParamValue)) {
      NumericalValueVariationPoint _value = ((EcucNumericalParamValue)parameterValue).getValue();
      String _mixedText = null;
      if (_value!=null) {
        _mixedText=_value.getMixedText();
      }
      _xifexpression = EcucValueAccessorUtil.toBoolean(_mixedText);
    }
    return _xifexpression;
  }
  
  public static String getStringValue(final GParameterValue parameterValue) {
    String _xifexpression = null;
    if ((parameterValue instanceof EcucTextualParamValue)) {
      _xifexpression = ((EcucTextualParamValue)parameterValue).getValue();
    }
    return _xifexpression;
  }
  
  public static DocumentationBlock getDocumentationBlockValue(final GParameterValue parameterValue) {
    DocumentationBlock _xifexpression = null;
    if ((parameterValue instanceof EcucAddInfoParamValue)) {
      _xifexpression = ((EcucAddInfoParamValue)parameterValue).getValue();
    }
    return _xifexpression;
  }
  
  public static Object getObjectValue(final GParameterValue parameterValue) {
    return parameterValue;
  }
  
  public static void setParameterValue(final GParameterValue parameterValue, final Object parameterValueValue) {
    if ((parameterValue instanceof EcucNumericalParamValue)) {
      GEcucNumericalParamValue40XAdapter _gEcucNumericalParamValue40XAdapter = new GEcucNumericalParamValue40XAdapter(((EcucNumericalParamValue)parameterValue));
      String _string = null;
      if (parameterValueValue!=null) {
        _string=parameterValueValue.toString();
      }
      _gEcucNumericalParamValue40XAdapter.setValue(_string);
    } else {
      if ((parameterValue instanceof EcucTextualParamValue)) {
        String _string_1 = null;
        if (parameterValueValue!=null) {
          _string_1=parameterValueValue.toString();
        }
        ((EcucTextualParamValue)parameterValue).setValue(_string_1);
      } else {
        if ((parameterValue instanceof EcucAddInfoParamValue)) {
          if ((parameterValueValue instanceof DocumentationBlock)) {
            ((EcucAddInfoParamValue)parameterValue).setValue(((DocumentationBlock)parameterValueValue));
          }
        }
      }
    }
  }
  
  public static GParameterValue createParameterValue(final GConfigParameter parameterDefinition) {
    GParameterValue _xblockexpression = null;
    {
      Assert.isNotNull(parameterDefinition);
      GParameterValue parameterValue = null;
      EcucParameterValue _xifexpression = null;
      boolean _or = false;
      if (((parameterDefinition instanceof EcucBooleanParamDef) || (parameterDefinition instanceof EcucFloatParamDef))) {
        _or = true;
      } else {
        _or = (parameterDefinition instanceof EcucIntegerParamDef);
      }
      if (_or) {
        _xifexpression = Autosar40Factory.eINSTANCE.createEcucNumericalParamValue();
      } else {
        EcucParameterValue _xifexpression_1 = null;
        if ((parameterDefinition instanceof EcucAddInfoParamDef)) {
          _xifexpression_1 = Autosar40Factory.eINSTANCE.createEcucAddInfoParamValue();
        } else {
          _xifexpression_1 = Autosar40Factory.eINSTANCE.createEcucTextualParamValue();
        }
        _xifexpression = _xifexpression_1;
      }
      parameterValue = _xifexpression;
      parameterValue.gSetDefinition(parameterDefinition);
      _xblockexpression = parameterValue;
    }
    return _xblockexpression;
  }
  
  public static <T extends Object> void setReference(final GContainer container, final GConfigReference referenceDef, final GContainer referenceValueValue) {
    Assert.isNotNull(container);
    final EcucReferenceValue referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue();
    referenceValue.gSetDefinition(referenceDef);
    referenceValue.gSetValue(referenceValueValue);
    EList<GConfigReferenceValue> _gGetReferenceValues = container.gGetReferenceValues();
    _gGetReferenceValues.add(referenceValue);
  }
}
