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

<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
  <title>메타대 학사정보시스템</title>
</head>

<body class="bg-light">
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

  <div class="container-fluid">
    <div class="row">
    
		<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>
      

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        
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
                <td><c:out value="${today}"/>학년도 "학기표시고민"학기</td>
                <td>${studentList.studentId}</td>
                <td>${studentList.name}</td>
                <td>${studentList.deptName}</td>
              </tr>
            </table>
          </p>

          
          
          <p class=" col-auto fs-5 fw-bold" style="width:300px">수강가능목록</p>
          <div class="row g-3 align-items-center">
            

              <div class="col-auto">
                <label for="deptno" class="col-form-label" style="font-weight:bold">학수번호</label>
              </div>
              <div class="col-auto">
                <input type="text" id="deptno" class="form-control" aria-describedby="passwordHelpInline">
              </div>
              <div class="col-auto">
                <label for="deptgroup" class="col-form-label" style="font-weight:bold">이수구분</label>
              </div>
              <div class="col-auto">
                <select id="deptgroup" class="form-select">
                  <option selected>선택</option>
                  <option value="1">전공핵심</option>
                  <option value="2">전공필수</option>
                  <option value="3">전공심화</option>
                  <option value="4">교양필수</option>
                </select>
              </div>
              <div class="col-auto">
                <label for="deptname" class="col-form-label" style="font-weight:bold">과목명</label>
              </div>
              <div class="col-auto">
                <input type="text" id="deptname" class="form-control" aria-describedby="passwordHelpInline">
              </div>
              <div class="col-auto">
                <button type="button" class="btn btn-outline-dark">조회</button>
              </div>

          </div>
          <p></p>

            <div style="overflow-y:auto; height:300px">
              <table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align:middle">
                <thead>
                  <tr style="color: white;">
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">#</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">학수번호</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">과목명</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시간표</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의실</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의평가점수</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00110</td>
                    <td>전공심화</td>
                    <td>Spring 프레임워크</td>
                    <td>3</td>
                    <td>소프트웨어공학과</td>
                    <td>다람쥐</td>
                    <td>목 6~7</td>
                    <td>PL실</td>
                    <td style="color:blue; font-weight:bold">4.6</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00130</td>
                    <td>전공핵심</td>
                    <td>객체지향</td>
                    <td>2</td>
                    <td>컴퓨터공학과</td>
                    <td>사과몽</td>
                    <td>화 2~4</td>
                    <td>멀티미디어실습실</td>
                    <td style="color:red; font-weight:bold">2.7</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00211</td>
                    <td>전공필수</td>
                    <td>C++ 프로그래밍</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>딸기몽</td>
                    <td>월 7~8</td>
                    <td>PC실</td>
                    <td style="color:blue; font-weight:bold">4.3</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00510</td>
                    <td>전공심화</td>
                    <td>컴파일러</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>송진국</td>
                    <td>수 1~4</td>
                    <td>201호</td>
                    <td style="color:darkgoldenrod; font-weight:bold">3.5</td>
                  </tr>
                  
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00110</td>
                    <td>전공심화</td>
                    <td>Spring 프레임워크</td>
                    <td>3</td>
                    <td>소프트웨어공학과</td>
                    <td>다람쥐</td>
                    <td>목 6~7</td>
                    <td>PL실</td>
                    <td style="color:blue; font-weight:bold">4.6</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00130</td>
                    <td>전공핵심</td>
                    <td>객체지향</td>
                    <td>2</td>
                    <td>컴퓨터공학과</td>
                    <td>사과몽</td>
                    <td>화 2~4</td>
                    <td>멀티미디어실습실</td>
                    <td style="color:blue; font-weight:bold">4.2</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00211</td>
                    <td>전공필수</td>
                    <td>C++ 프로그래밍</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>딸기몽</td>
                    <td>월 7~8</td>
                    <td>PC실</td>
                    <td style="color:blue; font-weight:bold">4.3</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-success btn-sm">신청</button></td>
                    <td>00510</td>
                    <td>전공심화</td>
                    <td>컴파일러</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>송진국</td>
                    <td>수 1~4</td>
                    <td>201호</td>
                    <td style="color:darkgoldenrod; font-weight:bold">3.5</td>
                  </tr>
                </tbody>
                
              </table>
            </div>
          </p>

          <p class="fs-5 fw-bold">수강신청목록</p>
          
          <p>
            <div style="overflow-y:auto; height:200px">
              <table class="table table-striped table-hover" style="border-collapse: collapse; text-align: center; vertical-align:middle">
                <thead>
                  <tr style="color: white;">
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">#</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px;">학수번호</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">과목명</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">시간표</th>
                    <th style="position:sticky; background-color: lightslategrey; top:0px">강의실</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><button type="button" class="btn btn-outline-danger btn-sm">삭제</button></td>
                    <td>00110</td>
                    <td>전공심화</td>
                    <td>Spring 프레임워크</td>
                    <td>3</td>
                    <td>소프트웨어공학과</td>
                    <td>다람쥐</td>
                    <td>목 6~7</td>
                    <td>PL실</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-danger btn-sm">삭제</button></td>
                    <td>00130</td>
                    <td>전공핵심</td>
                    <td>객체지향</td>
                    <td>2</td>
                    <td>컴퓨터공학과</td>
                    <td>사과몽</td>
                    <td>화 2~4</td>
                    <td>멀티미디어실습실</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-danger btn-sm">삭제</button></td>
                    <td>00211</td>
                    <td>전공필수</td>
                    <td>C++ 프로그래밍</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>딸기몽</td>
                    <td>월 7~8</td>
                    <td>PC실</td>
                  </tr>
                  <tr>
                    <td><button type="button" class="btn btn-outline-danger btn-sm">삭제</button></td>
                    <td>00510</td>
                    <td>전공심화</td>
                    <td>컴파일러</td>
                    <td>3</td>
                    <td>컴퓨터공학과</td>
                    <td>송진국</td>
                    <td>수 1~4</td>
                    <td>201호</td>
                  </tr>
                  
                  
                </tbody>

                
              </table>
            </div>
          </p>
        </div>
      </main>

    </div>
  </div>
  
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
  
</body>

</html>