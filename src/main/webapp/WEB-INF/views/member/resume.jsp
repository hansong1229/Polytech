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
	
	    <h2>이력서 작성</h2>
        <form>

            <div>


                <tr>
                    <td>
                        <span>01</span>
                    </td>
                    <td>
                        <span>단계</span>
                    </td>
                    <td>
                        <span>02</span>
                    </td>
                    <td>
                        <span>단계</span>
                    </td>
                    <td>
                        <span>03</span>
                    </td>
                    <td>
                        <span>단계</span>
                    </td>
                    <td>
                        <span>04</span>
                    </td>
                    <td>
                        <span>단계</span>
                    </td>
                </tr>

            </div>


            <!-- 인적사항 입력부분 -->
            <div>
                <div>
                    <h3>인적사항</h3>
                </div>

                <div>
                    <table>
                        <tr>
                            <td rowspan="2">
                                <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973461_960_720.png"
                                    style="width: 150px; height: 200px;">
                            </td>
                            <td>
                                <span>이름</span>
                            </td>
                            <td>
                                <input type="text">
                            </td>
                            <td>
                                <span>성별</span>
                            </td>
                            <td>
                                <label><input type="radio" name="gender" value="male">남성</label>
                                <label><input type="radio" name="gender" value="female">여성</label>
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <span>생년월일</span>
                            </td>
                            <td>
                                <input type="date">
                            </td>

                        </tr>
                        <tr>

                            <td rowspan="2">
                                <span>주소</span>
                            </td>
                            <td>
                                <input type="text">
                            </td>
                            <td>
                                <input type="text">
                            </td>
                            <td>
                                <input type="text">
                            </td>
                            <td>
                                <input type="text">
                            </td>
                        </tr>

                        <tr>


                            <td colspan="2">
                                <input type="text">
                            </td>
                            <td colspan="2">
                                <input type="text">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <span>휴대전화</span>
                            </td>
                            <td colspan="5">
                                <input type="tel">
                                <span>-</span>
                                <input type="tel">
                                <span>-</span>
                                <input type="tel">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <span>이메일</span>
                            </td>
                            <td colspan="3">
                                <input type="text">
                                <span>@</span>
                                <input type="text">
                                <input type="text">
                            </td>
                        </tr>
                    </table>
                    <input type="file">
                </div>
            </div>


            <div>
                <div>
                    <h3>병역사항</h3>
                </div>

                <div>
                    <table>
                        <tr>
                            <td><span>병역구분</span></td>
                            <td><span>계급</span></td>
                            <td><span>복무기간</span></td>
                            <td><span>미필사유</span></td>
                        </tr>
                        <tr>
                            <td>
                                <select>
                                    <option value="">전역</option>
                                    <option value="">미필</option>
                                    <option value="">면제</option>
                                </select>
                            </td>
                            <td><input type="text"></td>
                            <td><input type="date"><span>~</span><input type="date"></td>
                            <td><input type="text"></td>
                        </tr>
                    </table>
                </div>

            </div>



            <div>

                <div>
                    <h3>학력사항</h3>
                </div>

                <div>
                    <table>
                        <tr>
                            <td><span>학교명</span></td>
                            <td><span>기간</span></td>
                            <td><span>전공학과</span></td>
                            <td><span>학점</span></td>
                            <td><span>상태</span></td>
                            <td><span>관리</span></td>
                        </tr>
                        <tr>
                            <td><input type="text"></td>
                            <td>
                                <input type="date">
                                <span>~</span>
                                <input type="date">
                            </td>
                            <td><input type="text"></td>
                            <td>
                                <input type="text">
                                <span>/4.5</span>
                            </td>
                            <td>
                                <select>
                                    <option>졸업</option>
                                    <option>휴학</option>
                                    <option>중퇴</option>
                                </select>
                            </td>
                            <td><input type="button" value="X"></td>
                        </tr>
                    </table>
                    <button>+항목추가</button>
                </div>
            </div>


            <div>
                <div>
                    <h3>경력 및 교육 사항</h3>
                </div>
                <div>
                    <table>
                        <tr>
                            <td><span>기간</span></td>
                            <td><span>회사 및 기관 명</span></td>
                            <td><span>직급/직책</span></td>
                            <td><span>상태</span></td>
                            <td><span>관리</span></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="date">
                                <span>~</span>
                                <input type="date">
                            </td>
                            <td><input type="text"></td>
                            <td><input type="text"></td>
                            <td>
                                <select>
                                    <option>재직</option>
                                    <option>퇴사</option>
                                    <option>수료</option>
                                </select>
                            </td>
                            <td>
                                <button>X</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <span>주요업무</span>
                                <input type="text">
                            </td>
                        </tr>
                    </table>
                    <button>+항목 추가</button>
                </div>
            </div>


            <div>
                <div>
                    <h3>자격 및 면허</h3>
                </div>
                <div>
                    <table>
                        <tr>
                            <td><span>자격/면허명</span></td>
                            <td><span>취득일자</span></td>
                            <td><span>발행기관</span></td>
                            <td><span>관리</span></td>
                        </tr>
                        <tr>
                            <td><input type="text"></td>
                            <td><input type="date"></td>
                            <td><input type="text"></td>
                            <td><button>X</button></td>
                        </tr>
                    </table>
                    <button>+항목 추가</button>
                </div>
            </div>


            <div>
                <div>
                    <h3>기타사항</h3>
                </div>
                <div>
                    <table>
                    <tr>
                        <td><span>국가 보훈 사항</span></td>
                        <td><label><input type="radio" name="1">비대상</label></td>
                        <td><label><input type="radio" name="1">대상</label></td>
                    </tr>
                    <tr>
                        <td><span>생활 보호 사항</span></td>
                        <td><label><input type="radio" name="2">비대상</label></td>
                        <td><label><input type="radio" name="2">보호 1종</label></td>
                        <td><label><input type="radio" name="2">보호 2종</label></td>
                    </tr>
                    <tr>
                        <td><span>컴퓨터 지식</span></td>
                        <td><label><input type="radio" name="3">상</label></td>
                        <td><label><input type="radio" name="3">중</label></td>
                        <td><label><input type="radio" name="3">하</label></td>
                    </tr>
                    <tr>
                        <td><span>외국어 능력</span></td>
                        <td><label><input type="radio" name="4">불가능</label></td>
                        <td><label><input type="radio" name="4">일상 회화 가능</label></td>
                        <td><input type="text" placeholder="가능 언어 입력"></td>
                    </tr>
                </table>
                </div>
            </div>
            <div>
                <textarea>

                </textarea>
            </div>
            <div>
                <tr>
                    <td><span>구비서류</span></td>
                    <td><input type="file"></td>
                </tr>
            </div>

            <input type="submit">
        </form>
    </div>
	
	
	


</body>
</html>
