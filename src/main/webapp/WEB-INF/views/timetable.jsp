<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

  <title>메타대 학사정보시스템</title>
</head>

<body class="bg-light">
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

  <div class="container-fluid">
    <div class="row">

	<jsp:include page="/WEB-INF/views/sidebarRegister.jsp"></jsp:include>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        
        <div class="p-4 p-md-5 mb-4 rounded">

          <div>
            <table class="table" style="border-collapse: collapse; text-align: center; vertical-align:middle">              
              <thead>
                <tr style="color: white;">
                  <th style="position:sticky; background-color: lightslategrey; top:0px">이수구분</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">교과목명</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">시수</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">개설학과</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">담당교수</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">시간표</th>
                  <th style="position:sticky; background-color: lightslategrey; top:0px">강의실</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td>전공심화</td>
                  <td>Spring 프레임워크</td>
                  <td>3</td>
                  <td>소프트웨어공학과</td>
                  <td>다람쥐</td>
                  <td>목 6~7</td>
                  <td>PL실</td>
                </tr>
                <tr>
                  <td>전공핵심</td>
                  <td>객체지향</td>
                  <td>2</td>
                  <td>컴퓨터공학과</td>
                  <td>사과몽</td>
                  <td>화 2~4</td>
                  <td>멀티미디어실습실</td>
                </tr>
                <tr>
                  <td>전공필수</td>
                  <td>C++ 프로그래밍</td>
                  <td>3</td>
                  <td>컴퓨터공학과</td>
                  <td>딸기몽</td>
                  <td>월 7~8</td>
                  <td>PC실</td>
                </tr>
                <tr>
                  <td>전공심화</td>
                  <td>컴파일러</td>
                  <td>3</td>
                  <td>컴퓨터공학과</td>
                  <td>송진국</td>
                  <td>수 1~4</td>
                  <td>201호</td>
                </tr>
                <tr>
                  <td>전공필수</td>
                  <td>자바 프로그래밍</td>
                  <td>3</td>
                  <td>소프트웨어공학과</td>
                  <td>강호동</td>
                  <td>목 1~4</td>
                  <td>203호</td>
                </tr>
                <tr>
                  <td>전공필수</td>
                  <td>자료구조</td>
                  <td>3</td>
                  <td>컴퓨터공학과</td>
                  <td>김봉기</td>
                  <td>화 6~7</td>
                  <td>PL실</td>
                </tr>
                <tr>
                  <td>전공필수</td>
                  <td>데이터베이스</td>
                  <td>3</td>
                  <td>컴퓨터공학과</td>
                  <td>강창구</td>
                  <td>금 1~2</td>
                  <td>201호</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div class="text-end fs-5 fw-bold">
            총 수강신청학점: 7과목  20학점
          </div>

            <div class="row">
              <div class="col-12">
                <br>
                <h3>1학기 시간표</h3>
                <br>

                <table class="table table-bordered">
                  <tbody>
                    <tr>
                      <th style="background-color: rgb(187, 196, 204);;">학번</th>
                      <td>2015112131</td>
                      <th style=" background-color: rgb(187, 196, 204);;">성명</th>
                      <td>강창기</td>
                      <th style=" background-color: rgb(187, 196, 204);;">전공</th>
                      <td>소프트웨어공학과</td>
                    </tr>
                  </tbody>
                </table>    
                
                <table class="table table-bordered text-center" >
                  <tr>
                    <th style="width:10%"></th>
                    <th style="width:18%">월</th>
                    <th style="width:18%">화</th>
                    <th style="width:18%">수</th>
                    <th style="width:18%">목</th>
                    <th style="width:18%">금</th>
                  </tr>
                  <tr>
                    <th >1교시</th>
                    <td></td>
                    <td></td>
                    <td>컴파일러</td>
                    <td>자바 프로그래밍</td>
                    <td>데이터베이스</td>
                  </tr>
                  <tr>
                    <th>2교시</th>
                    <td></td>
                    <td>객체지향</td>
                    <td>컴파일러</td>
                    <td>자바 프로그래밍</td>
                    <td>데이터베이스</td>
                  </tr>
                  <tr>
                    <th>3교시</th>
                    <td></td>
                    <td>객체지향</td>
                    <td>컴파일러</td>
                    <td>자바 프로그래밍</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>4교시</th>
                    <td></td>
                    <td>객체지향</td>
                    <td>컴파일러</td>
                    <td>자바 프로그래밍</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>5교시</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>6교시</th>
                    <td></td>
                    <td>자료구조</td>
                    <td></td>
                    <td>Spring 프레임워크</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>7교시</th>
                    <td>C++ 프로그래밍</td>
                    <td>자료구조</td>
                    <td></td>
                    <td>Spring 프레임워크</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>8교시</th>
                    <td>C++ 프로그래밍</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </table>

              </div>
            </div>
          </div>

      </main>

    </div>
  </div>
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>