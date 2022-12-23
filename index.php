<?php
	$page_title = "LightsOut";
	include_once('includes/header.php');
?>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="assets/img/21.jpg" alt="First slide">
				<div class="jumbotron">
					<div class="container">
						<div class="carousel-caption">
							<h1>LIGHTSOUT REVIEWS</h1>
							<p>Welcome to the LIGHTSOUT Movie Review Service!</p>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="assets/img/25.jpg" alt="Second slide">
				<div class="jumbotron">
					<div class="container">
						<div class="carousel-caption">
							<h1>Rate Movies</h1>
							<p>Create an account to review your favorite movies</p>
							<p><a class="btn btn-lg btn-info" href="registration.php" role="button">Sign up today</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="assets/img/lotr.jpg" alt="Third slide">
				<div class="jumbotron">
					<div class="container">
						<div class="carousel-caption">
							<h1>Read Reviews</h1>
							<p>Browse all of our reviews and find out more about what others thought of your favorite movies!</p>
							<p><a class="btn btn-lg btn-info" href="reviews.php" role="button">VIEW REVIEWS &raquo;</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h2 style="color:white">CREATE ACCOUNT</h2>
				<p style="color:white">Sign up for an account in order to add a review to your favorite movie</p>
				<p><a class="btn btn-default" href="registration.php" role="button"   style="background:#4dbf00">SIGN UP &raquo;</a></p>
			</div>
			<div class="col-md-4">
				<h2 style="color:white">LIST MOVIES</h2>
				<p style="color:white">Browse our extensive list of movie titles along with ratings, years, a short synopsis, and even reviews!</p>
				<p><a class="btn btn-default" href="movies.php" role="button"   style="background:#4dbf00">VIEW MOVIES &raquo;</a></p>
			</div>
			<div class="col-md-4">
				<h2 style="color:white">LIST REVIEWS</h2>
				<p  style="color:white">Browse all of our reviews and find out more about what others thought of your favorite movies!</p>
				<p><a class="btn btn-default" href="reviews.php" role="button"   style="background:#4dbf00">VIEW REVIEWS &raquo;</a></p>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="./assets/js/particles.js"></script>
    <script type="text/javascript" src="./assets/js/app.js"></script>
<?php
	include_once('includes/footer.php');