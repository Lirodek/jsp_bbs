<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
		System.out.println((String) session.getAttribute("userID"));
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
%>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collpase" data-target="bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand"
			href="${pageContext.request.contextPath}/main.jsp">배광민 홈페이지</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li class="activce"><a
				href="${pageContext.request.contextPath}/main.jsp">메인</a></li>
			<li><a href="${pageContext.request.contextPath}/bbs.jsp">게시판</a></li>
		</ul>
		<%
				if(userID == null){%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">접속하기 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${pageContext.request.contextPath}/login.jsp">로그인</a>
					</li>
					<li><a href="${pageContext.request.contextPath}/join.jsp">회원가입</a>
					</li>
				</ul></li>
		</ul>
		<%
				} else {
			%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">회원관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a
						href="${pageContext.request.contextPath}/logoutAction.jsp">로그아웃</a>
					</li>
				</ul></li>
		</ul>


		<% 
				}
			%>

	</div>
</nav>
<hr />