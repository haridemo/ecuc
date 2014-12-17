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
package org.artop.ecuc.gautosar.accessors.lib;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.ExclusiveRange;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.StringExtensions;

@SuppressWarnings("all")
public class EcucValueAccessorUtil {
  protected final static Set<String> TRUE_STRINGS = Collections.<String>unmodifiableSet(CollectionLiterals.<String>newHashSet("1", "true", "ON", "True"));
  
  public static <T extends Object> T getByType(final GModuleConfiguration moduleConfiguration, final Class<T> clazz) {
    try {
      Object _xblockexpression = null;
      {
        Assert.isNotNull(moduleConfiguration);
        Assert.isNotNull(clazz);
        EList<GContainer> _gGetContainers = moduleConfiguration.gGetContainers();
        final Function1<GContainer, Boolean> _function = new Function1<GContainer, Boolean>() {
          public Boolean apply(final GContainer it) {
            GContainerDef _gGetDefinition = it.gGetDefinition();
            String _gGetShortName = null;
            if (_gGetDefinition!=null) {
              _gGetShortName=_gGetDefinition.gGetShortName();
            }
            String _simpleName = clazz.getSimpleName();
            return Boolean.valueOf(Objects.equal(_gGetShortName, _simpleName));
          }
        };
        final GContainer container = IterableExtensions.<GContainer>findFirst(_gGetContainers, _function);
        Object _xifexpression = null;
        boolean _notEquals = (!Objects.equal(container, null));
        if (_notEquals) {
          final Constructor<T> constructor = clazz.getDeclaredConstructor(GContainer.class);
          return constructor.newInstance(container);
        } else {
          _xifexpression = null;
        }
        _xblockexpression = _xifexpression;
      }
      return ((T)_xblockexpression);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  public static <T extends Object> T getByType(final GContainer container, final Class<T> clazz) {
    try {
      Object _xblockexpression = null;
      {
        Assert.isNotNull(container);
        Assert.isNotNull(clazz);
        EList<GContainer> _gGetSubContainers = container.gGetSubContainers();
        final Function1<GContainer, Boolean> _function = new Function1<GContainer, Boolean>() {
          public Boolean apply(final GContainer it) {
            GContainerDef _gGetDefinition = it.gGetDefinition();
            String _gGetShortName = null;
            if (_gGetDefinition!=null) {
              _gGetShortName=_gGetDefinition.gGetShortName();
            }
            String _simpleName = clazz.getSimpleName();
            return Boolean.valueOf(Objects.equal(_gGetShortName, _simpleName));
          }
        };
        final GContainer subContainer = IterableExtensions.<GContainer>findFirst(_gGetSubContainers, _function);
        Object _xifexpression = null;
        boolean _notEquals = (!Objects.equal(subContainer, null));
        if (_notEquals) {
          final Constructor<T> constructor = clazz.getDeclaredConstructor(GContainer.class);
          return constructor.newInstance(subContainer);
        } else {
          _xifexpression = null;
        }
        _xblockexpression = _xifexpression;
      }
      return ((T)_xblockexpression);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  public static void setContainer(final GARObject target, final GContainer container, final String containerDefName) {
    Assert.isTrue(((target instanceof GModuleConfiguration) || (target instanceof GContainer)));
    EClass _gContainer = GecucdescriptionPackage.eINSTANCE.getGContainer();
    final EStructuralFeature feature = EcucValueAccessorUtil.getEContainingFeature(target, _gContainer);
    boolean _and = false;
    boolean _notEquals = (!Objects.equal(container, null));
    if (!_notEquals) {
      _and = false;
    } else {
      String _string = container.toString();
      boolean _equals = "".equals(_string);
      boolean _not = (!_equals);
      _and = _not;
    }
    if (_and) {
      boolean _isMany = feature.isMany();
      if (_isMany) {
        Object _eGet = ((EObject) target).eGet(feature);
        ((List<Object>) _eGet).add(container);
      } else {
        target.eSet(feature, container);
      }
    }
    if ((target instanceof GModuleConfiguration)) {
      GModuleDef _gGetDefinition = ((GModuleConfiguration)target).gGetDefinition();
      EList<GContainerDef> _gGetContainers = null;
      if (_gGetDefinition!=null) {
        _gGetContainers=_gGetDefinition.gGetContainers();
      }
      final Function1<GContainerDef, Boolean> _function = new Function1<GContainerDef, Boolean>() {
        public Boolean apply(final GContainerDef it) {
          String _gGetShortName = it.gGetShortName();
          return Boolean.valueOf(_gGetShortName.equals(containerDefName));
        }
      };
      final GContainerDef containerDef = IterableExtensions.<GContainerDef>findFirst(_gGetContainers, _function);
      container.gSetDefinition(containerDef);
    } else {
      if ((target instanceof GContainer)) {
        final GContainerDef definition = ((GContainer)target).gGetDefinition();
        if ((definition instanceof GParamConfContainerDef)) {
          EList<GContainerDef> _gGetSubContainers = ((GParamConfContainerDef)definition).gGetSubContainers();
          final Function1<GContainerDef, Boolean> _function_1 = new Function1<GContainerDef, Boolean>() {
            public Boolean apply(final GContainerDef it) {
              String _gGetShortName = it.gGetShortName();
              return Boolean.valueOf(_gGetShortName.equals(containerDefName));
            }
          };
          final GContainerDef containerDef_1 = IterableExtensions.<GContainerDef>findFirst(_gGetSubContainers, _function_1);
          container.gSetDefinition(containerDef_1);
        }
      }
    }
  }
  
  public static EStructuralFeature getEContainingFeature(final EObject target, final EClass ecucValueType) {
    boolean _and = false;
    if (!(target instanceof GModuleConfiguration)) {
      _and = false;
    } else {
      EClass _gContainer = GecucdescriptionPackage.eINSTANCE.getGContainer();
      boolean _isSuperTypeOf = _gContainer.isSuperTypeOf(ecucValueType);
      _and = _isSuperTypeOf;
    }
    if (_and) {
      EClass _eClass = target.eClass();
      return _eClass.getEStructuralFeature("containers");
    }
    boolean _and_1 = false;
    if (!(target instanceof GContainer)) {
      _and_1 = false;
    } else {
      EClass _gContainer_1 = GecucdescriptionPackage.eINSTANCE.getGContainer();
      boolean _isSuperTypeOf_1 = _gContainer_1.isSuperTypeOf(ecucValueType);
      _and_1 = _isSuperTypeOf_1;
    }
    if (_and_1) {
      EClass _eClass_1 = target.eClass();
      return _eClass_1.getEStructuralFeature("subContainers");
    }
    boolean _and_2 = false;
    if (!(target instanceof GContainer)) {
      _and_2 = false;
    } else {
      EClass _gParameterValue = GecucdescriptionPackage.eINSTANCE.getGParameterValue();
      boolean _isSuperTypeOf_2 = _gParameterValue.isSuperTypeOf(ecucValueType);
      _and_2 = _isSuperTypeOf_2;
    }
    if (_and_2) {
      EClass _eClass_2 = target.eClass();
      return _eClass_2.getEStructuralFeature("parameterValues");
    }
    boolean _and_3 = false;
    if (!(target instanceof GContainer)) {
      _and_3 = false;
    } else {
      EClass _gConfigReferenceValue = GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue();
      boolean _isSuperTypeOf_3 = _gConfigReferenceValue.isSuperTypeOf(ecucValueType);
      _and_3 = _isSuperTypeOf_3;
    }
    if (_and_3) {
      EClass _eClass_3 = target.eClass();
      return _eClass_3.getEStructuralFeature("referenceValues");
    }
    return null;
  }
  
  public static <T extends Object> T getReference(final GContainer container, final Class<T> clazz, final String referenceDefinitionName) {
    try {
      Object _xblockexpression = null;
      {
        Assert.isNotNull(container);
        Assert.isNotNull(clazz);
        EList<GConfigReferenceValue> _gGetReferenceValues = container.gGetReferenceValues();
        final Function1<GConfigReferenceValue, Boolean> _function = new Function1<GConfigReferenceValue, Boolean>() {
          public Boolean apply(final GConfigReferenceValue it) {
            GConfigReference _gGetDefinition = it.gGetDefinition();
            String _gGetShortName = null;
            if (_gGetDefinition!=null) {
              _gGetShortName=_gGetDefinition.gGetShortName();
            }
            return Boolean.valueOf(Objects.equal(_gGetShortName, referenceDefinitionName));
          }
        };
        final GConfigReferenceValue referenceValue = IterableExtensions.<GConfigReferenceValue>findFirst(_gGetReferenceValues, _function);
        if ((referenceValue instanceof GReferenceValue)) {
          final GIdentifiable referenceValueValue = ((GReferenceValue)referenceValue).gGetValue();
          if ((referenceValueValue instanceof GContainer)) {
            GContainerDef _gGetDefinition = ((GContainer)referenceValueValue).gGetDefinition();
            String _gGetShortName = null;
            if (_gGetDefinition!=null) {
              _gGetShortName=_gGetDefinition.gGetShortName();
            }
            String _simpleName = clazz.getSimpleName();
            boolean _equals = Objects.equal(_gGetShortName, _simpleName);
            if (_equals) {
              final Constructor<T> constructor = clazz.getDeclaredConstructor(GContainer.class);
              return constructor.newInstance(referenceValueValue);
            }
          }
        }
        _xblockexpression = null;
      }
      return ((T)_xblockexpression);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
  
  public static String getAccessorClassQualifiedName(final String javaPackageName, final GContainerDef containerDef, final String separator) {
    String _xblockexpression = null;
    {
      Assert.isNotNull(containerDef);
      StringBuilder builder = new StringBuilder();
      builder.append((javaPackageName + "."));
      List<String> segments = CollectionLiterals.<String>newArrayList();
      String _gGetShortName = containerDef.gGetShortName();
      segments.add(_gGetShortName);
      EObject parent = containerDef.eContainer();
      while (((parent instanceof GReferrable) && (!(parent instanceof GModuleDef)))) {
        {
          String _gGetShortName_1 = ((GReferrable) parent).gGetShortName();
          segments.add(_gGetShortName_1);
          EObject _eContainer = parent.eContainer();
          parent = _eContainer;
        }
      }
      if ((parent instanceof GModuleDef)) {
        String _gGetShortName_1 = ((GReferrable) parent).gGetShortName();
        segments.add(_gGetShortName_1);
      }
      int _size = segments.size();
      ExclusiveRange _greaterThanDoubleDot = new ExclusiveRange(_size, 0, false);
      for (final Integer i : _greaterThanDoubleDot) {
        {
          String _get = segments.get((i).intValue());
          builder.append(_get);
          if (((i).intValue() != 0)) {
            builder.append(separator);
          }
        }
      }
      _xblockexpression = builder.toString();
    }
    return _xblockexpression;
  }
  
  public static Integer toInteger(final String numString) {
    return Integer.valueOf(Integer.parseInt(numString));
  }
  
  public static Float toFloat(final String numString) {
    return Float.valueOf(Float.parseFloat(numString));
  }
  
  public static Boolean toBoolean(final String boolString) {
    return Boolean.valueOf(EcucValueAccessorUtil.TRUE_STRINGS.contains(boolString));
  }
  
  public static <T extends Object> List<T> toList(final Iterable<T> in) {
    final ArrayList<T> result = new ArrayList<T>();
    Iterables.<T>addAll(result, in);
    return result;
  }
  
  public static boolean isMany(final GIdentifiable childType) {
    Assert.isNotNull(childType);
    if ((childType instanceof GParamConfMultiplicity)) {
      Boolean _gGetUpperMultiplicityInfinite = ((GParamConfMultiplicity)childType).gGetUpperMultiplicityInfinite();
      if ((_gGetUpperMultiplicityInfinite).booleanValue()) {
        return true;
      } else {
        final String upperMultiplicity = ((GParamConfMultiplicity)childType).gGetUpperMultiplicityAsString();
        boolean _and = false;
        boolean _and_1 = false;
        boolean _notEquals = (!Objects.equal(upperMultiplicity, null));
        if (!_notEquals) {
          _and_1 = false;
        } else {
          int _length = upperMultiplicity.length();
          boolean _greaterThan = (_length > 0);
          _and_1 = _greaterThan;
        }
        if (!_and_1) {
          _and = false;
        } else {
          boolean _equals = "1".equals(upperMultiplicity);
          boolean _not = (!_equals);
          _and = _not;
        }
        return _and;
      }
    }
    return false;
  }
  
  public static String getChildPropertyName(final GIdentifiable childType) {
    Assert.isNotNull(childType);
    boolean _isMany = EcucValueAccessorUtil.isMany(childType);
    if (_isMany) {
      String _gGetShortName = childType.gGetShortName();
      return EcucValueAccessorUtil.getPluralOf(_gGetShortName);
    }
    return childType.gGetShortName();
  }
  
  public static String getPluralOf(final String input) {
    String plural = input;
    boolean _isNullOrEmpty = StringExtensions.isNullOrEmpty(input);
    boolean _not = (!_isNullOrEmpty);
    if (_not) {
      String _upperCase = input.toUpperCase();
      boolean _equals = _upperCase.equals(input);
      if (_equals) {
        boolean _and = false;
        boolean _and_1 = false;
        int _length = input.length();
        boolean _greaterThan = (_length > 1);
        if (!_greaterThan) {
          _and_1 = false;
        } else {
          boolean _endsWith = input.endsWith("Y");
          _and_1 = _endsWith;
        }
        if (!_and_1) {
          _and = false;
        } else {
          boolean _or = false;
          boolean _or_1 = false;
          boolean _or_2 = false;
          boolean _endsWith_1 = input.endsWith("AY");
          if (_endsWith_1) {
            _or_2 = true;
          } else {
            boolean _endsWith_2 = input.endsWith("EY");
            _or_2 = _endsWith_2;
          }
          if (_or_2) {
            _or_1 = true;
          } else {
            boolean _endsWith_3 = input.endsWith("OY");
            _or_1 = _endsWith_3;
          }
          if (_or_1) {
            _or = true;
          } else {
            boolean _endsWith_4 = input.endsWith("UY");
            _or = _endsWith_4;
          }
          boolean _not_1 = (!_or);
          _and = _not_1;
        }
        if (_and) {
          int _length_1 = input.length();
          int _minus = (_length_1 - 1);
          String _substring = plural.substring(0, _minus);
          String _plus = (_substring + "IES");
          plural = _plus;
        } else {
          boolean _endsWith_5 = input.endsWith("S");
          boolean _not_2 = (!_endsWith_5);
          if (_not_2) {
            plural = (plural + "S");
          }
        }
      } else {
        boolean _and_2 = false;
        boolean _and_3 = false;
        int _length_2 = input.length();
        boolean _greaterThan_1 = (_length_2 > 1);
        if (!_greaterThan_1) {
          _and_3 = false;
        } else {
          boolean _endsWith_6 = input.endsWith("y");
          _and_3 = _endsWith_6;
        }
        if (!_and_3) {
          _and_2 = false;
        } else {
          boolean _or_3 = false;
          boolean _or_4 = false;
          boolean _or_5 = false;
          boolean _endsWith_7 = input.endsWith("ay");
          if (_endsWith_7) {
            _or_5 = true;
          } else {
            boolean _endsWith_8 = input.endsWith("ey");
            _or_5 = _endsWith_8;
          }
          if (_or_5) {
            _or_4 = true;
          } else {
            boolean _endsWith_9 = input.endsWith("oy");
            _or_4 = _endsWith_9;
          }
          if (_or_4) {
            _or_3 = true;
          } else {
            boolean _endsWith_10 = input.endsWith("uy");
            _or_3 = _endsWith_10;
          }
          boolean _not_3 = (!_or_3);
          _and_2 = _not_3;
        }
        if (_and_2) {
          int _length_3 = input.length();
          int _minus_1 = (_length_3 - 1);
          String _substring_1 = plural.substring(0, _minus_1);
          String _plus_1 = (_substring_1 + "ies");
          plural = _plus_1;
        } else {
          boolean _endsWith_11 = input.endsWith("s");
          boolean _not_4 = (!_endsWith_11);
          if (_not_4) {
            plural = (plural + "s");
          }
        }
      }
    }
    return plural;
  }
}
