<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>메타대 학사정보시스템</title>
</head>

<body class="bg-light" style="overflow: auto;">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">

			<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>

			<main class="col-9 ms-sm-5 px-md-4">

			<div class="p-4 p-md-5 mb-4 rounded">
				<p class="text-center fs-3 fw-bold">나의 시간표 조회</p>
				<div>
				
					<table class="table" style="border-collapse: collapse; text-align: center; vertical-align: middle">
						<thead>
							<tr style="color: white;">
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">이수구분</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">교과목명</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">시수</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">개설학과</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">담당교수</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">시간표</th>
								<th
									style="position: sticky; background-color: lightslategrey; top: 0px">강의실</th>
							</tr>
						</thead>
						<c:set var="subjScore_sum" value="0" />
						<tbody>
							<c:forEach var="subjectDTO" items="${courseList}">
								<tr>
									<td>${subjectDTO.subjGroup}</td>
									<td>${subjectDTO.subjName}</td>
									<td>${subjectDTO.subjScore }</td>
									<td>${subjectDTO.deptName }</td>
									<td>${subjectDTO.subjProfessor }</td>
									<td>${subjectDTO.lectDate }${subjectDTO.lectStart }~${subjectDTO.lectEnd }</td>
									<td>${subjectDTO.lectRoom }</td>
									<c:set var="subjScore_sum"
										value="${subjScore_sum + subjectDTO.subjScore}" />
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
				<div class="text-end fs-5 fw-bold">총 수강신청학점:
					${fn:length(courseList)}과목 ${subjScore_sum}학점</div>
				<div class="row">
					
					<div class="col-12">
						<br>
						<h3>1학기 시간표</h3>
						<br>

						<table class="table table-bordered">
							<tbody>
								<tr>
									<th style="background-color: rgb(187, 196, 204);">학번</th>
									<td>${studentList.studentId }</td>
									<th style="background-color: rgb(187, 196, 204);">성명</th>
									<td>${studentList.name}</td>
									<th style="background-color: rgb(187, 196, 204);">전공</th>
									<td>${studentList.deptName }</td>
								</tr>
							</tbody>
						</table>

						<table id="time" class="table table-bordered text-center">
							<c:set var="days" value="${fn:split('월,화,수,목,금' , ',')}" />
							<thead>
								<tr>
									<th style="width: 10%"></th>
									<c:forEach var="day" items="${days}">
										<th style="width: 18%">${day}</th>
									</c:forEach>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="i" begin="1" end="9">
									<tr>
										<td>${i}교시</td>
										<c:forEach var="day" items="${days}">
											<c:set var="temp" value="0" />
											<c:forEach var="course" items="${courseList}">
												<c:if test="${course.lectDate eq day}">
													<c:if
														test="${i ge course.lectStart and i le course.lectEnd}">
														<td>${course.subjName}</td>
														<c:set var="temp" value="1" />
													</c:if>
												</c:if>
											</c:forEach>
											<c:if test="${temp eq 0}">
												<td></td>
											</c:if>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			</main>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

<script>

/* 
	$(document).ready(function(){
		for(var i=1; i<6; i++) {
			setRowspan(2);	
		}
	})
	
	function setRowspan(num) 
	{	//num 병합을 원하는 열
		  var mergeItem = "-";	//병합구분값
		  var mergeCount = 0;	//병합 수
		  var mergeRowNum = 0;	//병합들어갈 row
	
		  $('tr','#time').each(function(row){  // #테이블ID값
		    if(row > 0 )
		    {
		      var item = $(':eq(' + num +')',$(this)).html();
		      if(mergeItem != item  ) {
		        mergeCount = 1;
		        mergeItem = item ;
		        mergeRowNum = row;
		      }
		      else
		      {
		    	  console.log(mergeItem)
		        mergeCount = mergeCount + 1;
		        $("tr:eq("+mergeRowNum+") > td:eq("+num+")").attr("rowspan",mergeCount);
		        $('td:eq('+num+')',$(this)).hide();	//병합될 값들 숨김처리
		      }
		    }
		  })
	} 
*/
	
</script>

</html>