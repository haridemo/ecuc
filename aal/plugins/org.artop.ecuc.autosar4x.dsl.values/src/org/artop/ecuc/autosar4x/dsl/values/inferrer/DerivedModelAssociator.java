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
package org.artop.ecuc.autosar4x.dsl.values.inferrer;

import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;

import org.apache.log4j.Logger;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.xtext.Constants;
import org.eclipse.xtext.resource.DerivedStateAwareResource;
import org.eclipse.xtext.resource.IDerivedStateComputer;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.util.internal.Stopwatches;
import org.eclipse.xtext.util.internal.Stopwatches.StoppedTask;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;

@SuppressWarnings("restriction")
@Singleton
public class DerivedModelAssociator implements IDerivedModelAssociations, IDerivedModelAssociator, IDerivedStateComputer {

	private final static Logger LOG = Logger.getLogger(DerivedModelAssociator.class);

	@Inject
	@Named(Constants.LANGUAGE_NAME)
	private String languageName;

	@Inject
	private IDerivedModelInferrer inferrer;

	public void setInferrer(IDerivedModelInferrer inferrer) {
		this.inferrer = inferrer;
	}

	protected static class Adapter extends AdapterImpl {

		public Map<EObject, Set<EObject>> sourceToTargetMap = Maps2.newLinkedHashMapWithExpectedSize(40);
		public Map<EObject, Set<EObject>> targetToSourceMap = Maps2.newLinkedHashMapWithExpectedSize(40);

		@Override
		public boolean isAdapterForType(Object type) {
			return Adapter.class == type;
		}
	}

	protected Adapter getOrInstall(Resource resource) {
		if (!(resource instanceof XtextResource)) {
			return new Adapter();
		}
		String resourceLanguageName = ((XtextResource) resource).getLanguageName();
		if (!languageName.equals(resourceLanguageName)) {
			return new Adapter();
		}
		Adapter adapter = (Adapter) EcoreUtil.getAdapter(resource.eAdapters(), Adapter.class);
		if (adapter == null) {
			adapter = new Adapter();
			resource.eAdapters().add(adapter);
		}
		return adapter;
	}

	protected Map<EObject, Set<EObject>> sourceToTargetMap(Resource res) {
		return getOrInstall(res).sourceToTargetMap;
	}

	protected Map<EObject, Set<EObject>> targetToSourceMap(Resource res) {
		return getOrInstall(res).targetToSourceMap;
	}

	protected Resource getResource(Notifier ctx) {
		Resource res = null;
		if (ctx instanceof EObject) {
			res = ((EObject) ctx).eResource();
		} else if (ctx instanceof Resource) {
			res = (Resource) ctx;
		}
		if (res == null) {
			throw new IllegalArgumentException("Argument must either be an EObject (cotained in a resource) or a resource. But was " + ctx);
		}
		return res;
	}

	public void associate(EObject sourceElement, EObject derivedElement) {
		if (sourceElement != null) {
			checkLanguageResource(sourceElement.eResource());
			if (derivedElement != null && derivedElement.eResource() != null) {
				checkLanguageResource(derivedElement.eResource());
				checkSameResource(sourceElement.eResource(), derivedElement.eResource());
			}
			Resource resource = sourceElement.eResource();
			Map<EObject, Set<EObject>> sourceToTargetMap = sourceToTargetMap(resource);
			putIntoSmallSetMap(sourceElement, derivedElement, sourceToTargetMap);
			Map<EObject, Set<EObject>> targetToSourceMap = targetToSourceMap(resource);
			putIntoSmallSetMap(derivedElement, sourceElement, targetToSourceMap);
		}
	}

	protected void checkLanguageResource(Resource eResource) {
		if (!LOG.isDebugEnabled()) {
			return;
		}
		if (eResource instanceof XtextResource) {
			String resourceLanguageName = ((XtextResource) eResource).getLanguageName();
			if (!resourceLanguageName.equals(languageName)) {
				IllegalArgumentException e = new IllegalArgumentException("Expected language " + languageName + ", but was " + resourceLanguageName);
				LOG.debug(e.getMessage(), e);
			}
		} else if (eResource == null) {
			IllegalArgumentException e = new IllegalArgumentException(
					"You tried to associate an element to a source element, that was not contained in a resource.");
			LOG.debug(e.getMessage(), e);
		} else {
			IllegalArgumentException e = new IllegalArgumentException("Expected instanceof XtextResource, but was " + eResource);
			LOG.debug(e.getMessage(), e);
		}
	}

	protected void checkSameResource(Resource eResource, Resource eResource2) {
		if (!LOG.isDebugEnabled()) {
			return;
		}
		if (eResource != eResource2 && eResource2 != null) {
			IllegalArgumentException e = new IllegalArgumentException("Cross resource associations are not supported (resources were "
					+ eResource.getURI() + " and " + eResource2.getURI());
			LOG.debug(e.getMessage(), e);
		}
	}

	public void associatePrimary(EObject sourceElement, EObject derivedElement) {
		if (sourceElement != null) {
			checkLanguageResource(sourceElement.eResource());
			if (derivedElement != null && derivedElement.eResource() != null) {
				checkLanguageResource(derivedElement.eResource());
				checkSameResource(sourceElement.eResource(), derivedElement.eResource());
			}
			Resource resource = sourceElement.eResource();
			Map<EObject, Set<EObject>> sourceToTargetMap = sourceToTargetMap(resource);
			putIntoSmallSetMap(sourceElement, derivedElement, sourceToTargetMap, true);
			Map<EObject, Set<EObject>> targetToSourceMap = targetToSourceMap(resource);
			putIntoSmallSetMap(derivedElement, sourceElement, targetToSourceMap, true);
		}
	}

	public static <K, V> void putIntoSmallSetMap(K key, V value, Map<? super K, Set<V>> map) {
		Set<V> set = map.get(key);
		if (set == null) {
			set = new ListBasedSet<V>();
			map.put(key, set);
		}
		set.add(value);
	}

	public static <K, V> void putIntoSmallSetMap(K key, V value, Map<? super K, Set<V>> map, boolean head) {
		if (head) {
			Set<V> list = map.get(key);
			if (list == null) {
				list = new ListBasedSet<V>();
				map.put(key, list);
			}
			list.remove(value);
			((ListBasedSet<V>) list).elements.addFirst(value);
		} else {
			putIntoSmallSetMap(key, value, map);
		}
	}

	protected static class ListBasedSet<E> extends AbstractSet<E> {

		private LinkedList<E> elements = Lists.newLinkedList();

		@Override
		public boolean add(E e) {
			if (elements.contains(e)) {
				return false;
			}
			return elements.add(e);
		}

		@Override
		public Iterator<E> iterator() {
			return elements.iterator();
		}

		@Override
		public int size() {
			return elements.size();
		}

	}

	public Set<EObject> getDerivedElements(EObject sourceElement) {
		if (sourceElement == null) {
			return Collections.emptySet();
		}
		Map<EObject, Set<EObject>> map = sourceToTargetMap(sourceElement.eResource());
		Set<EObject> result = map.get(sourceElement);
		if (result != null) {
			return result;
		}
		return Collections.emptySet();
	}

	public Set<EObject> getSourceElements(EObject derivedElement) {
		if (derivedElement == null) {
			return Collections.emptySet();
		}
		// If this turns out to be too slow we should improve the internal data structure :-)
		Map<EObject, Set<EObject>> map = targetToSourceMap(derivedElement.eResource());
		Set<EObject> result = map.get(derivedElement);
		if (result != null) {
			return result;
		}
		return Collections.emptySet();
	}

	public EObject getPrimarySourceElement(EObject derivedElement) {
		if (derivedElement == null) {
			return null;
		}
		Map<EObject, Set<EObject>> map = targetToSourceMap(derivedElement.eResource());
		Set<EObject> result = map.get(derivedElement);
		if (result != null) {
			return result.iterator().next();
		}
		return null;
	}

	public void installDerivedState(final DerivedStateAwareResource resource, boolean preIndexingPhase) {
		if (resource.getContents().isEmpty()) {
			return;
		}
		EObject eObject = resource.getContents().get(0);

		StoppedTask task = Stopwatches.forTask("Derived Model inference (DerivedModelAssociator.installDerivedState)");
		task.start();
		DerivedTypeAcceptor acceptor = new DerivedTypeAcceptor(resource);
		try {
			inferrer.infer(eObject, acceptor, preIndexingPhase);
		} catch (RuntimeException e) {
			LOG.error("Error calling inferrer", e);
		}
		task.stop();
	}

	public void discardDerivedState(DerivedStateAwareResource resource) {
		cleanAssociationState(resource);
	}

	public void cleanAssociationState(Resource resource) {
		checkLanguageResource(resource);
		List<EObject> derived = Lists.newArrayList();
		EList<EObject> resourcesContentsList = resource.getContents();
		for (int i = 1; i < resourcesContentsList.size(); i++) {
			EObject eObject = resourcesContentsList.get(i);
			derived.add(eObject);
		}
		resourcesContentsList.removeAll(derived);
		sourceToTargetMap(resource).clear();
		targetToSourceMap(resource).clear();
	}

	public void removeAssociation(EObject sourceElement, EObject derivedElement) {
		Preconditions.checkArgument(sourceElement != null, "source element cannot be null");
		Preconditions.checkArgument(derivedElement != null, "derived element cannot be null");

		Resource resource = derivedElement.eResource();
		Preconditions.checkArgument(resource != null, "derived element cannot be dangling");
		Preconditions.checkArgument(resource == sourceElement.eResource(), "source and derived elements should belong to the same resource");
		checkLanguageResource(sourceElement.eResource());
		checkLanguageResource(derivedElement.eResource());
		checkSameResource(sourceElement.eResource(), derivedElement.eResource());

		Set<EObject> sources = targetToSourceMap(resource).get(derivedElement);
		if (sources != null && sources.remove(sourceElement)) {
			Set<EObject> targets = sourceToTargetMap(resource).get(sourceElement);
			targets.remove(sourceElement);
		}
	}

	public void removeAllAssociation(EObject derivedElement) {
		Preconditions.checkArgument(derivedElement != null, "derived element cannot be null");

		Resource resource = derivedElement.eResource();
		Preconditions.checkArgument(resource != null, "derived element cannot be dangling");

		checkLanguageResource(resource);

		Set<EObject> sources = targetToSourceMap(resource).remove(derivedElement);
		if (sources == null || sources.isEmpty()) {
			return;
		}
		Map<EObject, Set<EObject>> sourceToTargetMap = sourceToTargetMap(resource);
		for (EObject sourceElement : sources) {
			Set<EObject> targets = sourceToTargetMap.get(sourceElement);
			targets.remove(derivedElement);
		}
	}

	public EObject getPrimaryDerivedElement(EObject sourceElement) {
		Iterator<EObject> iterator = getDerivedElements(sourceElement).iterator();
		if (iterator.hasNext()) {
			return iterator.next();
		}
		return null;
	}

	public boolean isPrimaryDerivedElement(EObject derivedElement) {
		Set<EObject> sourceElements = getSourceElements(derivedElement);
		if (!sourceElements.isEmpty()) {
			EObject primaryDerivedElement = getPrimaryDerivedElement(sourceElements.iterator().next());
			return derivedElement.equals(primaryDerivedElement);
		}
		return false;
	}

}
