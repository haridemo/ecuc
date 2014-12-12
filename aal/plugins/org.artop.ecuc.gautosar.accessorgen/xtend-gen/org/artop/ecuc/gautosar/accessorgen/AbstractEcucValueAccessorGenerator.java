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
package org.artop.ecuc.gautosar.accessorgen;

import com.google.common.base.Objects;
import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.emf.common.util.EList;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.StringExtensions;

@SuppressWarnings("all")
public abstract class AbstractEcucValueAccessorGenerator {
  protected final static Set<String> RESERVED = Collections.<String>unmodifiableSet(CollectionLiterals.<String>newHashSet("if", "while", "for", "else", "class", "interface", "enum"));
  
  protected final static Set<String> KNOWN_PARAMETER_VALUE_VALUE_TYPE_NAMES = Collections.<String>unmodifiableSet(CollectionLiterals.<String>newHashSet("Integer", "String", "Float", "String", "Object", "DocumentationBlock"));
  
  private String javaPackageName;
  
  public abstract String getEnumerationParameterValueTypeName();
  
  public abstract String getEcucAccessorUtilClassName();
  
  public abstract String getParameterValueTypeName(final GConfigParameter p);
  
  public abstract String getReferenceValueTypeName();
  
  public abstract String getAutosarFactoryClassName();
  
  public String writeImportStatements() {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("import java.util.List");
    _builder.newLine();
    _builder.newLine();
    String _writeReleaseSpecificImportStatements = this.writeReleaseSpecificImportStatements();
    _builder.append(_writeReleaseSpecificImportStatements, "");
    _builder.newLineIfNotEmpty();
    _builder.newLine();
    _builder.append("import org.eclipse.sphinx.emf.util.AbstractFilteringEList");
    _builder.newLine();
    _builder.append("import org.eclipse.sphinx.emf.util.BasicWrappingEList");
    _builder.newLine();
    _builder.append("import org.eclipse.sphinx.emf.util.IWrapper");
    _builder.newLine();
    _builder.newLine();
    _builder.append("import gautosar.gecucdescription.GContainer");
    _builder.newLine();
    _builder.append("import gautosar.gecucdescription.GModuleConfiguration");
    _builder.newLine();
    _builder.append("import gautosar.gecucdescription.GParameterValue");
    _builder.newLine();
    _builder.append("import gautosar.gecucdescription.GecucdescriptionPackage");
    _builder.newLine();
    _builder.append("import gautosar.gecucparameterdef.GConfigParameter");
    _builder.newLine();
    _builder.append("import gautosar.gecucparameterdef.GConfigReference");
    _builder.newLine();
    _builder.append("import gautosar.gecucdescription.GReferenceValue");
    _builder.newLine();
    _builder.append("import gautosar.gecucparameterdef.GContainerDef");
    _builder.newLine();
    _builder.append("import gautosar.gecucparameterdef.GParamConfContainerDef");
    _builder.newLine();
    _builder.append("import gautosar.ggenericstructure.ginfrastructure.GIdentifiable");
    _builder.newLine();
    _builder.append("import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*");
    _builder.newLine();
    _builder.append("import org.eclipse.emf.ecore.EObject");
    _builder.newLine();
    _builder.append("import org.eclipse.emf.ecore.EStructuralFeature");
    _builder.newLine();
    _builder.append("import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList");
    _builder.newLine();
    _builder.append("import org.eclipse.core.runtime.CoreException");
    _builder.newLine();
    return _builder.toString();
  }
  
  public String writeReleaseSpecificImportStatements() {
    StringConcatenation _builder = new StringConcatenation();
    return _builder.toString();
  }
  
  public void writeAccessorClasses(final GARPackage arPackage, final String srcFolderName, final String javaPackageName, final IProject project) {
    this.javaPackageName = javaPackageName;
    EList<GPackageableElement> _gGetElements = arPackage.gGetElements();
    final Function1<GPackageableElement, Boolean> _function = new Function1<GPackageableElement, Boolean>() {
      public Boolean apply(final GPackageableElement it) {
        return Boolean.valueOf((it instanceof GModuleDef));
      }
    };
    Iterable<GPackageableElement> _filter = IterableExtensions.<GPackageableElement>filter(_gGetElements, _function);
    for (final GPackageableElement mod : _filter) {
      CharSequence _createModuleClass = this.createModuleClass(((GModuleDef) mod), javaPackageName);
      String _gGetShortName = mod.gGetShortName();
      String _plus = (_gGetShortName + ".xtend");
      this.writeFile(_createModuleClass, _plus, srcFolderName, project);
    }
  }
  
  public CharSequence createModuleClass(final GModuleDef module, final String javaPackageName) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("/**");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* <copyright>");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* ");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* Copyright (c) itemis and others.");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* All rights reserved. This program and the accompanying materials are made");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* available under the terms of the Artop Software License Based on AUTOSAR");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* Released Material (ASLR) which accompanies this distribution, and is");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* available at http://www.artop.org/aslr.html");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* ");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* Contributors: ");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("*     itemis - Initial API and implementation");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* ");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("* </copyright>");
    _builder.newLine();
    _builder.append(" ");
    _builder.append("*/");
    _builder.newLine();
    _builder.append("package ");
    _builder.append(javaPackageName, "");
    _builder.newLineIfNotEmpty();
    _builder.newLine();
    String _writeImportStatements = this.writeImportStatements();
    _builder.append(_writeImportStatements, "");
    _builder.newLineIfNotEmpty();
    _builder.newLine();
    _builder.append("class ");
    String _moduleTypeName = this.getModuleTypeName(module);
    _builder.append(_moduleTypeName, "");
    _builder.append(" implements IWrapper<GModuleConfiguration> {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("protected GModuleConfiguration moduleConfiguration");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("new (GModuleConfiguration moduleConfiguration){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("this.moduleConfiguration = moduleConfiguration");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("def String getShortName(){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("moduleConfiguration?.gGetShortName");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("def void setShortName(String name){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("moduleConfiguration?.gSetShortName(name)");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("override def GModuleConfiguration getTarget(){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("moduleConfiguration");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    {
      EList<GContainerDef> _gGetContainers = module.gGetContainers();
      for(final GContainerDef cont : _gGetContainers) {
        {
          boolean _isMany = EcucValueAccessorUtil.isMany(cont);
          if (_isMany) {
            _builder.append("\t");
            _builder.append("def List<");
            String _containerTypeName = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName, "\t");
            _builder.append("> get");
            String _containerTypeName_1 = this.getContainerTypeName(cont);
            String _firstUpper = StringExtensions.toFirstUpper(_containerTypeName_1);
            String _pluralOf = EcucValueAccessorUtil.getPluralOf(_firstUpper);
            _builder.append(_pluralOf, "\t");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("\t");
            _builder.append("val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("\t\t");
            _builder.append("override protected accept(GContainer item) {");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("\t\t\t");
            _builder.append("return accept(item, typeof(GContainerDef), \"");
            String _containerTypeName_2 = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName_2, "\t\t\t\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("\t");
            _builder.append("return new BasicWrappingEList<");
            String _containerTypeName_3 = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName_3, "\t\t");
            _builder.append(", GContainer>(filteredContainers, typeof(");
            String _containerTypeName_4 = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName_4, "\t\t");
            _builder.append("), typeof(GContainer))");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
          } else {
            _builder.append("\t");
            _builder.append("def ");
            String _containerTypeName_5 = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName_5, "\t");
            _builder.append(" get");
            String _containerTypeName_6 = this.getContainerTypeName(cont);
            String _firstUpper_1 = StringExtensions.toFirstUpper(_containerTypeName_6);
            _builder.append(_firstUpper_1, "\t");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("\t");
            _builder.append("moduleConfiguration.getByType(typeof(");
            String _containerTypeName_7 = this.getContainerTypeName(cont);
            _builder.append(_containerTypeName_7, "\t\t");
            _builder.append("))");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("def void set");
            String _containerTypeName_8 = this.getContainerTypeName(cont);
            String _firstUpper_2 = StringExtensions.toFirstUpper(_containerTypeName_8);
            _builder.append(_firstUpper_2, "\t");
            _builder.append("(");
            String _containerTypeName_9 = this.getContainerTypeName(cont);
            String _firstUpper_3 = StringExtensions.toFirstUpper(_containerTypeName_9);
            _builder.append(_firstUpper_3, "\t");
            _builder.append(" ");
            String _containerTypeName_10 = this.getContainerTypeName(cont);
            String _firstLower = StringExtensions.toFirstLower(_containerTypeName_10);
            _builder.append(_firstLower, "\t");
            _builder.append("){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("\t");
            _builder.append("val GContainer container = ");
            String _containerTypeName_11 = this.getContainerTypeName(cont);
            String _firstLower_1 = StringExtensions.toFirstLower(_containerTypeName_11);
            _builder.append(_firstLower_1, "\t\t");
            _builder.append(".getTarget() ");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("    ");
            _builder.append("moduleConfiguration.setContainer(container, \"");
            String _containerTypeName_12 = this.getContainerTypeName(cont);
            String _firstUpper_4 = StringExtensions.toFirstUpper(_containerTypeName_12);
            _builder.append(_firstUpper_4, "\t    ");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
          }
        }
      }
    }
    _builder.append("\t");
    _builder.newLine();
    {
      EList<GContainerDef> _gGetContainers_1 = module.gGetContainers();
      for(final GContainerDef cont_1 : _gGetContainers_1) {
        _builder.append("\t");
        CharSequence _createContainerClass = this.createContainerClass(cont_1);
        _builder.append(_createContainerClass, "\t");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("private static def boolean accept(EObject child, Class<? extends GIdentifiable> ecucTypeDefType, String ecucTypeDefName) {");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("val EStructuralFeature definitionFeature = child.eClass().getEStructuralFeature(\"definition\") //$NON-NLS-1$");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("if (definitionFeature != null) {");
    _builder.newLine();
    _builder.append("\t\t\t");
    _builder.append("val definition = child.eGet(definitionFeature)");
    _builder.newLine();
    _builder.append("\t\t\t");
    _builder.append("if (ecucTypeDefType.isInstance(definition)) {");
    _builder.newLine();
    _builder.append("\t\t\t\t");
    _builder.append("return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)");
    _builder.newLine();
    _builder.append("\t\t\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("return false");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  public CharSequence createContainerClass(final GContainerDef cont) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("static class ");
    String _gGetShortName = cont.gGetShortName();
    _builder.append(_gGetShortName, "");
    _builder.append(" implements IWrapper<GContainer> {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("private GContainer containerValue");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("new(GContainer containerValue){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("this.containerValue = containerValue");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("def String getShortName(){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("containerValue?.gGetShortName");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("def void setShortName(String name){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("containerValue?.gSetShortName(name)");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("override def GContainer getTarget(){");
    _builder.newLine();
    _builder.append("\t\t");
    _builder.append("containerValue");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    CharSequence _containerContents = this.getContainerContents(cont);
    _builder.append(_containerContents, "\t");
    _builder.newLineIfNotEmpty();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  protected CharSequence _getContainerContents(final GChoiceContainerDef cont) {
    StringConcatenation _builder = new StringConcatenation();
    {
      EList<GParamConfContainerDef> _gGetChoices = cont.gGetChoices();
      for(final GParamConfContainerDef sc : _gGetChoices) {
        _builder.append("def ");
        String _gGetShortName = sc.gGetShortName();
        _builder.append(_gGetShortName, "");
        _builder.append(" get");
        String _gGetShortName_1 = sc.gGetShortName();
        String _firstUpper = StringExtensions.toFirstUpper(_gGetShortName_1);
        _builder.append(_firstUpper, "");
        _builder.append("(){");
        _builder.newLineIfNotEmpty();
        _builder.append("\t");
        _builder.append("containerValue.getByType(typeof(");
        String _gGetShortName_2 = sc.gGetShortName();
        _builder.append(_gGetShortName_2, "\t");
        _builder.append("))");
        _builder.newLineIfNotEmpty();
        _builder.append("}");
        _builder.newLine();
        _builder.newLine();
        _builder.append("def void set");
        String _gGetShortName_3 = sc.gGetShortName();
        String _firstUpper_1 = StringExtensions.toFirstUpper(_gGetShortName_3);
        _builder.append(_firstUpper_1, "");
        _builder.append("(GContainer subContainer){");
        _builder.newLineIfNotEmpty();
        _builder.append("\t");
        _builder.append("containerValue.setContainer(subContainer, \"");
        String _gGetShortName_4 = sc.gGetShortName();
        String _firstUpper_2 = StringExtensions.toFirstUpper(_gGetShortName_4);
        _builder.append(_firstUpper_2, "\t");
        _builder.append("\")");
        _builder.newLineIfNotEmpty();
        _builder.append("}");
        _builder.newLine();
      }
    }
    _builder.newLine();
    {
      EList<GParamConfContainerDef> _gGetChoices_1 = cont.gGetChoices();
      for(final GParamConfContainerDef sc_1 : _gGetChoices_1) {
        Object _createContainerClass = this.createContainerClass(sc_1);
        _builder.append(_createContainerClass, "");
        _builder.newLineIfNotEmpty();
        _builder.newLine();
      }
    }
    return _builder;
  }
  
  protected CharSequence _getContainerContents(final GParamConfContainerDef cont) {
    StringConcatenation _builder = new StringConcatenation();
    {
      EList<GConfigParameter> _gGetParameters = cont.gGetParameters();
      for(final GConfigParameter p : _gGetParameters) {
        {
          boolean _isMany = EcucValueAccessorUtil.isMany(p);
          if (_isMany) {
            final String valueTypeName = this.getParameterValueValueTypeName(p, cont);
            _builder.newLineIfNotEmpty();
            final String parameterValueTypeName = this.getParameterValueTypeName(p);
            _builder.newLineIfNotEmpty();
            _builder.append("def List<");
            _builder.append(valueTypeName, "");
            _builder.append("> get");
            String _gGetShortName = p.gGetShortName();
            String _firstUpper = StringExtensions.toFirstUpper(_gGetShortName);
            String _pluralOf = EcucValueAccessorUtil.getPluralOf(_firstUpper);
            _builder.append(_pluralOf, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("val List<");
            _builder.append(parameterValueTypeName, "\t");
            _builder.append("> filteredParameterValues = new AbstractFilteringEList<");
            _builder.append(parameterValueTypeName, "\t");
            _builder.append(">(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t");
            _builder.append("override protected accept(");
            _builder.append(parameterValueTypeName, "\t\t");
            _builder.append(" item) {");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t");
            _builder.append("return accept(item, typeof(GConfigParameter), \"");
            String _gGetShortName_1 = p.gGetShortName();
            _builder.append(_gGetShortName_1, "\t\t\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("val containerDef = containerValue.gGetDefinition");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("if (containerDef instanceof GParamConfContainerDef) {");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == \"");
            String _gGetShortName_2 = p.gGetShortName();
            _builder.append(_gGetShortName_2, "\t\t");
            _builder.append("\"]");
            _builder.newLineIfNotEmpty();
            {
              if ((!(p instanceof GEnumerationParamDef))) {
                _builder.append("\t\t");
                _builder.append("return new ");
                _builder.append(valueTypeName, "\t\t");
                _builder.append("ValueUnwrappingEList(filteredParameterValues, typeof(");
                _builder.append(parameterValueTypeName, "\t\t");
                _builder.append("), typeof(");
                _builder.append(valueTypeName, "\t\t");
                _builder.append("), parameterDef)");
                _builder.newLineIfNotEmpty();
              } else {
                _builder.append("\t\t");
                _builder.append("return new AbstractUnwrappingEList<");
                _builder.append(parameterValueTypeName, "\t\t");
                _builder.append(", ");
                _builder.append(valueTypeName, "\t\t");
                _builder.append(">(filteredParameterValues, typeof(");
                _builder.append(parameterValueTypeName, "\t\t");
                _builder.append("), typeof(");
                String _firstUpper_1 = null;
                if (valueTypeName!=null) {
                  _firstUpper_1=StringExtensions.toFirstUpper(valueTypeName);
                }
                _builder.append(_firstUpper_1, "\t\t");
                _builder.append(")) {");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t");
                _builder.append("override protected wrap(");
                String _firstUpper_2 = null;
                if (valueTypeName!=null) {
                  _firstUpper_2=StringExtensions.toFirstUpper(valueTypeName);
                }
                _builder.append(_firstUpper_2, "\t\t\t");
                _builder.append(" object) throws CoreException {");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t\t");
                _builder.append("val parameterValue = ");
                String _autosarFactoryClassName = this.getAutosarFactoryClassName();
                _builder.append(_autosarFactoryClassName, "\t\t\t\t");
                _builder.append(".eINSTANCE.create");
                _builder.append(parameterValueTypeName, "\t\t\t\t");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t\t");
                _builder.append("parameterValue.gSetDefinition(parameterDef)");
                _builder.newLine();
                _builder.append("\t\t");
                _builder.append("\t\t");
                String _ecucAccessorUtilClassName = this.getEcucAccessorUtilClassName();
                _builder.append(_ecucAccessorUtilClassName, "\t\t\t\t");
                _builder.append(".setParameterValue(parameterValue, object)");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t\t");
                _builder.append("parameterValue");
                _builder.newLine();
                _builder.append("\t\t");
                _builder.append("\t");
                _builder.append("}");
                _builder.newLine();
                _builder.append("\t\t");
                _builder.append("\t");
                _builder.newLine();
                _builder.append("\t\t");
                _builder.append("\t");
                _builder.append("override protected unwrap(");
                _builder.append(parameterValueTypeName, "\t\t\t");
                _builder.append(" parameterValue) {");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t\t");
                _builder.append("get");
                String _firstUpper_3 = null;
                if (valueTypeName!=null) {
                  _firstUpper_3=StringExtensions.toFirstUpper(valueTypeName);
                }
                _builder.append(_firstUpper_3, "\t\t\t\t");
                _builder.append("Value(parameterValue)");
                _builder.newLineIfNotEmpty();
                _builder.append("\t\t");
                _builder.append("\t");
                _builder.append("}");
                _builder.newLine();
                _builder.append("\t\t");
                _builder.append("}");
                _builder.newLine();
              }
            }
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("}");
            _builder.newLine();
          } else {
            _builder.append("def ");
            String _parameterValueValueTypeName = this.getParameterValueValueTypeName(p, cont);
            _builder.append(_parameterValueValueTypeName, "");
            _builder.append(" get");
            String _gGetShortName_3 = p.gGetShortName();
            String _firstUpper_4 = StringExtensions.toFirstUpper(_gGetShortName_3);
            _builder.append(_firstUpper_4, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            final String parameterTypeName = this.getParameterValueValueTypeName(p, cont);
            _builder.newLineIfNotEmpty();
            {
              boolean _contains = AbstractEcucValueAccessorGenerator.KNOWN_PARAMETER_VALUE_VALUE_TYPE_NAMES.contains(parameterTypeName);
              if (_contains) {
                _builder.append("\t");
                String _ecucAccessorUtilClassName_1 = this.getEcucAccessorUtilClassName();
                _builder.append(_ecucAccessorUtilClassName_1, "\t");
                _builder.append(".get");
                String _firstUpper_5 = null;
                if (parameterTypeName!=null) {
                  _firstUpper_5=StringExtensions.toFirstUpper(parameterTypeName);
                }
                _builder.append(_firstUpper_5, "\t");
                _builder.append("Value(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == \"");
                String _gGetShortName_4 = p.gGetShortName();
                _builder.append(_gGetShortName_4, "\t");
                _builder.append("\"])");
                _builder.newLineIfNotEmpty();
              } else {
                _builder.append("\t");
                _builder.append("get");
                String _firstUpper_6 = null;
                if (parameterTypeName!=null) {
                  _firstUpper_6=StringExtensions.toFirstUpper(parameterTypeName);
                }
                _builder.append(_firstUpper_6, "\t");
                _builder.append("Value(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == \"");
                String _gGetShortName_5 = p.gGetShortName();
                _builder.append(_gGetShortName_5, "\t");
                _builder.append("\"])");
                _builder.newLineIfNotEmpty();
              }
            }
            _builder.append("}");
            _builder.newLine();
            _builder.newLine();
            _builder.append("def void set");
            String _gGetShortName_6 = p.gGetShortName();
            String _firstUpper_7 = StringExtensions.toFirstUpper(_gGetShortName_6);
            _builder.append(_firstUpper_7, "");
            _builder.append("(");
            String _parameterValueValueTypeName_1 = this.getParameterValueValueTypeName(p, cont);
            _builder.append(_parameterValueValueTypeName_1, "");
            _builder.append(" value){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == \"");
            String _gGetShortName_7 = p.gGetShortName();
            _builder.append(_gGetShortName_7, "\t");
            _builder.append("\"]");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("if (parameterValue == null) {");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("val containerDef = containerValue.gGetDefinition");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("if (containerDef instanceof GParamConfContainerDef) {");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("parameterValue = ");
            String _ecucAccessorUtilClassName_2 = this.getEcucAccessorUtilClassName();
            _builder.append(_ecucAccessorUtilClassName_2, "\t\t\t");
            _builder.append(".createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == \"");
            String _gGetShortName_8 = p.gGetShortName();
            _builder.append(_gGetShortName_8, "\t\t\t");
            _builder.append("\"])");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t");
            _builder.append("containerValue.gGetParameterValues += parameterValue");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            String _ecucAccessorUtilClassName_3 = this.getEcucAccessorUtilClassName();
            _builder.append(_ecucAccessorUtilClassName_3, "\t");
            _builder.append(".setParameterValue(parameterValue, value)");
            _builder.newLineIfNotEmpty();
            _builder.append("}");
            _builder.newLine();
          }
        }
        CharSequence _generateEnumType = this.generateEnumType(p, cont);
        _builder.append(_generateEnumType, "");
        _builder.newLineIfNotEmpty();
        _builder.newLine();
      }
    }
    _builder.newLine();
    {
      EList<GConfigReference> _gGetReferences = cont.gGetReferences();
      for(final GConfigReference referenceDef : _gGetReferences) {
        CharSequence _referenceContents = this.getReferenceContents(referenceDef);
        _builder.append(_referenceContents, "");
        _builder.newLineIfNotEmpty();
        _builder.newLine();
      }
    }
    _builder.newLine();
    {
      EList<GContainerDef> _gGetSubContainers = cont.gGetSubContainers();
      for(final GContainerDef sc : _gGetSubContainers) {
        {
          boolean _isMany_1 = EcucValueAccessorUtil.isMany(sc);
          if (_isMany_1) {
            _builder.append("def List<");
            String _containerTypeName = this.getContainerTypeName(sc);
            _builder.append(_containerTypeName, "");
            _builder.append("> get");
            String _containerTypeName_1 = this.getContainerTypeName(sc);
            String _firstUpper_8 = StringExtensions.toFirstUpper(_containerTypeName_1);
            String _pluralOf_1 = EcucValueAccessorUtil.getPluralOf(_firstUpper_8);
            _builder.append(_pluralOf_1, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("override protected accept(GContainer item) {");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("return accept(item, typeof(GContainerDef), \"");
            String _containerTypeName_2 = this.getContainerTypeName(sc);
            _builder.append(_containerTypeName_2, "\t\t\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("return new BasicWrappingEList<");
            String _containerTypeName_3 = this.getContainerTypeName(sc);
            _builder.append(_containerTypeName_3, "\t");
            _builder.append(", GContainer>(filteredContainers, typeof(");
            String _containerTypeName_4 = this.getContainerTypeName(sc);
            _builder.append(_containerTypeName_4, "\t");
            _builder.append("), typeof(GContainer))");
            _builder.newLineIfNotEmpty();
            _builder.append("}");
            _builder.newLine();
          } else {
            _builder.append("def ");
            String _containerTypeName_5 = this.getContainerTypeName(sc);
            _builder.append(_containerTypeName_5, "");
            _builder.append(" get");
            String _containerTypeName_6 = this.getContainerTypeName(sc);
            String _firstUpper_9 = StringExtensions.toFirstUpper(_containerTypeName_6);
            _builder.append(_firstUpper_9, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("containerValue.getByType(typeof(");
            String _gGetShortName_9 = sc.gGetShortName();
            _builder.append(_gGetShortName_9, "\t");
            _builder.append("))");
            _builder.newLineIfNotEmpty();
            _builder.append("}");
            _builder.newLine();
            _builder.newLine();
            _builder.append("def void set");
            String _containerTypeName_7 = this.getContainerTypeName(sc);
            String _firstUpper_10 = StringExtensions.toFirstUpper(_containerTypeName_7);
            _builder.append(_firstUpper_10, "");
            _builder.append("(GContainer subContainer){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("containerValue.setContainer(subContainer, \"");
            String _gGetShortName_10 = sc.gGetShortName();
            String _firstUpper_11 = StringExtensions.toFirstUpper(_gGetShortName_10);
            _builder.append(_firstUpper_11, "\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("}");
            _builder.newLine();
          }
        }
        _builder.newLine();
      }
    }
    _builder.newLine();
    {
      EList<GContainerDef> _gGetSubContainers_1 = cont.gGetSubContainers();
      for(final GContainerDef sc_1 : _gGetSubContainers_1) {
        Object _createContainerClass = this.createContainerClass(sc_1);
        _builder.append(_createContainerClass, "");
        _builder.newLineIfNotEmpty();
        _builder.newLine();
      }
    }
    return _builder;
  }
  
  protected CharSequence _getReferenceContents(final GReferenceDef referenceDef) {
    StringConcatenation _builder = new StringConcatenation();
    {
      GContainerDef _gGetRefDestination = referenceDef.gGetRefDestination();
      boolean _notEquals = (!Objects.equal(_gGetRefDestination, null));
      if (_notEquals) {
        GContainerDef _gGetRefDestination_1 = referenceDef.gGetRefDestination();
        final String refDestinationClassName = EcucValueAccessorUtil.getAccessorClassQualifiedName(this.javaPackageName, _gGetRefDestination_1, ".");
        _builder.newLineIfNotEmpty();
        {
          boolean _isMany = EcucValueAccessorUtil.isMany(referenceDef);
          if (_isMany) {
            _builder.append("def List<");
            _builder.append(refDestinationClassName, "");
            _builder.append("> get");
            String _gGetShortName = referenceDef.gGetShortName();
            String _firstUpper = StringExtensions.toFirstUpper(_gGetShortName);
            String _pluralOf = EcucValueAccessorUtil.getPluralOf(_firstUpper);
            _builder.append(_pluralOf, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("val containerDef = containerValue.gGetDefinition");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) ");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("containerDef.gGetReferences.findFirst[gGetShortName == \"");
            String _gGetShortName_1 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_1, "\t\t");
            _builder.append("\"] else null");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t\t\t");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("override protected accept(GReferenceValue item) {");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("return accept(item, typeof(GConfigReference), \"");
            String _gGetShortName_2 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_2, "\t\t\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("return new AbstractUnwrappingEList<GReferenceValue, ");
            _builder.append(refDestinationClassName, "\t");
            _builder.append(">(filteredReferenceValues, typeof(GReferenceValue), typeof(");
            _builder.append(refDestinationClassName, "\t");
            _builder.append(")) {");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t");
            _builder.append("override protected wrap(");
            _builder.append(refDestinationClassName, "\t\t");
            _builder.append(" object) throws CoreException {");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t");
            _builder.append("if (object != null) {");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("val container = object.getTarget()");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("val referenceValue = ");
            String _autosarFactoryClassName = this.getAutosarFactoryClassName();
            _builder.append(_autosarFactoryClassName, "\t\t\t\t");
            _builder.append(".eINSTANCE.create");
            String _referenceValueTypeName = this.getReferenceValueTypeName();
            _builder.append(_referenceValueTypeName, "\t\t\t\t");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t\t");
            _builder.append("referenceValue.gSetDefinition(referenceValueDef)");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("referenceValue.gSetValue(container)");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("return referenceValue");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("override protected unwrap(GReferenceValue referenceValue) {");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("if (referenceValue != null) {");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("val referenceValueValue = referenceValue.gGetValue");
            _builder.newLine();
            _builder.append("\t\t\t\t");
            _builder.append("if (referenceValueValue instanceof GContainer) {");
            _builder.newLine();
            _builder.append("\t\t\t\t\t");
            _builder.append("return new ");
            _builder.append(refDestinationClassName, "\t\t\t\t\t");
            _builder.append("(referenceValueValue as GContainer)");
            _builder.newLineIfNotEmpty();
            _builder.append("\t\t\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("}");
            _builder.newLine();
          } else {
            _builder.append("def ");
            _builder.append(refDestinationClassName, "");
            _builder.append(" get");
            String _gGetShortName_3 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_3, "");
            _builder.append("(){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("containerValue.getReference(typeof(");
            _builder.append(refDestinationClassName, "\t");
            _builder.append("), \"");
            String _gGetShortName_4 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_4, "\t");
            _builder.append("\")");
            _builder.newLineIfNotEmpty();
            _builder.append("}");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.newLine();
            _builder.append("def void set");
            String _gGetShortName_5 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_5, "");
            _builder.append("(");
            _builder.append(refDestinationClassName, "");
            _builder.append(" object){");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("val containerDef = containerValue.gGetDefinition");
            _builder.newLine();
            _builder.append("\t");
            _builder.append("if (containerDef instanceof GParamConfContainerDef) {");
            _builder.newLine();
            _builder.append("\t\t");
            _builder.append("containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == \"");
            String _gGetShortName_6 = referenceDef.gGetShortName();
            _builder.append(_gGetShortName_6, "\t\t");
            _builder.append("\"], object.getTarget())");
            _builder.newLineIfNotEmpty();
            _builder.append("\t");
            _builder.append("}");
            _builder.newLine();
            _builder.append("}");
            _builder.newLine();
          }
        }
      }
    }
    return _builder;
  }
  
  protected CharSequence _getReferenceContents(final GConfigReference referenceDef) {
    StringConcatenation _builder = new StringConcatenation();
    return _builder;
  }
  
  public String getLiteralName(final String lit) {
    String _xifexpression = null;
    String _lowerCase = lit.toLowerCase();
    boolean _contains = AbstractEcucValueAccessorGenerator.RESERVED.contains(_lowerCase);
    if (_contains) {
      _xifexpression = ("^" + lit);
    } else {
      _xifexpression = lit;
    }
    return _xifexpression;
  }
  
  public void createFolder(final IFolder f, final IProgressMonitor monitor) {
    try {
      IContainer _parent = f.getParent();
      if ((_parent instanceof IFolder)) {
        IContainer _parent_1 = f.getParent();
        this.createFolder(((IFolder) _parent_1), monitor);
      }
      boolean _exists = f.exists();
      boolean _not = (!_exists);
      if (_not) {
        f.create(true, true, monitor);
      }
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  public void writeFile(final CharSequence content, final String fileName, final String folderName, final IProject project) {
    try {
      final NullProgressMonitor monitor = new NullProgressMonitor();
      final IFolder f = project.getFolder(folderName);
      this.createFolder(f, monitor);
      final IFile targetFile = f.getFile(fileName);
      boolean _exists = targetFile.exists();
      if (_exists) {
        targetFile.delete(true, monitor);
      }
      String _string = content.toString();
      byte[] _bytes = _string.getBytes();
      ByteArrayInputStream _byteArrayInputStream = new ByteArrayInputStream(_bytes);
      targetFile.create(_byteArrayInputStream, true, monitor);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  public String getContainerTypeName(final GContainerDef cont) {
    return cont.gGetShortName();
  }
  
  public String getModuleTypeName(final GModuleDef module) {
    return module.gGetShortName();
  }
  
  protected CharSequence _generateEnumType(final GEnumerationParamDef p, final GParamConfContainerDef cont) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.newLine();
    _builder.append("enum ");
    String _parameterValueValueTypeName = this.getParameterValueValueTypeName(p, cont);
    _builder.append(_parameterValueValueTypeName, "");
    _builder.append(" {");
    _builder.newLineIfNotEmpty();
    {
      EList<GEnumerationLiteralDef> _gGetLiterals = p.gGetLiterals();
      boolean _hasElements = false;
      for(final GEnumerationLiteralDef l : _gGetLiterals) {
        if (!_hasElements) {
          _hasElements = true;
        } else {
          _builder.appendImmediate(", ", "\t");
        }
        _builder.append("\t");
        String _gGetShortName = l.gGetShortName();
        String _literalName = this.getLiteralName(_gGetShortName);
        _builder.append(_literalName, "\t");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("def ");
    String _parameterValueValueTypeName_1 = this.getParameterValueValueTypeName(p, cont);
    _builder.append(_parameterValueValueTypeName_1, "");
    _builder.append(" get");
    String _parameterValueValueTypeName_2 = this.getParameterValueValueTypeName(p, cont);
    _builder.append(_parameterValueValueTypeName_2, "");
    _builder.append("Value(GParameterValue paramValue){");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("val castedParamValue = paramValue as ");
    String _enumerationParameterValueTypeName = this.getEnumerationParameterValueTypeName();
    _builder.append(_enumerationParameterValueTypeName, "\t");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("switch (castedParamValue.value){");
    _builder.newLine();
    {
      EList<GEnumerationLiteralDef> _gGetLiterals_1 = p.gGetLiterals();
      for(final GEnumerationLiteralDef l_1 : _gGetLiterals_1) {
        _builder.append("\t\t");
        _builder.append("case \"");
        String _gGetShortName_1 = l_1.gGetShortName();
        _builder.append(_gGetShortName_1, "\t\t");
        _builder.append("\" : ");
        String _parameterValueValueTypeName_3 = this.getParameterValueValueTypeName(p, cont);
        _builder.append(_parameterValueValueTypeName_3, "\t\t");
        _builder.append(".");
        String _gGetShortName_2 = l_1.gGetShortName();
        String _literalName_1 = this.getLiteralName(_gGetShortName_2);
        _builder.append(_literalName_1, "\t\t");
        _builder.newLineIfNotEmpty();
      }
    }
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("}");
    _builder.newLine();
    _builder.newLine();
    _builder.append("def void set");
    String _parameterValueValueTypeName_4 = this.getParameterValueValueTypeName(p, cont);
    _builder.append(_parameterValueValueTypeName_4, "");
    _builder.append("Value(GParameterValue paramValue, ");
    String _parameterValueValueTypeName_5 = this.getParameterValueValueTypeName(p, cont);
    _builder.append(_parameterValueValueTypeName_5, "");
    _builder.append(" value){");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    String _ecucAccessorUtilClassName = this.getEcucAccessorUtilClassName();
    _builder.append(_ecucAccessorUtilClassName, "\t");
    _builder.append(".setParameterValue(paramValue, value)");
    _builder.newLineIfNotEmpty();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  protected CharSequence _generateEnumType(final GConfigParameter p, final GParamConfContainerDef cont) {
    StringConcatenation _builder = new StringConcatenation();
    return _builder;
  }
  
  protected String _getParameterValueValueTypeName(final GEnumerationParamDef p, final GParamConfContainerDef cont) {
    String _xblockexpression = null;
    {
      String _gGetShortName = p.gGetShortName();
      boolean _equals = _gGetShortName.equals("DcmDspRoeEventWindowTime");
      if (_equals) {
        return "DcmDspRoeEventWindowTimeEnum";
      }
      _xblockexpression = p.gGetShortName();
    }
    return _xblockexpression;
  }
  
  protected String _getParameterValueValueTypeName(final GIntegerParamDef p, final GParamConfContainerDef cont) {
    return "Integer";
  }
  
  protected String _getParameterValueValueTypeName(final GFloatParamDef p, final GParamConfContainerDef cont) {
    return "Float";
  }
  
  protected String _getParameterValueValueTypeName(final GAbstractStringParamDef p, final GParamConfContainerDef cont) {
    return "String";
  }
  
  protected String _getParameterValueValueTypeName(final GBooleanParamDef p, final GParamConfContainerDef cont) {
    return "Boolean";
  }
  
  protected String _getParameterValueValueTypeName(final GConfigParameter p, final GParamConfContainerDef cont) {
    return "Object";
  }
  
  public CharSequence getContainerContents(final GContainerDef cont) {
    if (cont instanceof GChoiceContainerDef) {
      return _getContainerContents((GChoiceContainerDef)cont);
    } else if (cont instanceof GParamConfContainerDef) {
      return _getContainerContents((GParamConfContainerDef)cont);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(cont).toString());
    }
  }
  
  public CharSequence getReferenceContents(final GConfigReference referenceDef) {
    if (referenceDef instanceof GReferenceDef) {
      return _getReferenceContents((GReferenceDef)referenceDef);
    } else if (referenceDef != null) {
      return _getReferenceContents(referenceDef);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(referenceDef).toString());
    }
  }
  
  public CharSequence generateEnumType(final GConfigParameter p, final GParamConfContainerDef cont) {
    if (p instanceof GEnumerationParamDef) {
      return _generateEnumType((GEnumerationParamDef)p, cont);
    } else if (p != null) {
      return _generateEnumType(p, cont);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(p, cont).toString());
    }
  }
  
  public String getParameterValueValueTypeName(final GConfigParameter p, final GParamConfContainerDef cont) {
    if (p instanceof GAbstractStringParamDef) {
      return _getParameterValueValueTypeName((GAbstractStringParamDef)p, cont);
    } else if (p instanceof GBooleanParamDef) {
      return _getParameterValueValueTypeName((GBooleanParamDef)p, cont);
    } else if (p instanceof GEnumerationParamDef) {
      return _getParameterValueValueTypeName((GEnumerationParamDef)p, cont);
    } else if (p instanceof GFloatParamDef) {
      return _getParameterValueValueTypeName((GFloatParamDef)p, cont);
    } else if (p instanceof GIntegerParamDef) {
      return _getParameterValueValueTypeName((GIntegerParamDef)p, cont);
    } else if (p != null) {
      return _getParameterValueValueTypeName(p, cont);
    } else {
      throw new IllegalArgumentException("Unhandled parameter types: " +
        Arrays.<Object>asList(p, cont).toString());
    }
  }
}
