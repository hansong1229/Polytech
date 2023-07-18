<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Employment List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Employment List</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Sequence</th>
                <th>Title</th>
                <th>Category</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Content</th>
                <th>File Path</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employment" items="${employmentList}">
                <tr>
                    <td>${employment.epl_seq}</td>
                    <td>${employment.epl_title}</td>
                    <td>${employment.epl_cate}</td>
                    <td>${employment.epl_stdt}</td>
                    <td>${employment.epl_eddt}</td>
                    <td>${employment.epl_content}</td>
                    <td>${employment.epl_filepath}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
