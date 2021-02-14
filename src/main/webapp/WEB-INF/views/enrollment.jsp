<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
  <title>메타대 학사정보시스템</title>
</head>

<body class="bg-light" style="overflow:auto;">
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

  <div class="container-fluid">
    <div class="row">
    
		<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>
      

      <main class="col-9 ms-sm-5 px-md-4">
        
        <div class="p-4 p-md-5 mb-4 rounded">
          <p class="text-center fs-3 fw-bold">수강 신청</p>

          <p class="fs-5 fw-bold">학적정보</p>
          <p class="lead">
          	<fmt:formatDate value="${now}" pattern="yyyy" var="today"/>
            <table class="table table-striped table-hover text-center">
              <tr style="background-color: lightslategrey; color:white">
                <th>년도 / 학기</th>
                <th>학번</th>
                <th>성명</th>
                <th>소속학과</th>
              </tr>
              <tr>
                <td><c:out value="${today}"/>학년도 ${semester}학기</td>
                <td>${studentList.studentId}</td>
                <td>${studentList.name}</td>
                <td>${studentList.deptName}</td>
              </tr>
            </table>
          </p>

			<p class=" col-auto fs-5 fw-bold" style="width: 300px">수강가능목록</p>
			<div class="row g-3 align-items-center">
			
					<div class="col-auto">
						<label for="subjectNo" class="col-form-label"
							style="font-weight: bold">학수번호</label>
					</div>
					<div class="col-auto">
						<input type="text" id="subjectNo" class="form-control" name="subjectNo">
					</div>
					<div class="col-auto">
						<label for="subjGroup" class="col-form-label" style="font-weight: bold">이수구분</label>
					</div>
					<div class="col-auto">
						<select id="subjGroup" name="subjGroup" class="form-select">
							<option value="none" selected>전체출력</option>
							<option value="전공선택">전공선택</option>
							<option value="전공필수">전공필수</option>
							<option value="교양선택">교양선택</option>
							<option value="교양필수">교양필수</option>
						</select>
					</div>
					<div class="col-auto">
						<label for="subjName" class="col-form-label" style="font-weight: bold">과목명</label>
					</div>
					<div class="col-auto">
						<input type="text" id="subjName" class="form-control" name="subjName">
					</div>
					<div class="col-auto">
						<a type="submit" class="btn btn-outline-dark" href="javascript:selectSubject()">조회</a>
					</div>
			</div>
			
			<p></p>

            <div style="overflow-y:auto; height:350px" id="selectList">
              <table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align:middle">
                <colgroup>
					<col width="7%">
					<col width="8.5%">
					<col width="8.5%">
					<col width="17%">
					<col width="6%">
					<col width="15%">
					<col width="8.5%">
					<col width="9%">
					<col width="9%">
					<col width="*">
				</colgroup>
                <thead>
                  <tr style="color: white;">
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">#</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">학수번호</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">과목명</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">학점</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시간표</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의실</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의평가점수</th>
                  </tr>
                </thead>
               
                <tbody>
                	
                	<c:forEach var="list" items="${registerList}">
                		<tr>
		                    <%-- <td><a id="okbutton" type="submit" class="btn btn-outline-success btn-sm" href="<%=application.getContextPath()%>/enrolmentAdd?subjectNo=${list.subjectNo}">신청</a></td> --%>
		                    <td><a type="submit" id="subjectNum" class="btn btn-outline-success btn-sm" href="javascript:scoreCheck(${list.subjectNo})">신청</a></td>
		                    <td>${list.subjectNo}</td>
		                    <td>${list.subjGroup}</td>
		                    <td><a href="<%=application.getContextPath()%>/lecturePlanDetail?subjectNo=${list.subjectNo}" style="color: black; text-decoration: none">${list.subjName}</a></td>
		                    <td>${list.subjScore}</td>
		                    <td>${list.deptName}</td>
		                    <td>${list.subjProfessor}</td>
		                    <td>${list.lectDate} ${list.lectStart}~${list.lectEnd}</td>
		                    <td>${list.lectRoom}</td>
		                    <td style="color:blue; font-weight:bold">${list.lectureScore}</td>
		                  </tr>
                	</c:forEach>
                </tbody>
              </table>
            </div>
          </p>

          <p class="fs-5 fw-bold">수강신청목록</p>
          
          <p>
            <div style="overflow-y:auto; height:350px">
              <table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align:middle">
                <colgroup>
					<col width="7%">
					<col width="9%">
					<col width="9%">
					<col width="18%">
					<col width="6%">
					<col width="18%">
					<col width="9%">
					<col width="9%">
					<col width="*">
				</colgroup>
                <thead>
                  <tr style="color: white;">
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">#</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">학수번호</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">과목명</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">학점</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시간표</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의실</th>
                  </tr>
                </thead>
                <tbody>
                	<c:if test="${empty registerOKList}">
                		<tr>
                			<td colspan="9"> 조회된 Data가 없습니다</td>
                		</tr>
                	</c:if>
                	<c:if test ="${!empty registerOKList}">
	                	<c:forEach var="list" items="${registerOKList}">
	                		<tr>
			                    <td><a type="button" class="btn btn-outline-danger btn-sm" href="<%=application.getContextPath()%>/enrolmentDelete?subjectNo=${list.subjectNo}">삭제</a></td>
			                    <td>${list.subjectNo}</td>
			                    <td>${list.subjGroup}</td>
			                    <td><a href="<%=application.getContextPath()%>/lecturePlanDetail?subjectNo=${list.subjectNo}" style="color: black; text-decoration: none">${list.subjName}</a></td>
			                    <td>${list.subjScore}</td>
			                    <td>${list.deptName}</td>
			                    <td>${list.subjProfessor}</td>
			                    <td>${list.lectDate} ${list.lectStart}~${list.lectEnd}</td>
			                    <td>${list.lectRoom}</td>
			                  </tr>
	                	</c:forEach>
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
  
  <script type="text/javascript">
		function selectSubject(){
			
			var subjectNo = $('input#subjectNo').val();
			var subjGroup = $('#subjGroup option:selected').val();
			var subjName = $('input#subjName').val();
						
			$.ajax({
				type:"POST",
				url:"enrollmenAction",
				data: { 
					"subjectNo": subjectNo, 
					"subjGroup":subjGroup, 
					"subjName":subjName
				},
				success: function (data) {
					$("#selectList").html(data);
				}
			});
		}

		function scoreCheck(subjectNo){
			$.ajax({
				type:"GET",
				url:"enrolmentAdd",
				data: { 
					"subjectNo": subjectNo
				},
				success: function (data) {
					
					if(data.result =="fail"){ 
			        	alert("신청가능한 최대 학점 수를 초과할 수 없습니다.");
			        	}
					window.location.href = "<%=application.getContextPath()%>/enrollment";
				}
			});
		}
	</script>	
  
</body>

</html>