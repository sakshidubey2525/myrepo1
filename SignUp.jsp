<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/webjars/fonts1/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	
<!-- Main css -->
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath }/webjars/css/style.css"> --%>

</head>
<body>
<div class="d-flex flex-row p-4">

<div class="container p-3 mb-2 float-center">
<h1 class="text-center">Register to give examination</h1>
<br><br>
<img class="rounded mx-auto d-block" alt="registerationimage" src="http://img.clipartlook.com/test-20clipart-exam-clipart-1551_1600.jpg"  height=400 width=400>
</div>
	<div class="container p-3 mr-8 bg-light text-dark col-4">

		<form:form action="add" method="POST" modelAttribute="register1"
			class="register-form" id="register-form">
			<h2>Student Registration Form</h2>


			<c:if test="${!empty register1.userName}">
				<br />
				
				<form:label path="userId">
					<spring:message text="User ID" />
				</form:label>
				<form:input path="userId" readonly="true" size="10" disabled="true" />
				<form:hidden path="userId" />
			</c:if>


			
				<div class="form-group">
					<label for="name">Full Name:</label> <input class="form-control"  type="text"
						name="userName" id="name" required />
				</div>

			
			<div class="form-group">
				<label for="email">Email ID:</label> <input type="email" class="form-control"
					name="userEmail" id="email" required />
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input class="form-control" type="password"
					name="password" id="password" required />
			</div>
			<div class="form-row">
			<div class="form-group col-6">
				<label for="mobileNumber">Mobile Number:</label> <input class="form-control"  type="tel"
					name="phoneNo" id="phoneNo" pattern="[789][0-9]{9}" required />
			</div>
			<div class="form-group col-6">
				<label for="course">Qualification:</label>
				<div class="form-select">
					<select required name="qualification" id="course" class="form-control">
						<option name="qualification" value="BE">BE</option>
						<option name="qualification" value="ME">ME</option>
						<option name="qualification" value="MCA">MCA</option>
					</select> <!-- <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span> -->
				</div>
			
			</div>
			</div>
			

			<div class="form-row">
				<div class="form-group col-6">
					<label for="state">State:</label>
					<div class="form-select">
						<select required name="State" id="state" class="form-control">
							<option value=""></option>
							<option value="Maharashtra">Maharashtra</option>
							<!--   <option value="Punjab">Punjab</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Uttar pradesh">Uttar pradesh</option>
                                        <option value="Himachal">Himachal</option> -->
						</select> <!-- <span class="select-icon">
						<i class="zmdi zmdi-chevron-down"></i></span> -->
					</div>
				</div>
							<div class="form-group col-6">
					<label for="city">City:</label>
					<div class="form-select">
						<select required name="city" id="city" class="form-control">
							<option value=""></option>
							<option value="Mumbai">Mumbai</option>
							<option value="Navi Mumbai">Navi Mumbai</option>
						</select> <!-- <span class="select-icon"><i
							class="zmdi zmdi-chevron-down"></i></span> -->
					</div>
				</div>
			</div>


			

	
			<div>
				<label>Captcha</label>
				<div class="input-group">
					<div class="capbox">

						<div class=" alert alert-link alert-success col-6" id="CaptchaDiv"></div>

						<div class="capbox-inner">
							Type the above number:<br>
							 <input type="hidden" class="form-control"
								id="txtCaptcha"> <input type="text" name="CaptchaInput" class="form-control"
								id="CaptchaInput" size="15"><br>

						</div>
					</div>
				</div>
			</div>




			<div class="form-submit">
			
					<input type="submit" value="Submit Form" class="btn btn-outline-success btn-lg btn-block"
					class="submit" name="submit" id="submit"
					onClick="return checkform(this);" />
			</div>
			
		</form:form>
	</div>
	</div>


	<!-- JS -->
	<script
		src="${pageContext.request.contextPath }/webjars/vendorsignup/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/webjars/js/main1.js"></script>

	<script type="text/javascript">
		// Captcha Script

		function checkform(theform) {
			var why = "";

			if (theform.CaptchaInput.value == "") {
				why += "- Please Enter CAPTCHA Code.\n";
			}
			if (theform.CaptchaInput.value != "") {
				if (ValidCaptcha(theform.CaptchaInput.value) == false) {
					why += "- The CAPTCHA Code Does Not Match.\n";
				}
			}
			if (why != "") {
				alert(why);
				return false;
			}
		}

		var a = Math.ceil(Math.random() * 9) + '';
		var b = Math.ceil(Math.random() * 9) + '';
		var c = Math.ceil(Math.random() * 9) + '';
		var d = Math.ceil(Math.random() * 9) + '';
		var e = Math.ceil(Math.random() * 9) + '';

		var code = a + b + c + d + e;
		document.getElementById("txtCaptcha").value = code;
		document.getElementById("CaptchaDiv").innerHTML = code;

		// Validate input against the generated number
		function ValidCaptcha() {
			var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
			var str2 = removeSpaces(document.getElementById('CaptchaInput').value);
			if (str1 == str2) {
				return true;
			} else {
				return false;
			}
		}

		// Remove the spaces from the entered and generated code
		function removeSpaces(string) {
			return string.split(' ').join('');
		}
	</script>


</body>
</html>
