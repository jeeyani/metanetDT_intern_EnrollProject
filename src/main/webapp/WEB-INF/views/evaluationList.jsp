<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

<body class="bg-light" style="overflow:auto;">
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

  <div class="container-fluid">
    <div class="row">
	
	
		<jsp:include page="/WEB-INF/views/sidebarGrade.jsp"></jsp:include>


      <main class="col-9 ms-sm-auto px-md-4">
        <div class="p-4 p-md-5 mb-4 rounded">
        	
			<p class="text-center fs-3 fw-bold">강의 평가 현황</p>
          	<p class="text-center fs-5 fw-bold">${studentInfo.deptName} ${studentInfo.name} (${studentInfo.studentId})</p>
        	<br>
        	
        	<!-- <table class="table table-bordered" style="border-collapse: collapse; text-align: center; vertical-align:middle">
				<tbody>
					<tr style="color: white;">
						<th style="position:sticky; background-color: lightslategrey; top:0px">년도</th>
						<td>
							<select name="regYear" class="form-select">
								<option>2017</option>
								<option>2018</option>
								<option selected="selected">2019</option>
							</select>
						</td>
						<th style="position:sticky; background-color: lightslategrey; top:0px">학기</th>
						<td>
							<select name="regSemester" class="form-select">
								<option selected>1학기</option>
								<option>하계계절</option>
								<option >2학기</option>
								<option>동계계절</option>
							</select>
						</td>
						<td>
							
						</td>
					</tr>
				</tbody>
			</table> -->
      
          

          <div>
            <table class="table" style="border-collapse: collapse; text-align: center; vertical-align:middle">              
              <thead>
                <tr style="color: white;">
                  <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">교과목명</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">학점</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">평가여부</th>
                </tr>
              </thead>

              <tbody>
              	<c:forEach var="gradeDTO" items="${evaluationList}">
              		<tr>
						<td>${gradeDTO.subjGroup}</td>
						<td>${gradeDTO.subjName}</td>
						<td>${gradeDTO.subjScore}</td>
						<td>${gradeDTO.deptName}</td>
						<td>${gradeDTO.subjProfessor}</td>
						<td>
						<c:if test="${gradeDTO.evalHow ne ''}">
							<button type="button" class="btn btn-outline-success btn-sm" disabled>응시완료</button>
						</c:if>
						<c:if test="${gradeDTO.evalHow eq ''}">
							<form method="post" action="evaluationDetail">
								<input type="hidden" name="registerNo" value="${gradeDTO.registerNo}"/>
								<button type="submit" class="btn btn-outline-danger btn-sm">미응시</button>
							</form>
						</c:if>
						</td>
                	</tr>
              	</c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </main>

    </div>
  </div>
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>