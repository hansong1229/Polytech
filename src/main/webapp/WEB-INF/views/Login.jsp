<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="common/head.jsp"></jsp:include>

</head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <!-- Basic login form-->
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header justify-content-center"><h3 class="fw-light my-4">관리자 로그인</h3></div>
                                    <div class="card-body">
                                        <!-- Login form-->
                                        <form>
                                            <!-- Form Group (email address)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputEmailAddress">아이디</label>
                                                <input class="form-control" id="inputEmailAddress" type="email" placeholder="관리자 아이디를 입력해주세요." />
                                            </div>
                                            <!-- Form Group (password)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputPassword">비밀번호</label>
                                                <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호를 입력해주세요." />
                                            </div>
                                            
                                            <!-- Form Group (login box)-->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="btn btn-primary" href="index.jsp">로그인</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="footer-admin mt-auto footer-dark">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; PolyTech 2023</div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
