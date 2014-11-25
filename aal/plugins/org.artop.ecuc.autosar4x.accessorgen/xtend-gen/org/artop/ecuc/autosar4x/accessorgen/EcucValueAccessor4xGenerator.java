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
package org.artop.ecuc.autosar4x.accessorgen;

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.util.Autosar40Factory;
import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import java.util.Arrays;
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil;
import org.artop.ecuc.gautosar.accessorgen.AbstractEcucValueAccessorGenerator;
import org.eclipse.xtend2.lib.StringConcatenation;

@SuppressWarnings("all")
public class EcucValueAccessor4xGenerator extends AbstractEcucValueAccessorGenerator {
  public String writeReleaseSpecificImportStatements() {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("import autosar40.ecucdescription.EcucTextualParamValue");
    _builder.newLine();
    _builder.append("import autosar40.ecucdescription.EcucNumericalParamValue");
    _builder.newLine();
    _builder.append("import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock");
    _builder.newLine();
    _builder.append("import autosar40.util.Autosar40Factory");
    _builder.newLine();
    _builder.newLine();
    _builder.append("import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList");
    _builder.newLine();
    _builder.append("import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList");
    _builder.newLine();
    return _builder.toString();
  }
  
  public String getEnumerationParameterValueTypeName() {
    return EcucTextualParamValue.class.getSimpleName();
  }
  
  public String getEcucAccessorUtilClassName() {
    return EcucValueAccessor4xUtil.class.getSimpleName();
  }
  
  public String getAutosarFactoryClassName() {
    return Autosar40Factory.class.getSimpleName();
  }
  
  public String getParameterValueTypeName(final GConfigParameter parameterDef) {
    String _xifexpression = null;
    boolean _or = false;
    boolean _or_1 = false;
    if ((parameterDef instanceof GIntegerParamDef)) {
      _or_1 = true;
    } else {
      _or_1 = (parameterDef instanceof GFloatParamDef);
    }
    if (_or_1) {
      _or = true;
    } else {
      _or = (parameterDef instanceof GBooleanParamDef);
    }
    if (_or) {
      _xifexpression = EcucNumericalParamValue.class.getSimpleName();
    } else {
      String _xifexpression_1 = null;
      if ((parameterDef instanceof EcucAddInfoParamDef)) {
        _xifexpression_1 = EcucAddInfoParamValue.class.getSimpleName();
      } else {
        _xifexpression_1 = EcucTextualParamValue.class.getSimpleName();
      }
      _xifexpression = _xifexpression_1;
    }
    return _xifexpression;
  }
  
  protected String _getParameterValueValueTypeName(final EcucAddInfoParamDef p, final EcucParamConfContainerDef cont) {
    return DocumentationBlock.class.getSimpleName();
  }
  
  public String getParameterValueValueTypeName(final GConfigParameter p, final GParamConfContainerDef cont) {
    if (p instanceof EcucAddInfoParamDef
         && cont instanceof EcucParamConfContainerDef) {
      return _getParameterValueValueTypeName((EcucAddInfoParamDef)p, (EcucParamConfContainerDef)cont);
    } else if (p instanceof GAbstractStringParamDef
         && cont != null) {
      return _getParameterValueValueTypeName((GAbstractStringParamDef)p, cont);
    } else if (p instanceof GBooleanParamDef
         && cont != null) {
      return _getParameterValueValueTypeName((GBooleanParamDef)p, cont);
    } else if (p instanceof GEnumerationParamDef
         && cont != null) {
      return _getParameterValueValueTypeName((GEnumerationParamDef)p, cont);
    } else if (p instanceof GFloatParamDef
         && cont != null) {
      return _getParameterValueValueTypeName((GFloatParamDef)p, cont);
    } else if (p instanceof GIntegerParamDef
         && cont != null) {
      return _getParameterValueValueTypeName((GIntegerParamDef)p, cont);
    } else if (p != null
         && cont != null) {
      return _getParameterValueValueTypeName(p, cont);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(p, cont).toString());
    }
  }
}
