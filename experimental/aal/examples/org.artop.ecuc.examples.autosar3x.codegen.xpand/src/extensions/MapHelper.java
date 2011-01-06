package extensions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * A service dealing with maps, based on MapServices.
 */
public final class MapHelper {


	/**
	 * WeakHashMap because we don't want to track object live cycle.
	 */
	private final static Map<Object, Map<String, Object>> map = new WeakHashMap<Object, Map<String, Object>>();

	private final static Set<String> spy = new HashSet<String>();

	/**
	 * Clears the full map.
	 */
	public static void mapClearAll(Object current) {
		map.clear();
		if(!spy.isEmpty())
			System.out.println("mapClearAll");

	}

	/**
	 * Perform implicit conversion between List of 1 element and the element
	 */
	private static Object getValue(Object current) {
		
		if (current instanceof List) {
			List<Object> list = (List<Object>)current;
			if (list.size() == 1) {
				return list.get(0);
			}	
		}
		return current;
	}

	/**
	 * Clears the map of the current node.
	 */
	public static void mapClear(Object current) {
		Map<String, Object> m = map.get(getValue(current));
		if (m != null)
			m.clear();
		if(!spy.isEmpty())
			System.out.println("mapClear:" + current);
	}

	/**
	 * Puts value with key for the current node.
	 */
	public static void mapPut(Object current, String key, Object value) {
		Map<String, Object> m = map.get(getValue(current));
		if (m == null) {
			m = new HashMap<String, Object>();
			map.put(getValue(current), m);
		}	
		m.put(key, value);
		if (spy.contains(key)) {
			System.out.println("mapPut(" + key + "): " + current + " = " + value);
		}	
	}

	/**
	 * Returns the content of the key entry for current node map.
	 */
	public static Object mapGet(Object current, String key) {
		Map<String, Object> m = map.get(getValue(current));
		Object n = null;
		if (m != null) {
			n = m.get(key);
		}	
		if (spy.contains(key)) {
			System.out.println("mapGet(" + key + "): " + current + " = " + n);
		}	
		
		/* check isn't done in the original code		
 		if (n instanceof List && ((List)n).size() == 1) {
			return ((List)n).get(0);
		}*/
		return n;
	}
	

	/**
	 * Returns the content of the key entry for current node map.
	 */
	public static List<Object> mapGetList(Object current, String key) {
		Map<String, Object> m = map.get(getValue(current));
		Object n = null;
		if (m != null) {
			n = m.get(key);
		}	
		if (spy.contains(key)) {
			System.out.println("mapGet(" + key + "): " + current + " = " + n);
		}	
		if (n instanceof List) {
			return (List)n;
		} 
		return Arrays.asList(n);
	}

	/**
	 * Appends the value to the list stored in the key value for current node.
	 */
	public static void mapAdd(Object current, String key, Object value) {
		if (current == null)
			return;
		if (value == null)
			return;
		//Object o = value.getValue();
		Object oldValue = mapGet(current, key);
		if (oldValue == null) {
			mapPut(current, key, value);
		} else if (oldValue instanceof List) {
			@SuppressWarnings("unchecked")
			List<Object> list = (List) oldValue;
			if (!list.contains(value)) {
				list.add(value);
			}
		} else if (oldValue != value) {
			// final boolean b = EcoreUtil.equals((EObject)o,
			// (EObject)t.getValue());
			List<Object> list = new ArrayList<Object>();
			list.add(oldValue);
			list.add(value);
			mapPut(current, key, list);
		}
	}

	public static Object mapSpyOn(Object current, String key) {
		spy.add(key);
		return current;
	}

	public static Object mapSpyOff(Object current, String key) {
		spy.remove(key);
		return current;
	}
}
