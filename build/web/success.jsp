<%-- 
    Document   : success
    Created on : Sep 2, 2021, 9:39:49 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome ${sessionScope.userinfo} </h1>


        <a href="login.jsp"> logout
            <c:remove  var="userinfo" scope="session"></c:remove>
        </a>
        <br>
        <a href="showUser.jsp"> Show all user </a>

    </body>
</html>
