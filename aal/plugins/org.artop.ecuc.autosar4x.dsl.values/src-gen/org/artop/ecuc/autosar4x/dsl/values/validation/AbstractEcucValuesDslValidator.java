/*
 * generated by Xtext
 */
package org.artop.ecuc.autosar4x.dsl.values.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;

public class AbstractEcucValuesDslValidator extends org.eclipse.xtext.validation.AbstractDeclarativeValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>();
	    result.add(org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage.eINSTANCE);
		return result;
	}
}
