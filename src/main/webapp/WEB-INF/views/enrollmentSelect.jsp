<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
          <td><a type="submit" class="btn btn-outline-success btn-sm" href="<%=application.getContextPath()%>/enrolmentAdd?subjectNo=${list.subjectNo}">신청</a></td>
          <td>${list.subjectNo}</td>
          <td>${list.subjGroup}</td>
          <td>${list.subjName}</td>
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
    