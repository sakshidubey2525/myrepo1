<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
<% int a=(Integer)session.getAttribute("s1");
System.out.println("From result1"+a);
  if(a==3){%>
<a href="level">Next level</a>
Congratulations your eligible for next level
<%}
else if(a>=4) {%><a href="logout1">Logout</a>
<%}
else{%><a href="logout1">Logout</a>
Sorry Your fail<%}%>

</body>
</html>