/**
 * <copyright>
 *
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     See4sys - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl;

import java.util.List;

import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.DelegatingEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

/**
 *
 */
public abstract class AbstractFilteringEList<E> extends DelegatingEList<E> {

	private static final long serialVersionUID = 1L;

	private EObject targetOwner;
	private EStructuralFeature targetFeature;

	public AbstractFilteringEList(EObject targetOwner, EStructuralFeature targetFeature) {
		Assert.isNotNull(targetOwner);
		Assert.isLegal(targetFeature instanceof EReference);

		this.targetOwner = targetOwner;
		this.targetFeature = targetFeature;
	}

	/*
	 * @see org.eclipse.emf.common.util.DelegatingEList#delegateList()
	 */
	@Override
	protected List<E> delegateList() {
		EList<E> filteredEList = new BasicEList<E>();
		for (E item : getUnfilteredEList()) {
			if (accept(item)) {
				filteredEList.add(item);
			}
		}
		return filteredEList;
	}

	@SuppressWarnings("unchecked")
	protected List<E> getUnfilteredEList() {
		return (List<E>) targetOwner.eGet(targetFeature);
	}

	@Override
	protected void delegateAdd(int index, E object) {
		// Calculate index in raw list by getting 'rawIndex' of the element at 'index'
		int rawIndex;
		if (index == delegateSize()) {
			// Adding after last element
			rawIndex = getUnfilteredEList().indexOf(delegateGet(index - 1)) + 1;
		} else {
			// Adding inside list - delegateGet should also give us the right exceptions here
			rawIndex = getUnfilteredEList().indexOf(delegateGet(index));
		}

		// Add the new object in the raw list
		getUnfilteredEList().add(rawIndex, object);
	}

	@Override
	protected E delegateRemove(int index) {
		// Retrieve the index of this object in delegateList() and remove it. Then remove the object also in the
		// filtering list.
		E object = delegateGet(index);
		getUnfilteredEList().remove(object);
		return object;
	}

	protected abstract boolean accept(E item);
}
