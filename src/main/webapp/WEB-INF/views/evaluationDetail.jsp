<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
	
<title>메타대 학사정보시스템</title>
</head>

<body class="bg-light">
	 <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">

			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style="border-right: 0.5px solid black">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">

						<li class="nav-item">
							<div class="bg-light p-3 rounded">
								<p>반갑습니다 강창기님</p>
								<button type="button" class="btn btn-outline-danger btn-sm">Logout</button>
							</div>
						</li>
						<p></p>
						<p></p>
						<li class="nav-item">
			              <a class="nav-link" href="#" style="height:50px; color:black;">
			                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-square" viewBox="0 0 16 16">
							  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
							  <path d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.235.235 0 0 1 .02-.022z"/>
							</svg> 강의평가
			              </a>
			            </li>
			            <li class="nav-item">
			              <a class="nav-link" href="#" style="height:50px; color:black;">
			                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-check" viewBox="0 0 16 16">
							  <path d="M10.854 7.854a.5.5 0 0 0-.708-.708L7.5 9.793 6.354 8.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
							  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
							</svg> 성적확인
			              </a>
			            </li>
					</ul>
				</div>
			</nav>
			<!-- 사이드바 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<div class="p-4 p-md-5 mb-4 rounded">
					<p class="text-center fs-3 fw-bold">강의평가</p>
	
					<br>
	
					<p>
					
					<p class="lead">
						<table class="table table-striped table-hover text-center">
							<tr style="background-color: lightslategrey; color: white">
								<th>년도</th>
								<th>학기</th>
								<th>과목명</th>
								<th>교수명</th>
							</tr>
							<tr>
								<td>2019학년도</td>
								<td>1학기</td>
								<td>객체지향</td>
								<td>사과몽</td>
							</tr>
						</table>
					</p>
					<br>
					<div style="overflow-y: auto; height: 300px">
						<form id="research" class="form-horizontal">
							<table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align: middle">
								<thead>
									<tr style="background-color: lightslategrey; color:white">
										<td>문항</td>
										<td>매우아니다</td>
										<td>아니다</td>
										<td>보통이다</td>
										<td>그렇다</td>
										<td>매우그렇다</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>교수의 강의 방법이 적절하였다.</td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
									</tr>
									<tr>
										<td>수업은 강의계획서대로 계획성 있게 진행되었다.</td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
									</tr>
									<tr>
										<td>강의 내용이 과목명, 강의목표에 잘 부합하였다.</td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
									</tr>
									<tr>
										<td>강의내용은 학생들의 이해수준이 고려되었다.</td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
									</tr>
									<tr>
										<td>과제물이나 시험은 적절하며 공정하게 시행 및 평가 되었다.</td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
										<td><input class="evaluation" type="radio" /></td>
									</tr>
								</tbody>
							</table>
						</form>
						<div style="text-align: right;">
						<button type="button" class="btn btn-outline-dark btn-sm">제출하기</button>
						</div>
						
					</div>
					</p>
				</div>
			</main>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>