package org.ofbiz.order.order;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class ChapterNav {
	public static String doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	      // Set the response message's MIME type
	      response.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = response.getWriter();
	      int chapter_unlocked=5;
	 
	      // Write the response message, in an HTML page
	      String html="";
	      
	     html+= "<div class='btn-group btn-group-justified'>";
                      
	      int[] page={0,5,9,15,19,27,35,41,49,57};
	      try {	
	    	 for(int i=1;i<chapter_unlocked+1;i++){
	    		 html+="<A href='#/page/"+page[i]+"' onClick='audio()' class='btn btn-success unlocked'>Chapter "+i+"</A>";

	    		 
	    	 }
	    	 if(chapter_unlocked<8)
	    	 html+="<a href='#/page/"+page[chapter_unlocked+1]+"' onClick='audio()' class='btn btn-danger '>Question "+chapter_unlocked+"</a>";

	         out.println(html);

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         out.close();  // Always close the output writer
	      }
	    return "success";
	}
}