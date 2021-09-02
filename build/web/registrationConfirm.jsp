<%-- 
    Document   : registrationConfirm
    Created on : Sep 2, 2021, 10:55:44 AM
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
        <c:if test="${empty param.name || empty param.password || empty param.email|| empty param.id|| empty param.mobile}">
            <c:redirect url="registrationForm.jsp">
                <c:param name="errmsg" value="Fill up all required filed"/>
            </c:redirect>
        </c:if>

        <c:if test="${not empty param.name and not empty param.password and not empty param.email and not empty param.id and not empty param.mobile}">
            <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_application" user="root" password="6660052"></sql:setDataSource>
            <sql:update dataSource="${ds}">
                insert into userinfo value(?,?,?,?,?)
                <sql:param value="${param.id}"></sql:param>
                <sql:param value="${param.name}"></sql:param>
                <sql:param value="${param.email}"></sql:param>
                <sql:param value="${param.mobile}"></sql:param>
                <sql:param value="${param.password}"></sql:param>
            </sql:update>
                
            <%-- after succesfull registration page redirect ot login page --%>
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>

    </body>
</html>
