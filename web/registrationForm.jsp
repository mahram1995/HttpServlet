<%-- 
    Document   : registrationForm
    Created on : Sep 2, 2021, 9:32:06 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            div{ margin: auto; margin-top: 7%; padding-top: 10px;  background-color: #99ff99; height: 400px; width: 355px}
            input{margin-left: 50px; width: 250px; height: 25px}
            h2{text-align: center}
            h4{text-align: center}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div>
            <form action="registrationConfirm.jsp">
                <h2>Registration form</h2>

                <input type="text" name="id" placeholder="id"/><br><br>
                <input type="text" name="name" placeholder="Name"/><br><br>
                <input type="text" name="email" placeholder="Email"/><br><br>
                <input type="text" name="mobile" placeholder="Mobile"/><br><br>
                <input type="text" name="password" placeholder="Password"/><br><br>
                <input type="submit" value="Submit"/>

            </form>
            <c:if test="${not empty param.errmsg}">
                <h4> <c:out value="${param.errmsg}"></c:out> </h4>
            </c:if>
        </div>

    </body>
</html>
