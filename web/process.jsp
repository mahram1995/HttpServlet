<%-- 
    Document   : process
    Created on : Sep 2, 2021, 9:40:49 AM
    Author     : HP
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <c:if test="${empty param.name || empty param.password}">
            <c:redirect url="login.jsp">
                <c:param name="errmsg" value="User Name or Password empty"/>
            </c:redirect>
            <c:redirect url="registrationForm.jsp">
                <c:param name="errmsg" value="User Name or Password empty"/>
            </c:redirect>
        </c:if>

        <c:if test="${not empty param.name and not empty param.password}">
            <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_application" user="root" password="6660052"></sql:setDataSource>
            <sql:query dataSource="${ds}" var="data">
                SELECT count(*) as a FROM web_application.userinfo WHERE name='${param.name}' and password='${param.password}'
            </sql:query>
            <c:forEach var="row" items="${data.rows}">
                <c:choose>
                    <c:when test="${row.a > 0}">
                        <c:set var="userinfo" value="${param.name}" scope="session"/>
                        <c:redirect url="success.jsp"/>                           
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="login.jsp">
                            <c:param name="errmsg" value="name or password does not match"/>
                        </c:redirect>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>



    </body>
</html>
