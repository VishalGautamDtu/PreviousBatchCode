
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
  <script>
  $(document).ready(function() {
	    $('#example').DataTable();
	} );
  </script>
<style>
body {
    background-image: url("images/background.jpg");
}

</style>
</head>
<body>
<div class="container">
  <div class="jumbotron">
  <div align="center">
  
    <h1>Login Again</h1> 
</div>
  </div>
</div>
<div class="container">
<form action="check">

<div class="form-group">
<div align="center">
<div class="col-xs-4">
	<input id="username" class="form-control" placeholder="Enter username" type ="text" name="username">
</div> 

<div class="col-xs-4">
	<input type="password" class="form-control" id="pwd" placeholder="Enter password" name ="password">
</div>
</div>
</div>

<input type ="submit" value ="login">


</form>
</div>


</body>
</html>