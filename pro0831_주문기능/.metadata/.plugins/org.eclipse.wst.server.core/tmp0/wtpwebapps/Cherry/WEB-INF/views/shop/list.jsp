<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	
<!-- j.query -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<style>
 body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
 ul { padding:0; margin:0; list-style:none;  }

 div#root { width:90%; margin:0 auto; }
 
 header#header { font-size:60px; padding:20px 0; }
 header#header h1 a { color:#000; font-weight:bold; }
 
 nav#nav { padding:10px; text-align:right; }
 nav#nav ul li { display:inline-block; margin-left:10px; }

 section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
 section#container::after { content:""; display:block; clear:both; }
 aside { float:left; width:200px; }
/*  div#container_box { float:right; width:calc(100% - 200px - 20px); } */


 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
 aside ul li { text-align:center; margin-bottom:10px; }
 aside ul li a { display:block; width:100%; padding:10px 0;}
 aside ul li a:hover { background:#eee; }
 
 aside#aside li { position:relative; }
aside#aside li:hover { background:#eee; }   
aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
aside#aside li:hover > ul.low { display:block; }
aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
aside#aside li:hover > ul.low li a:hover { background:#fff;}
aside#aside li > ul.low li { width:180px; }
 
 a { color:#05f; text-decoration:none; }
 a:hover { text-decoration:underline; }
 
footer#footer{background:#f9f9f9; padding:20px; display:; margin: 0 auto; padding-left: 20px;  font-weight: 700; }
 
</style>

	<style>
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
</style>
	
	
</head>
<body>

<div id="root">
<header id="header">
<div id="header_box">
	<%@include file="../include/header.jsp" %>
</div>
</header>

<nav id="nav">
	<div id="nav_box">
		<%@ include file="../include/nav.jsp" %>	
	</div>
</nav>

<section id="container">
	<div id="container_box">
	
		<aside id="aside">
				<%@ include file="../include/aside.jsp" %>
			</aside>
			

		<section id="content">
				
				<ul>
					<c:forEach items="${list}" var="list">
					<li>
						<div class="goodsThumb">
							<img src="${list.gdsThumbImg}">
						</div>	
						<div class="goodsName">
							<a href="/shop/view?n=${list.gdsNum}">${list.gdsName}</a>
						</div>
					</li>
					</c:forEach>
				</ul>

			</section>
	
		
	</div>
</section>

<footer id="footer">
	<div id="footer_box">
		<%@ include file="../include/footer.jsp" %>	
	</div>

</footer>

</div>

</body>
</html>
