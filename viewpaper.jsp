<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"  isELIgnored="false"%>
    <%@page import="com.lti.model.Question" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  background-color: #e4dbbf;
}
td{
font-family: Calibri;
font-weight: bold;
color: #DC5B21;
}
table {
  border: 3px solid black;
   width: 100%;
}
th {
  height: 50px;
font-family: Calibri;
font-weight: bold;
color: #DC5B21;
text-align:left;
}
input[type=text], select {
  width: 100%;
  padding: 12px 30px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit]:hover {
 width: 100%;
 }
 div {
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
}

</style>
</head>
<body>
<form:form action="evalute"  method="post">
<h3>Questions</h3>
<%-- <%List <Question>list1 =  (List<Question>)session.getAttribute("list"); %>  --%>

	<table class="tg" border="1">
		
	<%Question ques=(Question)session.getAttribute("ques");%>
		

	
		<tr>
		
		
		<tr><th>${ques.question}</th></tr>
			<tr><td><input  type="radio"  name ="option" value="1">${ques.option1}</td></tr>
		<tr>	<td><input  type="radio"  name ="option" value="2">${ques.option2}</td></tr>
			<tr><td><input  type="radio"  name ="option" value="3">${ques.option3}</td></tr>
			<tr><td><input  type="radio"  name ="option" value="4">${ques.option4}</td></tr>
<%-- </c:forEach> --%>
		</table><br>

	<button type="submit" value="Next">Next</button> 
	
	</form:form>



</body>
</html>