<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" /> 
<spring:url var="images" value="/resources/images" /> 
 
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<title>Black &amp; White - ${title} </title>

		<!-- meta -->
		<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

	    <!-- css -->
		<link rel="stylesheet" href="${css}/bootstrap.min.css">
		<link rel="stylesheet" href="${css}/ionicons.min.css">
		<link rel="stylesheet" href="${css}/pace.css">
	    <link rel="stylesheet" href="${css}/myapp.css">

	    <!-- js -->
	    <script src="${js}/jquery-2.1.3.min.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	    <script src="${js}/pace.min.js"></script>
	    <script src="${js}/modernizr.custom.js"></script>
	</head>

	<body>
		<div class="container">	
			<header id="site-header">
				<div class="row">
					<div class="col-md-4 col-sm-5 col-xs-8">
						<div class="logo">
							<h1><a href="index.html"><b>Black</b> &amp; White</a></h1>
						</div>
					</div><!-- col-md-4 -->
					<div class="col-md-8 col-sm-7 col-xs-4">
						
						
						<!--  Navigation -->
						<%@include file="./shared/navbar.jsp" %>
						
						
					</div><!-- col-md-8 -->
				</div>
			</header>
		</div>

		<!-- Page Content -->
		<!-- Loading the home content -->
		<c:if test="${userClickHome == true }">
			<%@include file="home.jsp" %>
		</c:if>

		<!-- Loading the About content -->
		<c:if test="${userClickAbout == true }">
			<%@include file="about.jsp" %>
		</c:if>
		
		<!-- Loading the About content -->
		<c:if test="${userClickContact == true }">
			<%@include file="contact.jsp" %>
		</c:if>
		
		
		<!-- Footer Content -->
		<%@include file="./shared/footer.jsp" %>

		<!-- Mobile Menu -->
		<div class="overlay overlay-hugeinc">
			<button type="button" class="overlay-close"><span class="ion-ios-close-empty"></span></button>
			<nav>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="full-width.html">Blog</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>
		</div>

		<script src="${js}/script.js"></script>

	</body>
</html>

