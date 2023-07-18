<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Index</th>
            <th>ID</th>
            <th>Password</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Profile</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="member" items="${members}">
            <tr>
                <td>${member.memIdx}</td>
                <td>${member.memID}</td>
                <td>${member.memPassword}</td>
                <td>${member.memName}</td>
                <td>${member.memAge}</td>
                <td>${member.memGender}</td>
                <td>${member.memEmail}</td>
                <td>${member.memProfile}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>