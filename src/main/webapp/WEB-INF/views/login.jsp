<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
crossorigin="anonymous"></script>

<style>
html,
body {
  height: 100%;
}

body {
  align-items: center;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
</style>

<title>메타넷 수강신청</title>
</head>
<body class="text-center">


	<header class="d-flex flex-column flex-md-rows">

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark" style="background-color: #dcdcdc;">
      <div class="container-fluid">
        <a class="navbar-brand">
        	<img src="<%=application.getContextPath()%>/resources/img/logo_metanet.png" width="150" style="margin:0px 10px"/>
       	</a>
       	<div class="collapse navbar-collapse" id="navbarText">          
          <span class="navbar-text" style="margin-right:40px; color:white;">
          	<b>수강신청 시스템</b>
          </span>
      </div>
    </nav>

</header>
	
	 <main style="position:absolute; top:50%; left:50%; transform: translateX(-50%) translateY(-50%)" class="form-signin">
	   <div class="rounded bg-dark" style="background-color:#212529; padding:20px;">
		<img src="<spring:url value='/resources/img/logo_metanet.png'/>">
		<form method="post" action="loginAction">
	        <p></p>
	        <input style="height:auto; padding:10px; font-size: 16px;" type="text" name="id" class="form-control" placeholder="학번" required autofocus>
	        <input style="height:auto; padding:10px; font-size: 16px;" type="password" name="pw" class="form-control" placeholder="비밀번호" required>
	        <p>
	        <c:if test="${error eq 'fail'}">
	        	 <span style="color:white"><strong>로그인 정보가 일치하지 않습니다.</strong></span>
	        </c:if>
	        </p>
	        <input class="w-100 btn btn-lg btn-secondary" type="submit" value="로그인"/>
	     	</form>
	   </div>
	 </main>
	 

   
</body>
</html>