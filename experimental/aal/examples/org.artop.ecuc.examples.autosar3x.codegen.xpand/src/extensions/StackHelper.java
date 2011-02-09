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
package extensions;

import java.util.Stack;

public final class StackHelper {

	private final static Stack<Object> stack = new Stack<Object>();
	
	public static void push(Object obj) {
		stack.push(obj);
	}
	
	public static Object peek() {
		return stack.peek();
	}
	
	public static Object pop() {
		return stack.pop();
	}

}
