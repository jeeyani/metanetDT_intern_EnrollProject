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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
						<input type="radio" name="subjectSearch" value="subjectName" checked="checked">과목명 
						<input type="radio" name="subjectSearch" value="professorName">교수명 
						<input type="radio" name="subjectSearch" value="subjectId">학수번호 
						<input type="text" name="search"> <a type="submit" class="btn btn-outline-dark btn-sm" href="javascript:planSearch()">검색</a>
					</div>
					<script type="text/javascript">
						function planSearch(){
							$.ajax({
								url:"lecturePlanList",
								type:'POST',
								data:{subjectSearch:subjectSearch},
								success: function (data) {
									$("#PlanList").html(data);
								}
							});
						}
					
					</script>
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
							<c:if test="${subjectList.subjectNo != null}">
								<div class="PlanList"></div>
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