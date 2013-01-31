<%-- 
    Document   : result
    Created on : Jan 30, 2013, 6:05:55 PM
    Author     : purban1
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results Page</title>
    </head>
    <body>
        <h1>The results are in!</h1>
        <%
            Object calctype = request.getAttribute("calctype");
            String sCalcType = "Not unavailable."; // default message
            Object result = request.getAttribute("result");
            String sResult = "could not do calculation because of an error."; // default message
           
            if(calctype != null) {
                sCalcType = calctype.toString();
            }
            if(result != null) {
                sResult = result.toString();
            }
            
            out.println("<p>Calculation Type: " + sCalcType + "</p>");
            out.println("<p>Result: " + sResult + "</p>");
            
        %>
    </body>
</html>
