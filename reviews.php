<?php

$page_title = "LightsOut: Reviews";

require_once ('includes/header.php');
require_once ('includes/database.php');

$query_str = "SELECT * FROM movies";
$result = $conn->query($query_str);
?>
	<div class="container wrapper">
		<ul class="breadcrumb">
			<li><a href="index.php">Home</a></li>
			<li class="active">Reviews</li>
		</ul>

		<h1 class="text-center">Reviews</h1>

		<?php
		while ($movie_row = $result->fetch_assoc()):
			$movie_id = $movie_row['movie_id'];
			$review_str = "SELECT * FROM reviews WHERE review_movie_id='$movie_id'";
			$review_result = $conn->query($review_str);
			$review_row = $review_result->fetch_assoc();
			if ($review_row) { ?>
				<div class="row movie-list" style="background:black">
					<div class="col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="a12" href="moviedetails.php?id=<?= $movie_row['movie_id'] ?>"><?= $movie_row['movie_name'] ?></a>
								</h3>
							</div>
							<div class="panel-body">
								<?php
								$review_result = $conn->query($review_str);
								while ($review_row = $review_result->fetch_assoc()) :
									?>
									<?php 
									$averageScore = $review_row['review_rating'];
									// get integer value of $averageScore
									$wholeStarCount = (int) $averageScore;
									// get integer value of 5 - $averageScore
									$noStarCount    = (int) (5 - $averageScore);
									// is $averageScore - $wholeStarCount larger than 0?
									$hasHalfStar    = $averageScore - $wholeStarCount > 0;
									$stars = str_repeat('<i class="fa fa-star"></i>' . PHP_EOL, $wholeStarCount) .
									($hasHalfStar ? '<i class="fa fa-star-half-o"></i>' . PHP_EOL : '') .
									str_repeat('<i class="fa fa-star-o"></i>' . PHP_EOL, $noStarCount);
									?>
									<h4 style="color:white">Rating: <?php echo $stars?><?php echo $review_row['review_rating'] ?></h4>
									
									<p class="lead"><?= $review_row['review_content'] ?></p>
								<?php endwhile ?>
							</div>
						</div>
					</div>
				</div>
			<?php }  endwhile ?>
	</div>
<?php
$conn->close();

include ('includes/footer.php');
?>