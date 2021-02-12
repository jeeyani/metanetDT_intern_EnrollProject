<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

			<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>
			<!-- 사이드바 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

			<div class="p-4 p-md-5 mb-4 rounded">
				<p class="text-center fs-3 fw-bold">강의계획서 조회</p>

				<p class="fs-5 fw-bold">구분</p>
				<p class="lead">
					<div>
					<form action="lecturePlanList" method="get">
						<input type="radio" name="subjectName" value="subjectName" checked="checked">과목명 
						<input type="radio" name="professorName" value="professorName">교수명 
						<input type="radio" name="subjectId" value="subjectId">학수번호 
						<input type="text" name="search"> <button type="submit" class="btn btn-outline-dark btn-sm">검색</button>
					</form>
					</div>
					<br>

				</p>

				<p>
				<div style="overflow-y: auto; height: 300px">
					<table class="table table-striped table-hover"
						style="border-collapse: collapse; text-align: center; vertical-align: middle">
						<thead>
							<tr style="color: white;">
								<th style="position: sticky; background-color: lightslategrey; top: 0px">학기</th>
								<th style="position: sticky; background-color: lightslategrey; top: 0px">학수번호</th>
								<th style="position: sticky; background-color: lightslategrey; top: 0px">교과목명</th>
								<th style="position: sticky; background-color: lightslategrey; top: 0px">개설학과</th>
								<th style="position: sticky; background-color: lightslategrey; top: 0px">담당교수</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${lecturePlanList.subjectNo == null}">
								<tr>
									<td colspan="5">조회된 Data가 없습니다.</td>
								</tr>	
							</c:if>
							<c:if test="${lecturePlanList.subjectNo != null}">
								<tr>
								<td>2</td>
								<td>101003</td>
								<td><a href="#" style="color:black;text-decoration: none">데이터베이스</a></td>
								<td>컴퓨터공학과</td>
								<td>이교수</td>
								</tr>
								<tr>
									<td>2</td>
									<td>101002</td>
									<td><a href="#" style="color:black;text-decoration: none">컴퓨터개론</a></td>
									<td>컴퓨터공학과</td>
									<td>박교수</td>
								</tr>
								<tr>
									<td>1</td>
									<td>101004</td>
									<td><a href="#" style="color:black;text-decoration: none">Spring 프레임워크</a></td>
									<td>소프트웨어공학과</td>
									<td>다람쥐</td>
								</tr>
								<tr>
									<td>1</td>
									<td>101001</td>
									<td><a href="#" style="color:black;text-decoration: none">객체지향 프로그래밍</a></td>
									<td>컴퓨터공학과</td>
									<td>김교수</td>
								</tr>
								<tr>
									<td>1</td>
									<td>101005</td>
									<td><a href="#" style="color:black;text-decoration: none">컴파일러</a></td>
									<td>컴퓨터공학과</td>
									<td>송진국</td>
								</tr>
							</c:if>
							
						</tbody>

					</table>
				</div>
				</p>
			</div>
			</main>

		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>