<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>ADMIN</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/webjars/admin/css/bootstrap.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/admin/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/webjars/admin/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>

		<!-- Header -->
		<header id="header" class="transparent-nav">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						
					</div>
					<!-- /Logo -->

					<!-- Mobile toggle -->
					<button class="navbar-toggle">
						<span></span>
					</button>
					<!-- /Mobile toggle -->
				</div>

				<!-- Navigation -->
				<nav id="nav">
					<ul class="main-menu nav navbar-nav navbar-right">
						
						
						<li><a href="index1">Logout</a></li>
						
					</ul>
				</nav>
				<!-- /Navigation -->

			</div>
		</header>
		<!-- /Header -->

		<!-- Home -->
		<div id="home" class="hero-area">

			<!-- Backgound Image -->
			<div class="bg-image bg-parallax overlay" style="background-image:url(${pageContext.request.contextPath}/webjars/admin/img/home-background.jpg)"></div>
			<!-- /Backgound Image -->

			<div class="home-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<h1 class="white-text">Welcome Admin!</h1>
						
							<p class="lead white-text">You can now edit the quiz questions. To edit the questions click on the Update button below.</p>
							<a class="main-button icon-button" onclick="window.location.href='questions'" id="myButton">Update!</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /Home -->

		<!--<!-- About -->
		<div id="about" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<div class="col-md-6">
						<div class="section-header">
							<h2>Welcome to Admin Panel</h2>
							<p class="lead">A platform to add/update questionnaire. </p>
						</div>

						<!-- feature -->
						<div class="feature">
							<i class="feature-icon fa fa-flask"></i>
							<div class="feature-content">
								<h4>Multiple Tests</h4>
								<p>You can add questions for different tests on a single panel.</p>
							</div>
						</div>
						<!-- /feature -->

						<!-- feature -->
						<div class="feature">
							<i class="feature-icon fa fa-users"></i>
							<div class="feature-content">
								<h4>Different levels</h4>
								<p>Upto 3 levels can be set for a single test.</p>
							</div>
						</div>
						<!-- /feature -->

						<!-- feature -->
						

					</div>

					<div class="col-md-6">
						<div class="about-img">
							<img src="${pageContext.request.contextPath}/webjars/admin/img/about.png" alt="">
						</div>
					</div>

				</div>
				<!-- row -->

			</div>
			<!-- container -->
		</div>
		<!-- /About -->

		<!-- /Footer -->

		<!-- preloader -->
		<div id='preloader'><div class='preloader'></div></div>
		<!-- /preloader -->


		<!-- jQuery Plugins -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/admin/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/admin/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/webjars/admin/js/main.js"></script>

	</body>
</html>



<%-- <!DOCTYPE html>
<html lang="en">
<head>
  <title>Administrator</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/webjars/Admcss/bootstrap.min.css" >
  <script src="${pageContext.request.contextPath }/webjars/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/webjars/js/bootstrap.min.js"></script>
 --%><%--   <link rel="stylesheet" href="${pageContext.request.contextPath }/webjars/Admcss/adm_dash.css" >
 
</head>
<body>
<div>

  
</div>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="index.jsp">Home</a></p>
      <p><a href="logout">Logout</a></p>
     
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome back Admin!</h1>
      <hr>
      <h3> You have accessed the quiz editing screen as above, you can add questions now.</h3> 
      <hr>
       </h2>1. Click the 'Add' to add new questions to your question set. </h2><br>
    </h2>  2. When it opens up, choose to add a new question and provide to correct answer for the following question. </h2>
     <br> <button onclick="window.location.href='questions'" id="myButton" class="float-left submit-button" >Update</button></h3><br><br>
 
 
 
    </div>
   
  </div>
</div>



</body>
</html>
 --%>