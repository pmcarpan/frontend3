<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Online Store</title>
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
					<li class="active"><a href="#">Home</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/LaptopImg.jpg" alt="Laptop" style="height:600px;width:100%;"
							class="img-responsive center-block">
				</div>

				<div class="item">
					<img src="images/TVImg.jpe" alt="LED TV" 
							class="img-responsive center-block">
				</div>

				<div class="item">
					<img src="images/HeadphoneImg.jpe" alt="Headphones" 
							class="img-responsive center-block">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<br>

	<!-- Add max-width to images -->
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">NEW YEAR DEAL</div>
					<div class="panel-body">
						<img src="images/SmartphonesImg.jpe"
							class="img-responsive center-block" 
							style="max-height: 259px; max-width: 194px;" alt="Smartphones">
					</div>
					<div class="panel-footer">Flat 5% discount on all smartphones</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-danger">
					<div class="panel-heading">NEW ARRIVAL OFFER</div>
					<div class="panel-body">
						<img src="images/PredatorImg.jpe"
							class="img-responsive center-block" 
							style="max-height: 275px; max-width: 183px;" alt="Acer Predator">
					</div>
					<div class="panel-footer">Flat 8% discount on the new Acer Predator</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">NEW YEAR DEAL</div>
					<div class="panel-body">
						<img src="images/ProjectorImg.jpe"
							class="img-responsive center-block" 
							style="max-height: 259px; max-width: 194px;" alt="Projector">
					</div>
					<div class="panel-footer">Buy 2 projectors and get a gift card</div>
				</div>
			</div>
		</div>
	</div>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">DISCOUNT OFFER</div>
					<div class="panel-body">
						<img src="images/Headphone2Img.jpe"
							class="img-responsive center-block" 
							style="max-height: 275px; max-width: 183px;" alt="Headphones">
					</div>
					<div class="panel-footer">Upto 40% discounts on headphones and speakers</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">SPECIAL OFFERS</div>
					<div class="panel-body">
						<img src="images/NikonCameraImg.jpe"
							class="img-responsive center-block" 
							style="max-height: 275px; max-width: 183px;" alt="Image">
					</div>
					<div class="panel-footer">Offers on all Nikon camera products</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">NEW YEAR OFFER</div>
					<div class="panel-body">
						<img src="images/HardDriveImg.jpe"
							class="img-responsive center-block" 
							style="max-height: 276px; max-width: 182px;" alt="Image">
					</div>
					<div class="panel-footer">Upto 10% discount on computer accessories</div>
				</div>
			</div>
		</div>
	</div>
	
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>
			<span class="glyphicon glyphicon-copyright-mark"></span> Online Store
			Copyright
		</p>
	</footer>

</body>

</html>