<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
    crossorigin="anonymous"></script>
	
	
  <title>메타대 학사정보시스템</title>
</head>

<body class="bg-light">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container-fluid">
	   <div class="row">
	
	     <jsp:include page="/WEB-INF/views/sidebarGrade.jsp"></jsp:include>
	
	     <main class="col-9 ms-sm-5 px-md-4">
			
				<div class="p-5 mb-4 rounded">
					<p class="text-center fs-3 fw-bold">학기별 성적 조회</p>
				</div>
			
	         <div style="height:500px">
	         	<form method="post" action="gradeSemesterAction" style="margin-bottom: 10px;">
					<div class="row g-3 align-items-center">
						<div class="col-auto">
							<label for="deptname" class="col-form-label"
								style="font-weight: bold">년도</label>
						</div>
						<div class="col-auto">

							<!-- foreach로 데이터싹 가져와야함...
		            <option <c:if test="${regYear eq 2021}">selected</c:if> value="2021">2021</option>
		            -->
							<select name="regYear" class="form-select">
								<!-- <option <c:if test="${regYear eq 2021}">selected</c:if>
									value="2021">2021</option> -->
								<option <c:if test="${regYear eq 2020}">selected</c:if>
									value="2020">2020</option>
								<option <c:if test="${regYear eq 2019}">selected</c:if>
									value="2019">2019</option>
								<option <c:if test="${regYear eq 2018}">selected</c:if>
									value="2018">2018</option>
								<option <c:if test="${regYear eq 2017}">selected</c:if>
									value="2017">2017</option>
							</select>
						</div>
						<div class="col-auto">
							<label for="deptname" class="col-form-label"
								style="font-weight: bold">학기</label>
						</div>
						<div class="col-auto">
							<select name="regSemester" class="form-select">
								<option <c:if test="${regSemester eq '1'}">selected</c:if>
									value="1">1학기</option>
								<option <c:if test="${regSemester eq 's'}">selected</c:if>
									value="s">여름학기</option>
								<option <c:if test="${regSemester eq '2'}">selected</c:if>
									value="2">2학기</option>
								<option <c:if test="${regSemester eq 'f'}">selected</c:if>
									value="f">겨울학기</option>
							</select>
						</div>
						<div class="col-auto">
							<button type="submit" class="btn btn-outline-dark">조회</button>
						</div>
					</div>
				</form>
	             <table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align:middle">
	               <thead>
	                 <tr style="color: white;">
	                   <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
	                   <th style="position:sticky; background-color: lightslategrey; top:0px">과목명</th>
	                   <th style="position:sticky; background-color: lightslategrey; top:0px">등급</th>
	                   <th style="position:sticky; background-color: lightslategrey; top:0px">학점</th>
	                   <th style="position:sticky; background-color: lightslategrey; top:0px">평점</th>
	                 </tr>
	               </thead>
	               <tbody>
	               	<c:set var="subjScore_sum" value="0"/>
	               	<c:set var="grade_sum" value="0"/>
	               	<c:set var="subjScore_length" value="${fn:length(semesterGradeList)}"/>
	               	
	               	<c:forEach var="gradeDTO" items="${semesterGradeList}">
	               		<tr>
		                    <td>${gradeDTO.subjGroup}</td>
		                    <td>${gradeDTO.subjName}</td>
		                    <td>
			                    <c:choose>
									<c:when test="${gradeDTO.grade==4.5}">A+</c:when>
									<c:when test="${gradeDTO.grade==4.0}">A0</c:when>
									<c:when test="${gradeDTO.grade==3.5}">B+</c:when>
									<c:when test="${gradeDTO.grade==3.0}">B0</c:when>
									<c:when test="${gradeDTO.grade==2.5}">C+</c:when>
									<c:when test="${gradeDTO.grade==2.0}">C0</c:when>
									<c:when test="${gradeDTO.grade==1.5}">D+</c:when>
									<c:when test="${gradeDTO.grade==1.0}">D0</c:when>
									<c:otherwise>F</c:otherwise> 
								</c:choose>
		                    </td>
		                    <td>${gradeDTO.subjScore}</td>
		                    <td>${gradeDTO.grade}</td>
	                 		</tr>
	                 		<c:set var="subjScore_sum" value="${subjScore_sum + gradeDTO.subjScore}"/>
	                 		<c:set var="grade_sum" value="${grade_sum + gradeDTO.grade}"/>
	               	</c:forEach>
	               </tbody>
	             </table>
	             
	             <div style="float:right">
	               <label class="fw-bold" style="margin:0px 10px">취득학점</label><c:out value="${subjScore_sum}"/>학점
	               <!-- NaN 체크 !  -->
	               <label class="fw-bold"  style="margin:0px 10px 0px 20px">평균학점</label><fmt:formatNumber value="${grade_sum / subjScore_length}" pattern="#.##"/>
	             </div>
	           </div>
	         </main>
	       </div>
	   </div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>