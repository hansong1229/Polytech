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

<<<<<<< HEAD
</div>
=======
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
                                <input type="text" name="user_name">
                            </td>
                            <td>
                                <span>성별</span>
                            </td>
                            <td>
                                <label><input type="radio" name="user_gender" value="male">남성</label>
                                <label><input type="radio" name="user_gender" value="female">여성</label>
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <span>생년월일</span>
                            </td>
                            <td>
                                <input type="date" name="user_birthday">
                            </td>

                        </tr>
                        <tr>

                            <td rowspan="2">
                                <span>주소</span>
                            </td>
                            <td>
                            	<input type="hidden" name="user_address">
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
                                <input type="tel" name="user_phone">
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
                            	<input type="hidden" name="user_email">
                                <input type="text">
                                <input type="text">
                                <select>
                                    <option value="">naver.com</option>
                                    <option value="">gmail.com</option>
                                    <option value="">직접입력</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <input type="file" name="user_picture">
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
                                <select name="user_military">
                                    <option value="">-- 선택 --</option>
                                    <option value="전역">전역</option>
                                    <option value="미필">미필</option>
                                    <option value="면제">면제</option>
                                </select>
                            </td>
                            <td><input type="text" name="user_class"></td>
                            <td><input type="date" name="user_stdtsrvc"><span>~</span><input type="date" name="user_eddtsrvc"></td>
                            <td><input type="text" name="user_unfns_cause"></td>
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
                            <td><input type="text" name="acdm_name"></td>
                            <td>
                                <input type="date" name="acdm_stdtsrvc">
                                <span>~</span>
                                <input type="date" name="acdm_eddtsrvc">
                            </td>
                            <td><input type="text" name="acdm_major"></td>
                            <td>
                                <input type="text" name="acdm_grades">
                                <span>/4.5</span>
                            </td>
                            <td>
                                <select name="acdm_state">
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
                                <input type="date" name="career_dtepmt">
                                <span>~</span>
                                <input type="date" name="career_dtrtmt">
                            </td>
                            <td><input type="text" name="career_company"></td>
                            <td><input type="text" name="career_position"></td>
                            <td>
                                <select name="career_state">
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
                                <input type="text" name="career_mainbsns">
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
                            <td><input type="text" name="lic_name"></td>
                            <td><input type="date" name="lic_date"></td>
                            <td><input type="text" name="lic_organization"></td>
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
                        <td><label><input type="radio" name="user_va" value="비대상">비대상</label></td>
                        <td><label><input type="radio" name="user_va" value="대상">대상</label></td>
                    </tr>
                    <tr>
                        <td><span>생활 보호 사항</span></td>
                        <td><label><input type="radio" name="user_protection">비대상</label></td>
                        <td><label><input type="radio" name="user_protection">보호 1종</label></td>
                        <td><label><input type="radio" name="user_protection">보호 2종</label></td>
                    </tr>
                    <tr>
                        <td><span>컴퓨터 지식</span></td>
                        <td><label><input type="radio" name="user_comknowledge">상</label></td>
                        <td><label><input type="radio" name="user_comknowledge">중</label></td>
                        <td><label><input type="radio" name="user_comknowledge">하</label></td>
                    </tr>
                    <tr>
                        <td><span>외국어 능력</span></td>
                        <td><label><input type="radio" name="user_foreignknowledge" value="불가능">불가능</label></td>
                        <td><label><input type="radio" name="user_foreignknowledge">일상 회화 가능</label></td>
                        <td><input type="text" name="user_foreignknowledge" placeholder="가능 언어 입력"></td>
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
                    <td><input type="file" name="user_atfp"></td>
                </tr>
            </div>

            <input type="submit">
        </form>
    </div>
	
	
	

>>>>>>> branch 'master' of https://github.com/hansong1229/polytech.git

</body>
</html>
