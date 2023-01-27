<?php
//  include("php/include/url_users.php");
include("php/db/connection.php");
// include("../include/url_users.php");

	/* CHECK if same user or email exists or not ? */
	$query="SELECT * FROM games ORDER BY ID ASC";
	$result=mysqli_query($conn , $query);

    // while($rows = mysqli_fetch_assoc($result))
    // {       
    //     $image = $rows['filename'];    
    //     print $image;
    // }
    $totalgames = mysqli_num_rows($result);
	// if(mysqli_num_rows($result) > 0) {
	
      // $id=$post['ID'];
      // $title=$post['name'];
      // $desc=$post['description'];
      // $image=$post['filename'];
      // $shortpost=3;
			// 		$shortpost=3;  /* short post with read more  */
      // $record = $post;

		
	// }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />    <!-- Custom css -->
    <link rel="stylesheet" href="css/main.css">
    <title>All Games</title>
    <style>
        
        body{
    font-family: 'Open Sans',sans-serif;
    background: linear-gradient(25deg, #8600b3 50%, #cc33ff 50%);
    background-repeat: no-repeat;
}

    </style>
</head>
<body >
    <div class="wrapper-catlog">
        <div class="full">
            <div class="menu">
                <a class="active" href="home.html">Home</a>
                <a href="all-games.html">All Games</a>
                <a href="about.html">About Us</a>
                <a href="blog.html">Blog</a>
                <a href="request-form.html">Request A Game</a>
                <a href="php/users/register.php">Bloggers</a>        
            </div>
            <div class="catlog">
                <h1>&nbsp;&nbsp;&nbsp; BROWSE ALL GAMES <span class="count"><?php echo $totalgames?> Products</span> </h1>
                <ul class="cards">
                <?php  while($row=mysqli_fetch_array($result)) { ?>

                  <li class="cards_item">
                    <div class="card">
                      <div class="card_image"><?php echo '<img src="php/games/image/'.$row[3].'" height="300" width="500" />' ; ?></div>
                      <div class="card_content">
                        <h2 class="card_title"><?php echo $row[1]; ?></h2>
                        <p class="card_text"><?php echo $row[2];?></p>
                        <?php echo '<form target="_blank" action="'.$row[4].'">' ?>
                        <button class="btn card_btn">Download Now</button>
                        </form>
                      </div>
                    </div>
                  </li>
                  <?php }?>

                </ul>
              </div>
              
        </div>
    </div>

   
</body>
</html>