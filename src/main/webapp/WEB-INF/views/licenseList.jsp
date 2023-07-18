<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>License List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>License List</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>자격증 시퀀스</th>
                <th>회원 시퀀스</th>
                <th>자격명</th>
                <th>취득일자</th>
                <th>발행기관</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="license" items="${licenseList}">
                <tr>
                    <td>${license.lic_seq}</td>
                    <td>${license.user_seq}</td>
                    <td>${license.lic_name}</td>
                    <td>${license.lic_date}</td>
                    <td>${license.lic_organization}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>