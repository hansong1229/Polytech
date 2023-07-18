<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>이력서</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* CSS 스타일링을 위한 코드 작성 */
    </style>
</head>
<body>

<div class="container">
    <h2>이력서</h2>

    <h3>인적사항</h3>
    <table class="table table-bordered">
        <tr>
            <th>이름</th>
            <th>성별</th>
            <th>생년월일</th>
            <th>주소</th>
            <th>휴대전화</th>
            <th>이메일</th>
            <th>사진</th>
        </tr>
        <tr>
            <td>${resume.user_name}</td>
            <td>${resume.user_gender}</td>
            <td>${resume.user_birthday}</td>
            <td>${resume.user_address}</td>
            <td>${resume.user_phone}</td>
            <td>${resume.user_email}</td>
            <td><img src="" alt="사진"></td>
        </tr>
    </table>

    <h3>학력</h3>
    <table class="table table-bordered">
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
        <c:forEach var="acdm" items="${resume.acdmList}">
            <tr>
                <td>${acdm.acdm_seq}</td>
                <td>${acdm.acdm_user_seq}</td>
                <td>${acdm.acdm_name}</td>
                <td>${acdm.acdm_stdtsrvc}</td>
                <td>${acdm.acdm_eddtsrvc}</td>
                <td>${acdm.acdm_major}</td>
                <td>${acdm.acdm_grades}</td>
                <td>${acdm.acdm_state}</td>
            </tr>
        </c:forEach>
    </table>

    <h3>경력</h3>
    <table class="table table-bordered">
        <tr>
            <th>경력 시퀀스</th>
            <th>회원 시퀀스</th>
            <th>회사 및 기관 명</th>
            <th>취직일</th>
            <th>퇴사일</th>
            <th>직급/직책</th>
            <th>상태</th>
            <th>주요업무</th>
        </tr>
        <c:forEach var="career" items="${resume.careerList}">
            <tr>
                <td>${career.career_seq}</td>
                <td>${career.career_user_seq}</td>
                <td>${career.career_company}</td>
                <td>${career.career_dtepmt}</td>
                <td>${career.career_dtrtmt}</td>
                <td>${career.career_position}</td>
                <td>${career.career_state}</td>
                <td>${career.career_mainbsns}</td>
            </tr>
        </c:forEach>
    </table>

    <h3>자격 및 면허</h3>
    <table class="table table-bordered">
        <tr>
            <th>자격증 시퀀스</th>
            <th>회원 시퀀스</th>
            <th>자격명</th>
            <th>취득일자</th>
            <th>발행기관</th>
        </tr>
        <c:forEach var="license" items="${resume.licenseList}">
            <tr>
                <td>${license.lic_seq}</td>
                <td>${license.lic_user_seq}</td>
                <td>${license.lic_name}</td>
                <td>${license.lic_date}</td>
                <td>${license.lic_organization}</td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
