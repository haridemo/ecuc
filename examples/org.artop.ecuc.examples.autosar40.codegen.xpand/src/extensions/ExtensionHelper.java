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

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class ExtensionHelper {
	private final static SimpleDateFormat dateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
	
	public final static String dateString() {
		return dateFormat.format(new Date());
	}
	
	public final static String getProjectDir() {
		return System.getProperty("user.dir");
	}
	
	public final static String toHex(Integer base) {
		return Integer.toHexString(base);
	}
	public final static String toHex(String base) {
		StringBuffer buffer = new StringBuffer();
	     int intValue;
	     for(int x = 0; x < base.length(); x++)
	         {
	         int cursor = 0;
	         intValue = base.charAt(x);
	         String binaryChar = new String(Integer.toBinaryString(base.charAt(x)));
	         for(int i = 0; i < binaryChar.length(); i++)
	             {
	             if(binaryChar.charAt(i) == '1')
	                 {
	                 cursor += 1;
	             }
	         }
	         if((cursor % 2) > 0)
	             {
	             intValue += 128;
	         }
	         buffer.append(Integer.toHexString(intValue) + " ");
	     }
	     return buffer.toString();
	}
	
	public final List<Integer> asListOfInteger(Integer maxValue) {
		List<Integer> ret = new ArrayList<Integer>();
		for (int i=0; i<maxValue; i++) {
			ret.add(i);
		}
		return ret;
	}
}
