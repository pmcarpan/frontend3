<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>About Us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<c:url value="/resources/css/Styles.css" />" /> 

</head>

<body>
	<div class="jumbotron">
		<div class="container text-center">
			<h1>Online Store</h1>
			<p>Mission, Vision and Values</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/">Home</a></li>
					<li class="active"><a href="#">About Us</a></li>
					<li><a href="contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla
			ut pulvinar eros. Aenean vel nunc lobortis, rutrum tellus quis,
			congue nulla. Aliquam sit amet scelerisque erat.</p>
		<p>Duis feugiat lorem dolor, at blandit diam scelerisque nec.
			Donec ligula ipsum, pellentesque ut condimentum sed, vehicula eget
			nibh. Quisque vulputate nibh in nibh commodo, quis sodales nisl
			semper. Donec in accumsan libero. Nulla at dui tempor odio vehicula
			dignissim a vel urna. Fusce gravida tristique dolor eu aliquam. Donec
			ullamcorper viverra eros, sodales lobortis ante pharetra sit amet. In
			suscipit pulvinar augue, sed cursus enim molestie nec. Phasellus
			ornare orci semper augue convallis, porta consequat felis elementum.
			Proin sed nisl est. Integer non lectus efficitur, rutrum massa non,
			porttitor odio.</p>
	</div>

	<br>

	<footer class="container-fluid text-center">
		<p>
			<span class="glyphicon glyphicon-copyright-mark"></span> Online Store
			Copyright
		</p>
	</footer>

</body>

</html>