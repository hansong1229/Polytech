<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	<jsp:include page="../common/header.jsp"></jsp:include>
		<h2>Spring MVC03</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Panel Heading</div>
			<div class="panel-body">Panel Content</div>
			<div class="panel-footer">스프링게시판-김한송</div>
			<form action="${contextPath}/testSubmit.do" method="post">
			<input type="text" name="test_name" value="이름">
			<br>
			<input type="text" name="test_age" value="나이">
			<br>
			<input type="text" name="test_state" value="상태">
			<br>
			<input type="text" name="test_state" value="상태">
			<br>
			<input type="text" name="test_state" value="상태">
			<br>
			<input type="submit" value="제출">
			</form>
		</div>
	</div>

</body>
</html>
