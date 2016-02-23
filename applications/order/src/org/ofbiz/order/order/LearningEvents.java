package org.ofbiz.order.order;

import java.util.ArrayList; 
import java.util.Collection; 
import java.util.HashMap; 
import java.util.Iterator; 
import java.util.List; 
import java.util.Map; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import org.ofbiz.base.util.UtilHttp; 
import org.ofbiz.base.util.UtilHttp;



public class LearningEvents {
	public static String processFirstForm(HttpServletRequest request, HttpServletResponse response) {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		request.setAttribute("allParams", UtilHttp.getParameterMap(request));
		request.setAttribute("submit", "Submitted");
	     return "success";
	}
	
	public static String processMultiForm(HttpServletRequest request, HttpServletResponse response) {
		Collection parsed = UtilHttp.parseMultiFormData(UtilHttp.getParameterMap(request));
		ArrayList combined = new ArrayList();
		Iterator parsedItr = (Iterator) parsed.iterator();
		int i = 0;
		while (parsedItr.hasNext()) {
			Map<String, String> record = (Map<String, String>) parsedItr.next();
			String fName = record.get("firstName");
			String lName = record.get("lastName");
			String rowSubmit = record.get("rowSubmit");
			combined.add(fName+ " " + lName);
			if (rowSubmit.equals('Y')) {   // DOES NOT WORK
				request.setAttribute("firstName_o_"+i, fName);
				request.setAttribute("lastName_o_"+i, lName);
			}
			i++;
		}
		request.setAttribute("combined", combined);
		request.setAttribute("allParams", UtilHttp.getParameterMap(request));
		request.setAttribute("submit", "Submitted");
	    return "success"; 
	}
	
}
