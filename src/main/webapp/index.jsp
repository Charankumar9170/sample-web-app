<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Form Example</title>

<script src="formHandler.js"></script>

</head>

<body>

<h2>User Form</h2>

<form id="userForm" method="post" action="index.jsp">

Name:
<input type="text" id="name" name="name"><br><br>

Email:
<input type="email" id="email" name="email"><br><br>

<button type="button" onclick="handleForm()">Submit</button>

</form>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");

if(name != null && email != null){
%>

<h3>Received Data</h3>
Name: <%= name %> <br>
Email: <%= email %>

<%
}
%>

</body>
</html>
</html>
