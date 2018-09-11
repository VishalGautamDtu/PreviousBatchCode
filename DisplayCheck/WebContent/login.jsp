<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String mess =(String) request.getAttribute("message");
%>
<%= mess%>
<form action="check">
USERNAME: <input type ="text" name="username"><br>
PASSWORD: <input type="text" name ="password"><br>
<input type ="submit" value ="login">
</form>
 
</body>
</html>