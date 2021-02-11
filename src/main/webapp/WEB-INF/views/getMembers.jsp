<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    <h1>모든 회원 리스트</h1>
    <ul>       
    <c:forEach var="tmp" items="${list}">
    	<li>  <c:out value="${tmp}" />    	</li>    
    </c:forEach>
    </ul>
    