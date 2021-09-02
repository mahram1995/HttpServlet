<%-- 
    Document   : StudentInfo
    Created on : Sep 1, 2021, 9:17:56 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String d1= (String)request.getAttribute("FirstName");
            String d2= (String)request.getAttribute("LastName");
        %>
        <h1>My Name is <%= d1+ " " + d2 %></h1>
    </body>
</html>
