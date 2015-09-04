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
 */package org.artop.ecuc.autosar4x.dsl.values.scoping

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucparameterdef.EcucChoiceContainerDef
import autosar40.ecucparameterdef.EcucChoiceReferenceDef
import autosar40.ecucparameterdef.EcucContainerDef
import autosar40.ecucparameterdef.EcucEnumerationParamDef
import autosar40.ecucparameterdef.EcucForeignReferenceDef
import autosar40.ecucparameterdef.EcucInstanceReferenceDef
import autosar40.ecucparameterdef.EcucModuleDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.ecucparameterdef.EcucReferenceDef
import java.util.ArrayList
import java.util.List
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference
import org.artop.ecuc.autosar4x.dsl.values.naming.AutosarQualifiedNameProvider
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.naming.QualifiedName
import org.eclipse.xtext.scoping.IScope
import org.eclipse.xtext.scoping.Scopes
import org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider

/**
 * This class contains custom scoping description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html#scoping
 * on how and when to use it 
 *
 */
class EcucValuesDslScopeProvider extends AbstractDeclarativeScopeProvider {
	
	@Inject
	private EcucReferenceValueScopingContributionHelper refContribHelper
		
	@Inject
	AutosarQualifiedNameProvider autosarQualifiedNameProvider
	
	@Inject
	private EcucReferenceValueContainerReferenceScopingHelper data
	
	def IScope scope_Container_definition(Container ctx, EReference r) {
		val c = ctx.eContainer();
		if (c instanceof Container) {
			val EcucContainerDef d = c.getDefinition();
			if (d instanceof EcucParamConfContainerDef) {
				return Scopes.scopeFor(d.getSubContainers(), [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE);
			} else if (d instanceof EcucChoiceContainerDef) {
				val List<EcucParamConfContainerDef> scope = new ArrayList<EcucParamConfContainerDef>();
				for (EcucParamConfContainerDef choice : d.getChoices()) {
					scope.add(choice);
				}
				return Scopes.scopeFor(scope, [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE);
			}
		} else if (c instanceof Module) {
			val EcucModuleDef d = c.getDefinition();
			return Scopes.scopeFor(d.getContainers(), [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE);
		}
		
		return IScope.NULLSCOPE;
	}
	
	def IScope scope_Parameter_definition(Parameter p, EReference r) {
		val c = p.eContainer
		if (c instanceof Container) {
			val def = c.definition
			if (def instanceof EcucParamConfContainerDef) {
				return Scopes.scopeFor(def.parameters, [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE)
			}
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_Reference_definition(Reference ref, EReference r) {
		val c = ref.eContainer
		if (c instanceof Container) {
			val def = c.definition
			if (def instanceof EcucParamConfContainerDef) {
				return Scopes.scopeFor(def.references.filter[!(it instanceof EcucInstanceReferenceDef)], [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE)
			}
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_InstanceReference_definition(InstanceReference ref, EReference r) {
		val c = ref.eContainer
		if (c instanceof Container) {
			val def = c.definition
			if (def instanceof EcucParamConfContainerDef) {
				return Scopes.scopeFor(def.references.filter(EcucInstanceReferenceDef), [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE)
			}
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_EnumValue_literal(Parameter p, EReference r) {
		val def = p.definition
		if (def instanceof EcucEnumerationParamDef) {
			return Scopes.scopeFor(def.literals, [o|QualifiedName.create(o.shortName)], IScope.NULLSCOPE)
		}
		return IScope.NULLSCOPE
	}
	
	def IScope getLocalEcucContainerValues(Reference ctx, EReference r) {
		val definiton = ctx.definition
		val containers = data.getPossibleContainerDefNames(definiton)
		val scope = <EObject>newArrayList()
		
		val iter = ctx.eResource.allContents
		while(iter.hasNext) {
			val next = iter.next
			if (next instanceof Model) {
				iter.prune
			} else if (next instanceof EcucContainerValue) {
				if (next.definition != null) {
					val name = autosarQualifiedNameProvider.getFullyQualifiedName(next.definition)
					if (containers.contains(name)) {
						scope.add(next)
					}
				}
			}
		}

		val result = Scopes.scopeFor(scope, autosarQualifiedNameProvider, IScope.NULLSCOPE)
		result
		
	}
	
	def IScope scope_Context_start(InstanceReference ctx, EReference r) {
		val def = ctx.definition
		if (def != null) {
			val result = refContribHelper.getContextScope(def, r, ctx.eResource, newArrayList)
			return result
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_Context_start(Context ctx, EReference r) {
		val ref = EcoreUtil2.getContainerOfType(ctx, InstanceReference)
		val def = ref.definition
		if (def != null) {
			val result = refContribHelper.getContextScope(def, r, ctx.eResource, newArrayList)
			return result
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_ContextChain_object(ContextChain ctx, EReference r) {
		val idx = ctx.prev.prevs
		val ref = EcoreUtil2.getContainerOfType(ctx, InstanceReference)
		val def = ref.definition
		if (def != null) {
			
			val result = refContribHelper.getContextScope(def, r, ctx.eResource, idx)
			return result
		}
		return IScope.NULLSCOPE
	}
	
	def dispatch List<EObject> prevs(Context ctx) {
		newArrayList(ctx.start)	
	}
	
	def dispatch List<EObject> prevs(ContextChain ctx) {
		val r = newArrayList
		r.addAll(ctx.prev.prevs)
		r.add(ctx.object)
		r
	}
	
	def IScope scope_InstanceReferenceValue_target(InstanceReference ctx, EReference r) {
		val def = ctx.definition
		if (def != null) {
			val result = refContribHelper.getScope(def, r, ctx.eResource)
			return result
		}
		return IScope.NULLSCOPE
	}
	
	def IScope scope_ReferenceValue_container(Reference ctx, EReference r) {
		try {
			val def = ctx.definition
			if (def instanceof EcucReferenceDef) {
				val result = new DelegateScope(refContribHelper.getScope(def, r, ctx.eResource),getLocalEcucContainerValues(ctx,r))
				result
			} else if (def instanceof EcucChoiceReferenceDef) {
				val result = new DelegateScope(refContribHelper.getScope(def, r, ctx.eResource),getLocalEcucContainerValues(ctx,r))
				result
			} else if (def instanceof EcucForeignReferenceDef) {
				val result =  refContribHelper.getScope(def, r, ctx.eResource)
				result
			} else {
				delegateGetScope(ctx,r)
			}
		} catch(Exception e) {
			e.printStackTrace
			IScope.NULLSCOPE
		}
	}
}
