<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="Styles.css" />
</head>

<body>

	<div class="jumbotron">
		<div class="container text-center">
			<h1>Online Store</h1>
			<p>Mission, Vision and Values</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
		</div>

		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/">Home</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Login</a></li>
					<li><a href="register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="row">
			<div class="col-lg-4 col-lg-offset-4">
				<h2>
					Enter Login Credentials:<br> <br>
				</h2>
			</div>
		</div>

		<form action="DataReceiveTest.jsp" method="POST">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							class="form-control" name="username" id="username" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" name="pwd" id="pwd" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<button type="submit" class="btn btn-default">Login</button>
				</div>
			</div>
		</form>

		<br>
	</div>

	<footer class="container-fluid text-center">
		<p>
			<span class="glyphicon glyphicon-copyright-mark"></span> Online Store
			Copyright
		</p>
	</footer>

</body>

</html>