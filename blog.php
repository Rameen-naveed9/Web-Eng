<?php
include("php/db/connection.php");


$q="SELECT * FROM posts ORDER BY postID ASC";
$res=mysqli_query($conn , $q);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />    <!-- Custom css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <title>blog</title>
    <style>
        
        body{
            font-family: 'Open Sans',sans-serif;
    background: linear-gradient(25deg, #8600b3 50%, #cc33ff 50%);
    background-repeat: no-repeat;
}
.menu{
  margin-top: 10px;

  margin-bottom: 10px;

}
.blog-area{
  
  padding-top: 8%;
}
.blog-card{
  border-radius: 20px !important;
}
.card-content{
  color: white;
  background: linear-gradient(to bottom left, #03b9b0 30%, #0a5ca0 60%);
    border: 0;
}
h4{
  color: white !important;
}
.btn{
    background-color: #8600b3;
}
.btn:hover{
    background-color: #7033ff;
}

@media screen and (min-width: 1366px) and (max-width:1920px)
 {
.blog-area{
  
  padding-top: 0%;

}


 }
 .main{
    margin-top: 120px;
}

 .featured-blog{
  background: linear-gradient(to bottom left, #03b9b0 30%, #0a5ca0 60%);
  border-radius: 30px;
}
.featured-blog>a:hover{
  text-decoration: none;

}
.small-blog-post{
 color: white;
  margin: 1px;
  border-radius: 20px;
  background: linear-gradient(to bottom left, #03b9b0 30%, #0a5ca0 60%);
}
.give-border{
  border-radius: 20px;
}
.card-deck{
  width: 60%;
  height: 60%;
}
    </style>
</head>
<body >
    <div class="wrapper-home">
        <div class="full">
            <div class="menu">
                <a class="active" href="home.html">Home</a>
                <a href="all-games.html">All Games</a>
                <a href="about.html">About Us</a>
                <a href="blog.html">Blog</a>
                <a href="request-form.html">Request A Game</a>
                <a href="php/users/register.php">Bloggers</a>        
            </div>
         
            <div class="blog-area container my-5">
                <div class="text-center mb-5">
                  <span class=" text-uppercase" style="color:rgb(255, 255, 255) ;">Blog</span>
                  <h1 class="text-capitalize font-weight-bold mt-2"><span style="color:#000000">Our Latest</span> <span style="color:#ffffff">Blogs</span></h1>
                </div>
                <div class="card-deck">
            <?php   
            
            while($row=mysqli_fetch_array($res)) { 
              $id=$row[0];

              ?>
                <div class="blog-card  card" style="width: 18rem;">
                <div class="card-header">
                  <?php echo $row[4];?>
                      </div>
                 <img src="https://thumbs.dreamstime.com/b/blog-information-website-concept-workplace-background-text-view-above-127465079.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                 <h5 class="card-title"><?php echo $row[1];?></h5>

               <a href="<?php echo "displaypost.php?id="; echo $id; ?>" class="btn btn-primary" style="
               position: absolute;
right:    0;
bottom:   0;
               ">Read More</a>
                 </div>
                 <div class="card-header">
                 <?php echo $row[3];?>
                  </div>
               </div>
               <?php }?>
               </div>
              </div>
              

        </div>
    </div>




            <!--  -->
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
         
</body>
</html>