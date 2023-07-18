<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Acdm List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2>Acdm List</h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>학력 시퀀스</th>
				<th>회원 시퀀스</th>
				<th>학교명</th>
				<th>입학일</th>
				<th>졸업일</th>
				<th>전공학과</th>
				<th>학점</th>
				<th>상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="acdm" items="${acdmList}">
				<tr>
					<td>${acdm.acdm_seq}</td>
					<td>${acdm.user_seq}</td>
					<td>${acdm.acdm_name}</td>
					<td>${acdm.acdm_stdtsrvc}</td>
					<td>${acdm.acdm_eddtsrvc}</td>
					<td>${acdm.acdm_major}</td>
					<td>${acdm.acdm_grades}</td>
					<td>${acdm.acdm_state}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>
