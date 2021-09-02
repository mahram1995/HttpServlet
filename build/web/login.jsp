<%-- 
    Document   : loin
    Created on : Sep 2, 2021, 9:40:22 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
            div{ margin: auto; margin-top: 10%;  padding-top: 10px; padding-bottom: 10px;  background-color: #99ff99; height: auto; width: 300px}
            h1{text-align: center}
            h4{text-align: center}
            input{margin-left: 50px; height: 25px; width: 200px}
            h5{text-align: center}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
       
    </head>
    <body>

        <div>
            <h1> Login   </h1>
            <form action="process.jsp" method="post">
                <table >
                    <tr>
                        <td> <input type="text" name="name" placeholder="name"/></td>
                    </tr>
                    <tr>
                        <td> <input type="password" name="password" placeholder="password"/></td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="login"/></td>
                    </tr>

                </table>
            </form>

            <a  href="registrationForm.jsp"> <h5> Registration for new user</h5>  </a>
            <%-- code  show message if id and passwor nill or incorrect --%>
        <c:if test="${not empty param.errmsg}">
            <h4> <c:out value="${param.errmsg}"></c:out> </h4>
        </c:if>
        </div>


        
    </body>
</html>
