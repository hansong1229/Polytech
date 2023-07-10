<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  
  $(document).ready(function(){
      if(${not empty msgType}){
         if(${msgType eq "성공 메시지"}){
            $("#messageType").attr("class", "modal-content panel-success");
         }
         if(${msgType eq "로그아웃 메시지"}){
             $("#messageType").attr("class", "modal-content panel-primary");
          }
         $("#myMessage").modal("show");
      }
   });
  
  
  </script>

</head>
<body>




	<div class="container">
		<jsp:include page="common/header.jsp"></jsp:include>

		<h3>Spring MVC03</h3>

		<div class="panel panel-default">
			<div>
			<!-- 스프링에선 모든 이미지같은 리소스 파일들을 웹앱 안에 리스소에 넣어야 한다 -->
				<img src="${contextPath}/resources/images/main.jpg" style="width: 100%; height:400px;">
			</div>
			<div class="panel-body">
				  <ul class="nav nav-tabs">
				  
				  
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">게시판</a></li>
    <li><a data-toggle="tab" href="#menu2">공지사항</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>게시판</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>공지사항</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
  </div>
  
  
			</div>
			<div class="panel-footer">스프링게시판-김한송</div>
		</div>
	</div>







	<!-- 다이얼로그창(모달) -->
	<!-- 회원가입 성공시 나오게될 모달창 -->
	<!-- Modal -->
	<div class="modal fade" id="myMessage" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div id="messageType" class="modal-content panel-info">
				<div class="modal-header panel-heading">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">${msgType}</h4>
				</div>
				<div class="modal-body">
					<p id="">${msg}</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>