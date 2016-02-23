package org.ofbiz.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyEvents {
	public static String MyEvent(HttpServletRequest req, HttpServletResponse res ){
		
		System.out.println("I am called");
		return "success";
		
	}
	
}