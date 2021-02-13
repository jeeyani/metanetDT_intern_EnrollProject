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

		<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>
			<!-- 사이드바 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

			<div class="p-4 p-md-5 mb-4 rounded">
				<p class="text-center fs-3 fw-bold">강의계획서</p>

				<br>

				<p>
				<div style="overflow-y: auto; height: 100%">
					<table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align: middle">
						<colgroup>
							<col width="20%">
							<col width="35%">
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">교과목명</th>
								<td>${subjectDetail.subjName}</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학수번호</th>
								<td>${subjectDetail.subjectNo}</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학기</th>
								<td>${subjectDetail.subjSemester}</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">주관학과</th>
								<td>${subjectDetail.deptName}</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학수구분</th>
								<td>${subjectDetail.subjGroup}</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">강의실</th>
								<td>${subjectDetail.lectRoom}</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학점구성</th>
								<td>${subjectDetail.subjScore}</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">교수명</th>
								<td>${subjectDetail.subjProfessor}</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">강의개요</th>
								<td colspan="3" height="100%" style="text-align: left;">
									${subjectDetail.outline}
								</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">강의진행방식</th>
								<td colspan="3" height="100%" style="text-align: left;">
									${subjectDetail.proceed}
								</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">수강시 유의사항</th>
								<td colspan="3" height="100%" style="text-align: left;">
									${subjectDetail.note}
								</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">평가방법</th>
								<td colspan="3" height="100%" style="text-align: left;">
									${subjectDetail.evaluation}
								</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">강의진행계획</th>
								<td colspan="3" height="100%" style="text-align: left;">
									${subjectDetail.progressPlan}
								</td>
							</tr>
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