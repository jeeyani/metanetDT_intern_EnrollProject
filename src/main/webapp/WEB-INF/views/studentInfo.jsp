<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html>

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
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/dashboard/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">

<title>메타대 학사정보시스템</title>
</head>

<body class="bg-light">
	
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	

	<div class="container-fluid">
		<div class="row">

			<jsp:include page="/WEB-INF/views/sidebar.jsp"></jsp:include>
			<!-- 사이드바 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

			<div class="p-4 p-md-5 mb-4 rounded">
				<p class="text-center fs-3 fw-bold">학생정보</p>

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
								<th colspan="4" style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학생 정보</th>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">성명</th>
								<td>강창기</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학적상태</th>
								<td>재학</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학번</th>
								<td>2015112131</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">학과</th>
								<td>컴퓨터공학과</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">전화번호</th>
								<td>010-1234-5678</td>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">이메일</th>
								<td>cgkang@metanet.co.kr</td>
							</tr>
							<tr>
								<th style="position: sticky; background-color: lightslategrey; top: 0px; color: white;">주소</th>
								<td colspan="3">서울시 구로구</td>
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