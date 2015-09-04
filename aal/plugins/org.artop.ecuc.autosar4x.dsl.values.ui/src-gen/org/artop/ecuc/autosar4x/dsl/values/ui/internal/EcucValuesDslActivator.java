/*
 * generated by Xtext
 */
package org.artop.ecuc.autosar4x.dsl.values.ui.internal;

import java.util.Collections;
import java.util.Map;

import org.apache.log4j.Logger;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.ui.shared.SharedStateModule;
import org.eclipse.xtext.util.Modules2;
import org.osgi.framework.BundleContext;

import com.google.common.collect.Maps;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Module;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class EcucValuesDslActivator extends AbstractUIPlugin {
	
	public static final String ORG_ARTOP_ECUC_AUTOSAR4X_DSL_VALUES_ECUCVALUESDSL = "org.artop.ecuc.autosar4x.dsl.values.EcucValuesDsl";
	
	private static final Logger logger = Logger.getLogger(EcucValuesDslActivator.class);
	
	private static EcucValuesDslActivator INSTANCE;
	
	private Map<String, Injector> injectors = Collections.synchronizedMap(Maps.<String, Injector> newHashMapWithExpectedSize(1));
	
	@Override
	public void start(BundleContext context) throws Exception {
		super.start(context);
		INSTANCE = this;
	}
	
	@Override
	public void stop(BundleContext context) throws Exception {
		injectors.clear();
		INSTANCE = null;
		super.stop(context);
	}
	
	public static EcucValuesDslActivator getInstance() {
		return INSTANCE;
	}
	
	public Injector getInjector(String language) {
		synchronized (injectors) {
			Injector injector = injectors.get(language);
			if (injector == null) {
				injectors.put(language, injector = createInjector(language));
			}
			return injector;
		}
	}
	
	protected Injector createInjector(String language) {
		try {
			Module runtimeModule = getRuntimeModule(language);
			Module sharedStateModule = getSharedStateModule();
			Module uiModule = getUiModule(language);
			Module mergedModule = Modules2.mixin(runtimeModule, sharedStateModule, uiModule);
			return Guice.createInjector(mergedModule);
		} catch (Exception e) {
			logger.error("Failed to create injector for " + language);
			logger.error(e.getMessage(), e);
			throw new RuntimeException("Failed to create injector for " + language, e);
		}
	}

	protected Module getRuntimeModule(String grammar) {
		if (ORG_ARTOP_ECUC_AUTOSAR4X_DSL_VALUES_ECUCVALUESDSL.equals(grammar)) {
			return new org.artop.ecuc.autosar4x.dsl.values.EcucValuesDslRuntimeModule();
		}
		
		throw new IllegalArgumentException(grammar);
	}
	
	protected Module getUiModule(String grammar) {
		if (ORG_ARTOP_ECUC_AUTOSAR4X_DSL_VALUES_ECUCVALUESDSL.equals(grammar)) {
			return new org.artop.ecuc.autosar4x.dsl.values.ui.EcucValuesDslUiModule(this);
		}
		
		throw new IllegalArgumentException(grammar);
	}
	
	protected Module getSharedStateModule() {
		return new SharedStateModule();
	}
	
}
