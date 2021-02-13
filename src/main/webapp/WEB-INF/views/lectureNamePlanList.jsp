<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach var="list" items="${subjectList}"> 
	<tr>	
		<td>${list.subjSemester}</td>
		<td>${list.subjectNo}</td>
		<td><a href="<%=application.getContextPath()%>/lecturePlanDetail?subjectNo=${list.subjectNo}" style="color: black; text-decoration: none">${list.subjName}</a></td>
		<td>${list.deptName}</td>
		<td>${list.subjProfessor}</td>
	</tr>
</c:forEach>

	
	<!-- <tr>
		<td>2</td>
		<td>101002</td>
		<td><a href="#" style="color: black; text-decoration: none">컴퓨터개론</a></td>
		<td>컴퓨터공학과</td>
		<td>박교수</td>
	</tr>
	<tr>
		<td>1</td>
		<td>101004</td>
		<td><a href="#" style="color: black; text-decoration: none">Spring
				프레임워크</a></td>
		<td>소프트웨어공학과</td>
		<td>다람쥐</td>
	</tr>
	<tr>
		<td>1</td>
		<td>101001</td>
		<td><a href="#" style="color: black; text-decoration: none">객체지향
				프로그래밍</a></td>
		<td>컴퓨터공학과</td>
		<td>김교수</td>
	</tr>
	<tr>
		<td>1</td>
		<td>101005</td>
		<td><a href="#" style="color: black; text-decoration: none">컴파일러</a></td>
		<td>컴퓨터공학과</td>
		<td>송진국</td>
	</tr>
 -->

</tbody>
