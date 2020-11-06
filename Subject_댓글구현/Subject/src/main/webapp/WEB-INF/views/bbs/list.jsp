<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Poly Click</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/clean-blog.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
  integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<style type="text/css">

#table_text{font-family: 'Noto Sans KR', sans-serif;}
#table_tr td{text-align: center;}
#table_tr td a{text-decoration: none; list-style: none; color: black;}
#table_tr td a:hover{color: #0099a4;}
#side{font-family: 'Noto Sans KR', sans-serif;}
#side li{list-style: none; float: right; margin: 20px}
#side li a{color: black;} 
table{text-align: center;}
 
</style>

<title>Bbs_list</title>
<style>

</style>
</head>
<body>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">    
      <a class="navbar-brand" href="/">Poly Click</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../subject/list">강의목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../student/list">학생목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../study/list">수강신청목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../bbs/list">문의게시판</a>
          </li>
		<c:if test="${user == null}">
 		<li class="nav-item">
  			<a class="nav-link" href="/login">Login</a>
 		</li>
 		</c:if>

		 <c:if test="${sessionScope.user != null}">
		 <li class="nav-item">
				<a class="nav-link" href="logout">Logout</a> 
		<li class="nav-item">
			<a class="nav-link">Welcome to (${sessionScope.user.stuname})</a></li>
		</li>	
			</c:if>
        </ul>              
      </div>
     <div>
     <ul>
 </ul>
     
     </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container" style="height: 80px">
      <div class="row" hidden>
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
           	<h1>과목</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

		
<section style="width: 70%; margin: 0 auto;">
<div>
			<h2>Bbs List</h2>
			
		</div>
		<div id="table_text">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" style="text-align: center;">게시글번호</th>
						<th scope="col" style="text-align: center;">글제목</th>						
						<th scope="col" style="text-align: center;">작성자</th>
						<th scope="col" style="text-align: center;">작성날짜</th>
						<th scope="col" style="text-align: center;">조회수</th>
						<th scope="col" style="text-align: center;">관리</th>
					</tr>
				</thead>
				<tbody d="td_content">
					<c:choose>
						<c:when test="${list.size() > 0}">
							<c:forEach var="item" items="${list}">			
								<tr id="table_tr">
									<td>${item.bbsid}</a></td>
									<td><a href="${item.bbsid}/view">${item.bbstitle}</a></td>
									<td>${item.stuname}</td>
									<td><fmt:formatDate value="${item.bbsdate}" pattern="YYYY/MM/dd"></fmt:formatDate></td>
									<td>${item.bbscnt}</td>
									<td><a href="${item.bbsid}/delete">삭제</a> <a href="${item.bbsid}/update">변경</a></td>
								</tr>				
							</c:forEach>
						</c:when>						
						<c:otherwise>
							<tr>
								<td colspan="5">신청내역이 없습니다</td>
							</tr>						
						</c:otherwise>
					</c:choose>					
				</tbody>				
			</table>
			</div>
			
		<div id="table_text" style="text-align: center; padding: 20px">
			<form method="get" action="">
				<span>
					<select name="search">
						<option value="0">선택</option>
						<option value="1" ${pager.search == 1 ? 'selected' : ''}>게시글번호</option>
						<option value="2" ${pager.search == 2 ? 'selected' : ''}>글제목</option>
						<option value="3" ${pager.search == 3 ? 'selected' : ''}>작성자</option>
						<option value="4" ${pager.search == 4 ? 'selected' : ''}>작성날짜</option>
						<option value="5" ${pager.search == 5 ? 'selected' : ''}>조회수</option>
												
					</select>
				</span>
				<span>
					<input type="text" name="keyword" placeholder="검색어를 입력 해 주세요" value="${pager.keyword}">
				</span>
				<span>
					<input type="submit" value="검색">
				</span>
			</form>
		</div>
						
		<%-- 	<div style="text-align: center;">
				<ul>
				<li><a href="?page=1&${pager.query}">처음</a></li>
				<li><a href="?page=${pager.prev}&${pager.query}">이전</a></li>
				</ul>
				<ul>
					<c:forEach var="page" items="${pager.list}">
						<li class="${page == pager.page ? 'active' : ''}"><a href="?page=${page}&${pager.query}">${page}</a></li>					
					</c:forEach>
				</ul>
				<ul>
				<li><a href="?page=${pager.next}&${pager.query}">다음</a></li>
				<li><a href="?page=${pager.last}&${pager.query}">마지막</a></li>
				</ul>
			</div> --%>
			
			<div style="padding: 20px;">
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="?page=${pager.prev}&${pager.query}">Prev</a>
			    </li>
					<c:forEach var="page" items="${pager.list}">
						<li class="page-item ${page == pager.page ? 'active' : ''}"><a class="page-link" href="?page=${page}&${pager.query}">${page}</a></li>					
					</c:forEach>
<!-- 			    <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!-- 			    <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 			    <li class="page-item"><a class="page-link" href="#">3</a></li> -->
			    <li class="page-item">
			      <a class="page-link" href="?page=${pager.next}&${pager.query}">Next</a>
			    </li>
			  </ul>
			</nav>
			</div>
			
			
		<div id="side">
		<ul>
			<li><a href="add">글작성</a></li>
			<li><a href="../">처음으로</a></li>
		</ul>
		</div>
		</section>

<!-- Bootstrap core JavaScript -->
  	<script src="/resources/vendor/jquery/jquery.min.js"></script>
  	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
  	<script src="/resources/js/clean-blog.min.js"></script>
		
	<footer id="footer">
	<div id="footer_box">
		<%@ include file="include/footer.jsp" %>	
	</div>
	</footer>
		
</body>
</html>	

