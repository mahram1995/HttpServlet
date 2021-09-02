<%-- 
    Document   : showUser
    Created on : Sep 2, 2021, 12:23:23 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            tr:nth-child(odd){background: #cccccc}
            tr:nth-child(even){background: #ffffff}
            table{border-collapse: collapse}
            td,th{border: 1px solid black; padding: 5px}
            th{text-align: center}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>All users </h1>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_application" user="root" password="6660052"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="data">
            select * from userinfo
        </sql:query>
        <table>
            <tr> 
                <th>ID </th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
               
            </tr>
            <c:forEach var="row" items="${data.rows}"> <%--for iterate --%>
                <tr>
                    <td>${row.id}</td>
                    <td>${row.name}</td>
                    <td>${row.email}</td>
                    <td>${row.mobile}</td>
                    
                </tr>
            </c:forEach> 
        </table>    
    </body>
</html>
