<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-light">
		<div class="sidenav-menu">
			<div class="nav accordion" id="accordionSidenav">
				
				<!-- Sidenav Menu Heading (Core)-->
				<div class="sidenav-menu-heading">Menu</div>
				<!-- Sidenav Accordion (Dashboard)-->
				<a class="nav-link collapsed" href="javascript:void(0);"
					data-bs-toggle="collapse" data-bs-target="#collapseDashboards"
					aria-expanded="false" aria-controls="collapseDashboards">
					<div class="nav-link-icon">
						<i data-feather="user"></i>
					</div> 회원관리
					<div class="sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseDashboards"
					data-bs-parent="#accordionSidenav">
					<nav class="sidenav-menu-nested nav accordion"
						id="accordionSidenavPages">
						<a class="nav-link" href="dashboard-1.html"> 회원관리 및 수정
						</a> 
					</nav>
				</div>
				<a class="nav-link collapsed" href="javascript:void(0);"
					data-bs-toggle="collapse" data-bs-target="#collapsePages"
					aria-expanded="false" aria-controls="collapsePages">
					<div class="nav-link-icon">
						<i data-feather="grid"></i>
					</div> 게시판 관리
					<div class="sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapsePages"
					data-bs-parent="#accordionSidenav">
					<nav class="sidenav-menu-nested nav accordion"
						id="accordionSidenavPagesMenu">
						<!-- Nested Sidenav Accordion (Pages -> Account)-->
						<a class="nav-link" href="dashboard-1.html"> 메뉴설정
						</a>
						<!-- Nested Sidenav Accordion (Pages -> Authentication)-->
						<a class="nav-link collapsed" href="javascript:void(0);"
							data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth"
							aria-expanded="false" aria-controls="pagesCollapseAuth">
							채용공고
							<div class="sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="pagesCollapseAuth"
							data-bs-parent="#accordionSidenavPagesMenu">
							<nav class="sidenav-menu-nested nav accordion"
								id="accordionSidenavPagesAuth">
								<a class="nav-link" href="blog-management-posts-list.html">채용 공고 추가</a>
								<a class="nav-link" href="blog-management-posts-list.html">신청자 목록</a>
							</nav>
						</div>
						
					</nav>
				</div>
	</nav>
</div>