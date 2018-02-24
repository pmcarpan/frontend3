<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Contact</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
					<li><a href="about">About Us</a></li>
					<li class="active"><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<p>For any further queries or issues, send us an email.</p>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Nature of issue</th>
						<th>Corresponding contact information</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>For product or order related queries</td>
						<td>customercare@onlinestore.com</td>
					</tr>
					<tr>
						<td>For business or collaboaration related queries</td>
						<td>business@onlinestore.com</td>
					</tr>
					<tr>
						<td>For all other purposes</td>
						<td>other@onlinestore.com</td>
					</tr>
				</tbody>
			</table>
		</div>
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