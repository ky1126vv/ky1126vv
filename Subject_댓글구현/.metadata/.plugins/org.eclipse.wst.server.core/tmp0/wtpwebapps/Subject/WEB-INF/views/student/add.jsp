<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
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

section{width: 80%; margin: 0 auto;}
.form-signin {margin: auto; padding: 30px;}
#container{font-family: 'Noto Sans KR', sans-serif;}
</style>



<title>Studnet_add</title>
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
	
	<section>
	<div id="container" style="margin: 0 auto; text-align: center;">
	
		<h1>학생등록</h1>
		<hr>
		<form method="post" class="form-signin">
			
			<div style="text-align: center; margin: 0 auto;">
			
				<label>학생이름</label>
				<input name="stuname" type="text" class="form-control" style="width: 500px; margin: 0 auto;">
			</div>
			<div>			
				<label>비밀번호</label>
				<input name="stupass" type="text" class="form-control" style="width: 500px; margin: 0 auto;">
			</div>
			<div>		
				<label>학과</label>
				<input name="studepart" type="text" class="form-control" style="width: 500px; margin: 0 auto;">
			</div>

			<div style="text-align: center; padding: 20px">
				<button type="submit" class="btn btn-dark btn-sm">등록</button>
			</div>			
		</form>
		</div>
		</section>
		
		<footer id="footer">
	<div id="footer_box">
		<%@ include file="include/footer.jsp" %>	
	</div>
	</footer>
		
	</div>
	</div>
	
</body>
</html>