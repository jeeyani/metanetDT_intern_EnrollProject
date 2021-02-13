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
			<li class="nav-item"><a class="nav-link" href="<%=application.getContextPath()%>/enrollment"
				style="height: 50px; color: black;"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
                  <path
							d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z" />
                </svg> 수강신청하기
			</a></li>
			<li class="nav-item"><a class="nav-link" href="<%=application.getContextPath()%>/timetable"
				style="height: 50px; color: black;"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-calendar-week"
						viewBox="0 0 16 16">
                  <path
							d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                  <path
							d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                </svg> 나의 시간표 조회
			</a></li>
			<li class="nav-item"><a class="nav-link" href="<%=application.getContextPath()%>/lecturePlan"
				style="height: 50px; color: black;"> <svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-clipboard" viewBox="0 0 16 16">
					  <path
							d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z" />
					  <path
							d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z" />
					</svg> 강의계획서 조회
			</a></li>
		</ul>
	</div>
</nav>