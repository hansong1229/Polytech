<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- scope (4가지 영역 ): page(명시하지 않으면 page기본) 영역, context  -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!-- 컨텍스트 패스(메인화면)에 접근하기 위한 EL식 -->
      <a class="navbar-brand" href="${contextPath}/">스프링</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <c:forEach var="item" items="${menu}">
        <li class="active"><a href="${item.url}">${item.menu}</a></li>
      </c:forEach>
      </ul>
      
      <c:if test="${empty mvo}">
      <ul class="nav navbar-nav navbar-right">
             <li><a href="${contextPath}/joinForm.do"><span class="glyphicon glyphicon-user">회원가입</span></a></li>
            <li><a href="${contextPath}/loginForm.do"><span class="glyphicon glyphicon-log-in">로그인</span></a></li>
      </ul>
      </c:if>
      
      <c:if test="${not empty mvo}">
      <ul class="nav navbar-nav navbar-right">
             <li><a href="${contextPath}/updateForm.do">
             <span class="glyphicon glyphicon-wrench">회원정보수정</span></a></li>
            <li><a href="${contextPath}/imageForm.do"><span class="glyphicon glyphicon-picture">프로필사진등록</span></a></li>
            <li><a href="${contextPath}/logout.do"><span class="glyphicon glyphicon-log-out">로그아웃</a></span> </li>
             
             <c:if test="${mvo.memProfile eq '' or null}">
             <li>
                <img class="img-circle" src="${contextPath}/resources/images/person.png" style="width: 50px; height: 50px;">
                ${mvo.memName}님 Welcome.
             </li>
             </c:if>
             
             <c:if test="${mvo.memProfile ne ''}">
             <li>
                <img class="img-circle"  src="${contextPath}/resources/upload/${mvo.memProfile}" style="width: 50px; height: 50px;">
                ${mvo.memName}님 Welcome.
             </li>
             </c:if>
      </ul>
      </c:if>
      
      
      
      
      
      
      
    </div>
  </div>
</nav>
