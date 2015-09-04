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
package org.artop.ecuc.autosar4x.dsl.values.ui.contrib

import autosar40.util.Autosar40Package
import org.eclipse.emf.ecore.EClass
import java.util.List
import org.eclipse.emf.ecore.EObject
import com.google.common.base.Function

class EcucInstanceReferenceHelper {
	
	static class State {
		var EClass type;
		var boolean star = false
		var State next

		override toString() {
			'''«type.name»«IF star»*«ENDIF» «next?.toString»'''
		}

		def State consume(List<EObject> objects, Function<EObject,EClass> mapToAutosar) {
			if (objects.isEmpty) {
				return this
			}
			val head = objects.head
			if (head == null || head.eIsProxy) {
				return this
			}
			if (type.isSuperTypeOf(mapToAutosar.apply(head))) {
				if (star) {
					return consume(objects.tail.toList, mapToAutosar)
				} else {
					return next?.consume(objects.tail.toList, mapToAutosar)
				}
			}
			if (star) {
				return next?.consume(objects, mapToAutosar)
			}

			this
		}

		def List<EClass> followUps() {
			if (star) {
				val r = newArrayList(type)
				if (next != null) {
					r.addAll(next.followUps)
				}
				r
			} else {
				newArrayList(type)
			}
		}

	}

	def static State toState(String s) {
		s.split("\\s+").toList.toState
	}

	def static State toState(List<String> l) {
		if (l.isEmpty) {
			null
		} else {
			val state = new State
			var type = l.head
			if (type.endsWith("*")) {
				type = type.substring(0, type.length - 1)
				state.star = true
			}
			Autosar40Package.eINSTANCE.extendedMetaData
			val EClass eClass = Autosar40Package.eINSTANCE.getExtendedMetaData().getType(type) as EClass
			state.type = eClass
			state.next = l.tail.toList.toState
			return state
		}
	}
	
}