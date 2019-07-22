<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">

<head>
    <title>Login</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Interact is a tool for creating online quizzes that generate leads, segment your audience, and drive traffic to your website.
	It is built for businesses and has all the features you'll need to create your own lead generation quiz that grows your company."
    />
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- Meta tags -->
    
    <!-- font-awesome icons -->
    <link href="${pageContext.request.contextPath}/webjars/web/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="${pageContext.request.contextPath}/webjars/web/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">


</head>
<body>
   <br><br>
    <div class="w3layouts-two-grids">
	<!---728x90--->
        <div class="mid-class">
            <div class="img-right-side">
                <h3>Login to give exam</h3>
                <p>There are 3 levels. Pass Level 1 to go to Level 2 and so on. If you fail at any level, you will be automatically
                logged out. All the best!</p>
		
                <img src="${pageContext.request.contextPath}/webjars/web/images/b11.png" class="img-fluid" alt="">
            </div>
            <div class="txt-left-side">
                <h2>Login Here</h2>
                
                <form action='Verification' method='POST'>
                
                    <div class="form-left-to-w3l">
                        <span class="fa fa-user-o" aria-hidden="true"></span>
                        <input type="text" name="userName" placeholder=" UserName" required="">

                        <div class="clear"></div>
                    </div>
                    <div class="form-left-to-w3l ">

                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <input type="password" name="password" placeholder="Password" required="">
                        <div class="clear"></div>
                    </div>
                    <div class="main-two-w3ls">			
                        
                        <div class="left-side-forget">
                            <a href="#" class="for">Forgot password?</a>
                        </div>
                        <div class="right-side-forget">
                            <p style="color:red; font-size:10px;">${msg}</p>
                        </div>
                    </div>
 					                   
                    <div class="btnn">
                        <button type="submit">Login</button>
                    </div>
                </form>
                <div class="w3layouts_more-buttn">
                    <h3>Don't Have an account?
                        <a href="registration">Register Here
                        </a>
                    </h3>
                </div>
             </div>
     	   </div>
    	</div>
	<br>


		
		
</body>

</html>












<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/webjars/images/icons/favicon.ico"/> 
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/webjars/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100"  style="background-image: url('${pageContext.request.contextPath }/images/bg-01.jpg')">
		<div class="wrap-login100">
				<form class="login100-form validate-form" action='Verification'  method='POST'>
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="text" name="userName" placeholder="email" required>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password" required>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

			

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath }/webjarsvendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath }/webjarsvendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsvendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/webjarsjs/main.js"></script>

</body>
</html> --%>