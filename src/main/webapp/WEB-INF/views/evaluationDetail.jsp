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

			<jsp:include page="/WEB-INF/views/sidebarGrade.jsp"></jsp:include>
			<!-- 사이드바 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<div class="p-4 p-md-5 mb-4 rounded">
					<p class="text-center fs-3 fw-bold">강의평가</p>
	
					<p class="lead">
						<table class="table table-striped table-hover text-center">
							<tr style="background-color: lightslategrey; color: white">
								<th>년도</th>
								<th>학기</th>
								<th>과목명</th>
								<th>교수명</th>
							</tr>
							<tr>
								<td>${registerInfo.regYear}학년도</td>
								<td>${registerInfo.regSemester }학기</td>
								<td>${registerInfo.subjName }</td>
								<td>${registerInfo.subjProfessor }</td>
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
										<td><input class="evaluation" type="radio" name="radioEvalHow"/></td>
										<td><input class="evaluation" type="radio" name="radioEvalHow"/></td>
										<td><input class="evaluation" type="radio" name="radioEvalHow"/></td>
										<td><input class="evaluation" type="radio" name="radioEvalHow"/></td>
										<td><input class="evaluation" type="radio" name="radioEvalHow"/></td>
									</tr>
									<tr>
										<td>수업은 강의계획서대로 계획성 있게 진행되었다.</td>
										<td><input class="evaluation" type="radio"  name="radioEvalPlanning"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalPlanning"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalPlanning"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalPlanning"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalPlanning"/></td>
									</tr>
									<tr>
										<td>강의 내용이 과목명, 강의목표에 잘 부합하였다.</td>
										<td><input class="evaluation" type="radio"  name="radioEvalGoal"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalGoal"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalGoal"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalGoal"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalGoal"/></td>
									</tr>
									<tr>
										<td>강의내용은 학생들의 이해수준이 고려되었다.</td>
										<td><input class="evaluation" type="radio"  name="radioEvalConsider"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalConsider"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalConsider"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalConsider"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalConsider"/></td>
									</tr>
									<tr>
										<td>과제물이나 시험은 적절하며 공정하게 시행 및 평가 되었다.</td>
										<td><input class="evaluation" type="radio"  name="radioEvalTest"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalTest"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalTest"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalTest"/></td>
										<td><input class="evaluation" type="radio"  name="radioEvalTest"/></td>
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