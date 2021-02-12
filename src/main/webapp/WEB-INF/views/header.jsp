<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<header class="d-flex flex-column flex-md-rows">

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark" style="background-color: #dcdcdc;">
      <div class="container-fluid">
        <a class="navbar-brand">
        	<img src="<%=application.getContextPath()%>/resources/img/logo_metanet.png" width="150" style="margin:0px 10px"/>
       	</a>
        <div class="collapse navbar-collapse" id="navbarText" style="margin-left:105px">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="<%=application.getContextPath()%>/studentInfo">학생정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=application.getContextPath()%>/gradeSemester">성적정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=application.getContextPath()%>/enrollment">수강신청</a>
            </li>
          </ul>
          <span class="navbar-text">
          </span>
        </div>
      </div>
    </nav>

  </header>