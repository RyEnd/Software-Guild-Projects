<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Users</title>
    </head>
    <body>
        <h1>Users</h1>
        <a href="displayUserForm">Add a User</a><br/>
        <hr/>
        <c:forEach var="user" items="${users}">
            <c:out value="${user.userName}"/> |
            <a href="deleteUser?username=${user.userName}">Delete</a><br/><br/>
        </c:forEach>
    </body>
</html>