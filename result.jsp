<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> <%@page import="com.lti.model.Exam" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th {
  text-align: left;
}
.header {
  border: 4px solid black;
  padding: 10px ;
  background-color: rgb(37, 40, 41);
  color: red;
  font-family: "Times New Roman", Times, serif;

  font-size: 20px;
}
button {
  background-color: rgb(233, 37, 37); /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<div class="header">
       <center>CONGRATULATION!!</center>
      </div>
      <table>
  <tr>
  <th>
<center><h1>Click NEXT for next level.</h1></center>
<% int a=(Integer)session.getAttribute("s1");

  if(a>=2){%>
<center><a href="level"><button >Next</button></a></center>

<%}
else{%><a href="logout1">Logout</a>
Sorry Better Luck next time<%}%>

<center><button onclick="window.location.href='Student'" id="myButton" class="float-left submit-button" >BACK</button></center>
</th>
 
  </tr>
  
</table>
</body>
</html>


