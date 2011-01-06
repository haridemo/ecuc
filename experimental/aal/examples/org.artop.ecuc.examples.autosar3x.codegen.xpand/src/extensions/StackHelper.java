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
