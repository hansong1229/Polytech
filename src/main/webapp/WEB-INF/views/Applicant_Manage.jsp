<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/head.jsp"></jsp:include>
<style>
button{
    	border:none;
    	height: 30px;
	    border: 0;
	    border-radius: 5px;
	    padding: 0 10px;
	    vertical-align: middle;
	    color:#ffffff;
	    
    	}
.blue_btn{
background-color: #0061f2;
}
.red_btn{
background-color: red;
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
                            모집분야 : <span>산소용접공</span> 구인
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>성명</th>
                                            <th>성별</th>
                                            <th>생년월일</th>
                                            <th>연락처</th>
                                            <th>주소</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                         <tr>
                                            <th>성명</th>
                                            <th>성별</th>
                                            <th>생년월일</th>
                                            <th>연락처</th>
                                            <th>주소</th>
                                            <th>관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>김유신</td>
                                            <td>남성</td>
                                            <td>1999.09.09</td>
                                            <td>010-0000-0000</td>
                                            <td>전남 oo시 oo로 oo-o oooo아파트 oooo호</td>
                                            <td>
                                                <button class="blue_btn">상세정보</button>
                                                <button class="red_btn">출력하기</button>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>이난영</td>
                                            <td>여성</td>
                                            <td>1997.07.07</td>
                                            <td>010-1111-2222</td>
                                            <td>전남 oo시 oo로 oo-o oooo아파트 oooo호</td>
                                            <td>
                                                <button class="blue_btn">상세정보</button>
                                                <button class="red_btn">출력하기</button>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>홍길동</td>
                                            <td>남성</td>
                                            <td>2000.01.01</td>
                                            <td>010-2222-3333</td>
                                            <td>전남 oo시 oo로 oo-o oooo아파트 oooo호</td>
                                            <td>
                                                <button class="blue_btn">상세정보</button>
                                                <button class="red_btn">출력하기</button>
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
