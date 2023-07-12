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
	    font-weight: bold;
	    font-size: 1.09em;
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
                            채용 공고 목록
                            <span style="float: right; margin-right: 5%;">
                            <button class="blue_btn">추가하기</button>

                            </span>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>모집 현황</th>
                                            <th>채용 공고 내용</th>
                                            <th>모집 분야</th>
                                            <th>채용 기간</th>
                                            <th>등록일</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                         <tr>
                                            <th>모집 현황</th>
                                            <th>채용 공고 내용</th>
                                            <th>모집 분야</th>
                                            <th>채용 기간</th>
                                            <th>등록일</th>
                                            <th>관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>모집예정</td>
                                            <td>2B팹 산소용접 용접공 구인 공고</td>
                                            <td>산소용접공 구인</td>
                                            <td>2023-07-13 ~ 2023-08-03</td>
                                            <td>2023/07/10</td>
                                            <td>
                                                <button class="blue_btn">수정하기</button>
                                                <button class="red_btn">삭제하기</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>모집중</td>
                                            <td>3F팹 산소용접 용접공 구인 공고</td>
                                            <td>전기용접공 구인</td>
                                            <td>2023-06-23 ~ 2023-07-23</td>
                                            <td>2023/06/23</td>
                                            <td>
                                                <button class="blue_btn">수정하기</button>
                                                <button class="red_btn">삭제하기</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>모집종료</td>
                                            <td>3F팹 소방배관 배관공 구인공고</td>
                                            <td>배관공 구인</td>
                                            <td>2023-06-05 ~ 2023-07-03</td>
                                            <td>2023/05/30</td>
                                            <td>
                                                <button class="blue_btn">수정하기</button>
                                                <button class="red_btn">삭제하기</button>
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
