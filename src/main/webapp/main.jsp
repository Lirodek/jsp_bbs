<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
<title>배광민 웹사이트</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle = "collpase" data-target="bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="activce"><a href="${pageContext.request.contextPath}/main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null){%>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">접속하기 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li> <a href="login.jsp">로그인</a> </li>
									<li> <a href="join.jsp">회원가입</a> </li>
								</ul>
						</li>
					</ul>
					
					
					
					
					
			<%
				} else {
			%>
					<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">회원관리 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li> <a href="logoutAction.jsp">로그아웃</a> </li>
								</ul>
						</li>
					</ul>
			
			
			<% 
				}
			%>
			
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1 style="font-size:50px;">배광민 홈페이지</h1>
				<br />
				<p> 이 웹사이트는 부트스트랩으로 만든 JSP웹사이트입니다. </p>
				<p> 저의 포트폴리오를 올리기 위해 만들어봤습니다.</p>
				<p><a class="btn btn-primary btn-pull" href="${pageContext.request.contextPath}/contents/me.jsp" role="button">자세히 알아보기</a></p>
			</div>
		</div>
	</div>
	<div class="container">
	<h2 style="text-align: center;">포트폴리오</h2>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" ></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" style="margin: auto;">
				<div class="item active"> 
					<a href="${pageContext.request.contextPath}/portfolio/orderCock.pdf" target="_brank"><img src="${pageContext.request.contextPath}/images/img1.jpg" alt="" /></a>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/portfolio/togengo.pdf" target="_brank"><img src="${pageContext.request.contextPath}/images/img2.jpg" alt="" /></a>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/portfolio/orderCock.pdf" target="_brank"><img src="${pageContext.request.contextPath}/images/img3.png" alt="" /></a>
				</div>
			</div>
			<a class="left carousel-control"href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control"href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>