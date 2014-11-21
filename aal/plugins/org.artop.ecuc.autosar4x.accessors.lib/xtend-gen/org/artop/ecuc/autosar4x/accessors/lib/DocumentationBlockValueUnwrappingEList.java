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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.util.Autosar40Factory;
import gautosar.gecucparameterdef.GConfigParameter;
import java.util.List;
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList;

@SuppressWarnings("all")
public class DocumentationBlockValueUnwrappingEList extends AbstractUnwrappingEList<EcucAddInfoParamValue, DocumentationBlock> {
  private GConfigParameter parameterDef;
  
  public DocumentationBlockValueUnwrappingEList(final List<EcucAddInfoParamValue> delegateList, final Class<EcucAddInfoParamValue> wrapperType, final Class<DocumentationBlock> targetType, final GConfigParameter parameterDef) {
    super(delegateList, wrapperType, targetType);
    this.parameterDef = parameterDef;
  }
  
  protected EcucAddInfoParamValue wrap(final DocumentationBlock object) throws CoreException {
    EcucAddInfoParamValue _xblockexpression = null;
    {
      final EcucAddInfoParamValue parameterValue = Autosar40Factory.eINSTANCE.createEcucAddInfoParamValue();
      parameterValue.gSetDefinition(this.parameterDef);
      EcucValueAccessor4xUtil.setParameterValue(parameterValue, object);
      _xblockexpression = parameterValue;
    }
    return _xblockexpression;
  }
  
  protected DocumentationBlock unwrap(final EcucAddInfoParamValue parameterValue) {
    return parameterValue.getValue();
  }
}
