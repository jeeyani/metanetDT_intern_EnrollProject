<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1>로그인</h1>
<form method="post" action="loginAction">
	아이디<input type="text" name="id"  required="required"> <br>
	비밀번호<input type="password" name="pw" required="required"><br>
	<input type="submit" value="로그인">
	<input type="reset" value="취소" >

</form>