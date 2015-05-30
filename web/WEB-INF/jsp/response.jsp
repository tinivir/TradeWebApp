<%-- 
    Document   : response
    Created on : May 20, 2015, 8:45:25 PM
    Author     : tiniv_000
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ol>
            <li><%@include file="test_jasper1.html" %></li>
              <% File img = new File("E:/Documents/NetBeansProjects/WebApplication1/web/WEB-INF/jsp/img_0_0_0.png");
              
       %>


<img src="img.toString()%>" >
        </ol>

        <h3>test_jasper1.html</h3>
        <div style="border: 2px solid black;">
        <c:import var="test_jasper1" url="/test_jasper1.html" />
        <c:out value="${test_jasper1}" escapeXml="false" />
        </div>
        
    </body>
</html>
