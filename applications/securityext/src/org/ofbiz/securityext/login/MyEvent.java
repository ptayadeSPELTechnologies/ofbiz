package org.ofbiz.securityext.login;


//Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

//Extend HttpServlet class
public class MyEvent extends HttpServlet {

// Method to handle GET method request.
public void doGet(HttpServletRequest request,
                 HttpServletResponse response)
         throws ServletException, IOException
{
   // Set response content type
   response.setContentType("text/html");

   PrintWriter out = response.getWriter();
	  String title = "HTTP Header Request Example";
   String docType =
   "<!doctype html public \"-//w3c//dtd html 4.0 " +
   "transitional//en\">\n";
   out.println(docType +
     "<html>\n" +
     "<head><title></title></head>\n"+
     "<body bgcolor=\"#f0f0f0\">\n" +
     "<h1 align=\"center\">response</h1>\n" +
     "<table width=\"100%\" border=\"1\" align=\"center\">\n" +
     "<tr bgcolor=\"#949494\">\n" +
     "<th>Header Name</th><th>Header Value(s)</th>\n"+
     "</tr>\n");
   
   out.println();
   


}
// Method to handle POST method request.
public void doPost(HttpServletRequest request,
                  HttpServletResponse response)
   throws ServletException, IOException {
  doGet(request, response);
}
}