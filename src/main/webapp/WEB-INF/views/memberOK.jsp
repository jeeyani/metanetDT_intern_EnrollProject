<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${loginOK ==null }">
	<script>
		location.href="loginUI";
	</script>
</c:if>

    ${loginOK}님 회원 전용 페이지 입니다. 
    <a href="logoutAction">로그아웃</a>
    <br>
    <a href="getMembers">회원정보 보기</a>