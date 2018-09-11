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
<script type="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script type="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
  <script type="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script type="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<script>
var data = [
            {
                name: "bootstrap-table",
                stargazers_count: "526",
                forks_count: "122",
                description: "An extended Bootstrap table with radio, checkbox, sort, pagination, and other added features. (supports twitter bootstrap v2 and v3) "
            },
            {
                name: "multiple-select",
                stargazers_count: "288",
                forks_count: "150",
                description: "A jQuery plugin to select multiple elements with checkboxes :)"
            },
            {
                name: "bootstrap-show-password",
                stargazers_count: "32",
                forks_count: "11",
                description: "Show/hide password plugin for twitter bootstrap."
            },
            {
                name: "blog",
                stargazers_count: "13",
                forks_count: "4",
                description: "my blog"
            },
            {
                name: "scutech-redmine",
                stargazers_count: "6",
                forks_count: "3",
                description: "Redmine notification tools for chrome extension."
            },
            {
                name: "scutech-redmine1",
                stargazers_count: "6",
                forks_count: "3",
                description: "Redmine notification tools for chrome extension."
            }
        ];

        function nameFormatter(value) {
            return '<a href="https://github.com/wenzhixin/' + value + '">' + value + '</a>';
        }

        function starsFormatter(value) {
            return '<i class="glyphicon glyphicon-star"></i> ' + value;
        }

        function forksFormatter(value) {
            return '<i class="glyphicon glyphicon-cutlery"></i> ' + value;
        }

        $(function () {
            $('#table').bootstrapTable({
                data: data
            });
        });
</script>
<style>
body {
    background-image: url("images/background.jpg");
}

</style>
</head>
<body>

<div class="container">
	<%
		String uname = (String) request.getAttribute("uname");
	%>

<div class="container">
  <div class="jumbotron">
  <div align="center">
  
    <h1><% out.println(request.getAttribute("üname")); %></h1> 
</div>
  </div>
</div>
<div align="center">
<a href="showAll"><button type="button" class="btn">Today's trades</button></a>
</div>
</div>
</body>
</html>



