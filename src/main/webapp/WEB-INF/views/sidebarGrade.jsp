<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav id="sidebarMenu"
	class="col-md-3 col-lg-2 d-md-block sidebar collapse"
	style="height:1000px;  width:300px; overflow:hidden; background-color:#eeeeee">
	<div class="position-sticky pt-3" style="padding:20px;">
		<ul class="nav flex-column">
			<li class="nav-item" style="margin-bottom:80px; margin-top:50px">
              <div class="p-3 rounded">
                <b>반갑습니다 ${studentList.name}님</b><p></p>	
                <a type="button" class="btn btn-outline-danger btn-sm" href="<%=application.getContextPath()%>/logoutAction" style="text-decoration: none">Logout</a>
              </div>
            </li>
            <li class="nav-item" style="height:80px">
              <a class="nav-link" href="gradeTotal" style="height:50px; color:black;">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-check" viewBox="0 0 16 16">
                  <path d="M10.854 7.854a.5.5 0 0 0-.708-.708L7.5 9.793 6.354 8.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
				        </svg>  <b>전체학기 성적조회</b>
              </a>
            </li>
            <li class="nav-item" style="height:80px">
              <a class="nav-link" href="gradeSemester" style="height:50px; color:black;">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-check" viewBox="0 0 16 16">
                  <path d="M10.854 7.854a.5.5 0 0 0-.708-.708L7.5 9.793 6.354 8.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
				        </svg>  <b>학기별 성적조회</b>
              </a>
            </li>
            <li class="nav-item" style="height:80px">
              <a class="nav-link" href="evaluationList" style="height:50px; color:black;">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-square" viewBox="0 0 16 16">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.235.235 0 0 1 .02-.022z"/>
				</svg>  <b>강의평가</b>
              </a>
            </li>
		</ul>
	</div>
</nav>