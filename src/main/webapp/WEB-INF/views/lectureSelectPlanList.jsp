<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table class="table table-striped table-hover"
						style="border-collapse: collapse; text-align: center; vertical-align: middle">
	<colgroup>
		<col width="15%">
		<col width="15%">
		<col width="30%">
		<col width="20%">
		<col width="*">
	</colgroup>
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
		<c:if test="${empty subjectList}">
			<tr>
				<td colspan="5">조회된 Data가 없습니다.</td>
			</tr>	
		</c:if>
		<c:if test="${!empty subjectList}">
			<c:forEach var="list" items="${subjectList}"> 
				<tr>	
					<td>${list.subjSemester}</td>
					<td>${list.subjectNo}</td>
					<td><a href="<%=application.getContextPath()%>/lecturePlanDetail?subjectNo=${list.subjectNo}" style="color: black; text-decoration: none">${list.subjName}</a></td>
					<td>${list.deptName}</td>
					<td>${list.subjProfessor}</td>
				</tr>
			</c:forEach>
		</c:if>
		
	</tbody>

</table>
