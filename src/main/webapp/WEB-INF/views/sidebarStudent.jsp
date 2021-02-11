<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav id="sidebarMenu"
	class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse"
	style="border-right: 0.5px solid black">
	<div class="position-sticky pt-3">
		<ul class="nav flex-column">

			<li class="nav-item">
				<div class="bg-light p-3 rounded">
					<p>반갑습니다 ${studentList.name}님</p>
					<a type="button" class="btn btn-outline-danger btn-sm" href="<%=application.getContextPath()%>/logoutAction" style="text-decoration: none">Logout</a>
				</div>
			</li>
			<p></p>
			<p></p>
			<li class="nav-item"><a class="nav-link" href="<%=application.getContextPath()%>/studentInfo"
				style="height: 50px; color: black;"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-card-list" viewBox="0 0 16 16">
							  <path
							d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
							  <path
							d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z" />
							</svg> 학생 개인정보 확인
			</a></li>
		</ul>
	</div>
</nav>