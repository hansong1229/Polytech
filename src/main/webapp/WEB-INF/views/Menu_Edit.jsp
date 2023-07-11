<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>관리자 페이지 - 폴리테크</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
	<link rel="icon" type="image/x-icon" href="${contextPath}/resources/assets/img/favicon.png" />
	<script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/datatables/datatables-simple-demo.js"></script>
    
    <style>
    	table, th, tr, td{
    	border-collapse : collapse;
    	border:1px solid black;
    	}
    	th{
    	background-color: #0061f2;
    	color:#ffffff;
    	opacity:0.7;
    	}
    	button{
    	border:none;
    	height: 30px;
	    border: 0;
	    border-radius: 5px;
	    padding: 0 10px;
	    font-weight: bold;
	    font-size: 1.09em;
	    vertical-align: middle;
	    color:#ffffff;
    	}
    	td button{
    	background: #3f51b5;
    	}
    	th, td{
    	padding:5px;
    	}
    	input{
    	width:100%;
    	}
    	table{
    	width:100%;
    	text-align: center;
    	}
    	.menu_add_btn{
    	background-color: #9eacc6;
    	}
    	.menu_check_btn{
    	background-color: #ff4081;
    	}
    	
    	
    </style>
</head>

<body class="nav-fixed">

	<jsp:include page="common/header.jsp"></jsp:include>
	<div id="layoutSidenav">
	<jsp:include page="common/snb.jsp"></jsp:include>

	

		<div id="layoutSidenav_content">
			<main>
				<!-- 메인페이지 header부분 : 없어도 되고 넣으면 카드형식  -->
				<!-- <header class="py-10 mb-4 bg-gradient-primary-to-secondary">
					<div class="container-xl px-4">
						<div class="text-center">
							<h1 class="text-white">관리자 페이지</h1>
						</div>
					</div>
				</header> -->
				<!-- Main page content-->
				<div class="card mb-4">
                            <div class="card-header">
                            메뉴 설정
                            <span style="float:right;">
                            <button class="menu_add_btn">메뉴 추가</button>
                            <button class="menu_check_btn">확인</button>
                            </span>
                            </div>
                            <div class="card-body">
                                <table>
	                                <tbody>
	                                	<tr>
		                                	<th style="width:300px">메뉴 이름</th>
		                                	<th style="width:1000px">링크</th>
		                                	<th style="width:150px">관리</th>
	                                	</tr>
	                                	<tr>
	                                		<td><input type="text"></td>
	                                		<td><input type="text"></td>
	                                		<td>
		                                		<button>추가</button>
		                                		<button style="opacity:0.5">삭제</button>
	                                		</td>
	                                	</tr>
	                                	<tr>
	                                		<td><input type="text"></td>
	                                		<td><input type="text"></td>
	                                		<td>
		                                		<button>추가</button>
		                                		<button style="opacity:0.5">삭제</button>
	                                		</td>
	                                	</tr>
	                                	<tr>
	                                		<td><input type="text"></td>
	                                		<td><input type="text"></td>
	                                		<td>
		                                		<button>추가</button>
		                                		<button style="opacity:0.5">삭제</button>
	                                		</td>
	                                	</tr>
                                	</tbody>
                                </table>
                            </div>
                        </div>
			</main>

			<jsp:include page="common/footer.jsp"></jsp:include>
		</div>
	</div>
    
</body>
</html>
