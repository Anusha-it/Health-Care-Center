<%@ page language ="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="ggg3.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=0.5" />
<style>

body{
	margin: 0;
	padding: 0;
                    background-size:cover;
	font-family: sans-serif;
}

header{
	background-image: url("image ice.jpg") ;
	width: 100%;
	height: 15%;
	padding: 0;
	color: black;
	text-align: center;
	font-family: 'Merienda';font-size: 30px;
}

nav ul{
	background-color:#0099e6;
	overflow: hidden;
	color: black;
	padding: 0;
	text-align: center;
	margin: 0;
	transition: max-height 1s;
}

nav ul li{
	display: inline-block;
	padding: 10px;
}

nav ul li a{
	text-decoration: none;
	color: inherit;
}

nav ul li:hover{
	background-color: Lightgrey;
}
.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  background-color: inherit;
  font-family: inherit; 
  margin: 0; 
}

.dropdown-content {
	overflow: hidden;
  display: none;
  position: absolute;
  background-color: pink;
  min-width: 200px;
  
}
.dropdown-content a {
  float: none;
  color: black;
  font-family: inherit;
  padding: 10px 14px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background-color:white;
}
.dropdown:hover .dropdown-content {
  display: block;
}

</style>
<meta charset="UTF-8">
<title>health care</title>
<link rel="stylesheet" type="text/css" href="pstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
</head>
<body>
<header>
<h1>Health Care Center</h1>
</header>
<nav>
<ul>
<li><a href="#">Home</a></li>
<li><a href="Register.jsp">Register</a></li>
<li><a href="Register2.jsp">View Registry</a></li>
<li><div class="dropdown"><button class="dropbtn">History <i class="fa fa-caret-down"></i></button>
<div class="dropdown-content">
<a href="history.jsp">Insert details</a>
<a href="viewhistory.jsp">View details</a>
<a href="updatehistory.jsp">Update details</a>
<li><div class="dropdown"><button class="dropbtn">Drugs <i class="fa fa-caret-down"></i></button>
<div class="dropdown-content">
<a href="insert.jsp">Insert Drugs</a>
<a href="update.jsp">Update Drugs</a>
<a href="stock.jsp">Stock</a>
<a href="check.jsp">Check</a>
</div>
</div>
</li>
</ul>
</nav>

<script src="https://code.jquery.com/jquery-3.3.1.js"
integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
crossorigin="anonymous"></script>
</body>
</html>
