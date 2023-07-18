<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Career List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Career List</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>경력 시퀀스</th>
                <th>회원 시퀀스</th>
                <th>회사 및 기간 명</th>
                <th>취직일</th>
                <th>퇴사일</th>
                <th>직책</th>
                <th>상태</th>
                <th>주요업무</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="career" items="${careerList}">
                <tr>
                    <td>${career.career_seq}</td>
                    <td>${career.user_seq}</td>
                    <td>${career.career_company}</td>
                    <td>${career.career_dtepmt}</td>
                    <td>${career.career_dtrtmt}</td>
                    <td>${career.career_position}</td>
                    <td>${career.career_state}</td>
                    <td>${career.career_mainbsns}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>