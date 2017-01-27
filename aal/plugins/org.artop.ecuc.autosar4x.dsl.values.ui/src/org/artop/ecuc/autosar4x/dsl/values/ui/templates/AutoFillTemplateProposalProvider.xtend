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
package org.artop.ecuc.autosar4x.dsl.values.ui.templates

import autosar40.ecucparameterdef.EcucAbstractStringParamDef
import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucBooleanParamDef
import autosar40.ecucparameterdef.EcucChoiceContainerDef
import autosar40.ecucparameterdef.EcucEnumerationParamDef
import autosar40.ecucparameterdef.EcucFloatParamDef
import autosar40.ecucparameterdef.EcucIntegerParamDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.ecucparameterdef.EcucParameterDef
import javax.inject.Inject
import javax.inject.Singleton
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.eclipse.jface.text.templates.ContextTypeRegistry
import org.eclipse.jface.text.templates.Template
import org.eclipse.jface.text.templates.TemplateContext
import org.eclipse.jface.text.templates.persistence.TemplateStore
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ITemplateAcceptor
import org.eclipse.xtext.ui.editor.templates.ContextTypeIdHelper
import org.eclipse.xtext.ui.editor.templates.DefaultTemplateProposalProvider
import org.eclipse.xtext.ui.editor.templates.XtextTemplateContext

@Singleton
class AutoFillTemplateProposalProvider extends DefaultTemplateProposalProvider {
	
	@Inject
	new(TemplateStore templateStore, ContextTypeRegistry registry, ContextTypeIdHelper helper) {
		super(templateStore, registry, helper)
	}
	
	// create autofill template dynamically
	override protected createTemplates(TemplateContext templateContext, ContentAssistContext context, ITemplateAcceptor acceptor) {
		if (templateContext instanceof XtextTemplateContext) {			
			if("org.artop.ecuc.autosar4x.dsl.values.EcucValuesDsl.Container" == templateContext.contextType.id) {
				val ctx = templateContext.contentAssistContext.currentModel
		
				if (ctx instanceof Module) {
					if (ctx.container.size == 0) {
					val pattern = '''
				«FOR c : ctx.definition.containers»
				container «c.shortName» : ${«c.shortName»} = {
					
				}
				«ENDFOR»
				'''
					val t = new Template("AutoFill","AutoFill with Step-Through", templateContext.contextType.id,pattern,true)
					acceptor.accept(createProposal(t, templateContext, context, getImage(t), getRelevance(t)))
					
					}
				} else if (ctx instanceof Container) {
					if (ctx.elements.size == 0) {
					val def = ctx.definition
					if (def instanceof EcucParamConfContainerDef) {
					val pattern = '''
				«FOR c : def.subContainers»
				container «c.shortName» : ${«c.shortName»} = {
					
				}
				«ENDFOR»
				«FOR p : def.parameters»
				param «p.shortName» = «p.valueTemplate»
				«ENDFOR»
«««				Refs gehen nicht schön wg Scoping Context = container
«««				«FOR r : def.references»
«««				ref «r.shortName» = ${«r.shortName»:CrossReference(ReferenceValue.container)}
«««				«ENDFOR»
				'''
					val t = new Template("AutoFill","AutoFill with Step-Through", templateContext.contextType.id,pattern,true)
					acceptor.accept(createProposal(t, templateContext, context, getImage(t), getRelevance(t)))
					
					} else if (def instanceof EcucChoiceContainerDef) {
						val pattern = '''
				«FOR c : def.choices»
				container «c.shortName» : ${«c.shortName»} = {
					
				}
				«ENDFOR»
				'''
					val t = new Template("AutoFill","AutoFill with Step-Through", templateContext.contextType.id,pattern,true)
					acceptor.accept(createProposal(t, templateContext, context, getImage(t), getRelevance(t)))
					}
					
					}
				}					
			}
		} else {
		 //TODO
		}
		super.createTemplates(templateContext, context, acceptor)
	}
	
	def dispatch String valueTemplate(EcucEnumerationParamDef d) {
		var literals = d.literals.map["'"+shortName+"'"].join(",")
		if (literals.empty) {
			literals = if (d.defaultValue != null && !d.defaultValue.empty) {
				d.defaultValue
			} else {
				"TDB"
			}
		}
		'''.${value_enum_literal_«d.shortName»:EnumLiteral(«literals»)}'''
	}
	
	def dispatch String valueTemplate(EcucIntegerParamDef d) {
		var defaultValue = d.defaultValue?.mixedText
		if (defaultValue == null || defaultValue.empty) {
			defaultValue = "1"
		}
		'''${value_int_«d.shortName»:IntLiteral(«defaultValue»)}'''
	}
	
	def dispatch String valueTemplate(EcucFloatParamDef d) {
		var defaultValue = d.defaultValue?.mixedText
		if (defaultValue == null || defaultValue.empty) {
			defaultValue = "1.0"
		}
		'''${value_float_«d.shortName»:FloatLiteral(«defaultValue»)}'''
	}
	
	def dispatch String valueTemplate(EcucBooleanParamDef d) {
		var defaultValue = d.defaultValue?.mixedText
		if (defaultValue == null || defaultValue.empty) {
			defaultValue = "false"
		}
		switch(defaultValue) {
			case "1": defaultValue = "true"
			case "TRUE": defaultValue = "true"
			case "true": defaultValue = "true"
			case "0": defaultValue = "false"
			case "false": defaultValue = "false"
			case "FALSE": defaultValue = "false"
		}
		'''${value_boolean_«d.shortName»:BooleanLiteral(«defaultValue»)}'''
	}
	
	def dispatch String valueTemplate(EcucAbstractStringParamDef d) {
		'''"${value_string_«d.shortName»:StringLiteral(value)}"'''
	}
	
	def dispatch String valueTemplate(EcucAddInfoParamDef d) {
		'''"${value_string_«d.shortName»:StringLiteral(documentation)}"'''
	}
	
	def dispatch String valueTemplate(EcucParameterDef d) {
		'''"TODO"'''
	}
	
}