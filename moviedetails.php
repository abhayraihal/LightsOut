<?php

require_once('includes/database.php');

//retrieve movie id
$id = $_GET['id'];

//select statement
$query_str = "SELECT * FROM $tblMovies WHERE movie_id = '" . $id . "'";
$review_str = "SELECT review_rating, AVG(review_rating) as rating, review_content FROM $tblReviews WHERE reviews.review_movie_id=" . $id . "";
$rating_str = "SELECT round(avg(review_rating),1) as rating FROM reviews WHERE reviews.review_movie_id=" . $id . "";


//execute the query
$result = $conn->query($query_str);
$review_result = $conn->query($review_str);
$rating_result =  $conn->query($rating_str);

//Handle selection errors
if (!$result || !$review_result || !$rating_result) {
	$errno = $conn->errno;
	$errmsg = $conn->error;
	echo "Selection failed with: ($errno) $errmsg<br/>\n";
	$conn->close();
	exit;
} else { //display results in a table
	//insert a row into the table for each row of data
	$rating_res = $rating_result->fetch_assoc();
	if(!$rating_res['rating']) $rating_res['rating'] = 0;
	$result_row = $result->fetch_assoc();
//	$review_result_row = $review_result->fetch_assoc();

	$page_title = "LightsOut: " . $result_row['movie_name'];

	require_once ('includes/header.php');

	?>
	<div class="container wrapper">

	<ul class="breadcrumb">
		<li><a href="index.php">Home</a></li>
		<li><a href="movies.php">Movies</a></li>
		<li class="active"><?php echo $result_row['movie_name'] ?></li>
	</ul>

	<h1 class="text-center"><?php echo $result_row['movie_name'] ?></h1>
	<div class="row">
		<div class="col-xs-3 col-xs-offset-1">
			<img class="img-responsive" src="<?php echo $result_row['movie_img']; ?>" alt=""/>
		</div>
		<div class="col-xs-8">
			<div class="panel panel-default">
				<div class="panel-body">
					<h3 style="color:white">Year: <?php echo $result_row['movie_year'] ?></h3>
					<h3 style="color:white">Movie Rating: PG-13</h3>
					<?php 
					$averageScore = $rating_res['rating'];
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
					<h3 style="color:white">Avg Rating: <?php echo $stars?><?php echo $rating_res['rating'] ?></h3>


					<p class="lead"><?php echo $result_row['movie_bio'] ?></p>
					<?php for ($i = 0; $i < 5; $i++ ) :
						while ( $review_result_row = $review_result->fetch_assoc() ) : ?>
					<h3 class="<?php
					if ($review_result_row['review_rating'] > 4 ){
						echo 'text-success';
					} elseif ( $review_result_row['review_rating'] < 2 ) {
						echo 'text-danger';
					}
					?>" style="color:white">Review Rating: <?php echo $review_result_row['review_rating'] ?></h3>
					<p class="lead">Review: <br/><?php echo $review_result_row['review_content'] ?></p>
					<?php endwhile; endfor;  ?>
				</div>
			</div>
			<?php if (empty($login)) { ?>
					<p class="lead"><a href="loginform.php">Sign in</a> or <a href="registration.php">register</a> to leave a review or make this a favorite movie!</p>
			<?php	} else { ?>
				<p>
					<a class="btn btn-info" href="addreview.php?id=<?php echo $result_row['movie_id'] ?>" role="button">ADD REVIEW <i class="fa fa-plus"></i></a></p>
					<p>
					<a class="btn btn-success" href="addtoaccount.php?id=<?php echo $result_row['movie_id'] ?>" role="button">FAVORITE <i class="fa fa-angle-double-right fa-lg"></i></a>
				</p>
					<?php if ($role == 1) : ?>
						<a class="btn btn-danger" href="deletemovie.php?id=<?php echo $result_row['movie_id']; ?>">DELETE MOVIE <i class="fa fa-close"></i></a>
				<?php
				endif;?>
			<?php } ?>
		</div>
	</div>
<?php } ?>
</div>

<?php

// close the connection.
$conn->close();
include_once('includes/footer.php');