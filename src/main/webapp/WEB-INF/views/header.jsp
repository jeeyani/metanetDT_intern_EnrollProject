<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<header class="d-flex flex-column flex-md-rows">

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark" style="background-color: #dcdcdc;">
      <div class="container-fluid">
        <a class="navbar-brand"><img src="<%=application.getContextPath()%>/resources/img/logo_metanet.png" width="100" height="20" style="margin:0px 10px"/>수강신청</a>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link">학생정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">성적정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">수강신청</a>
            </li>
          </ul>
          <span class="navbar-text">
            <a href="<%=application.getContextPath()%>/logoutAction" style="text-decoration: none">로그아웃</a>
          </span>
        </div>
      </div>
    </nav>

  </header>