
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <style>


    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap");

body {
    font-family: 'Open Sans',sans-serif;
    background: linear-gradient(25deg, #8600b3 50%, #cc33ff 50%);
    background-repeat: no-repeat;
}
.menu{
  position: absolute;
  top: 0.8%;
  left: 34.5%;

}
.menu>a{
    font-weight: 900;
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 20px;
    
  }
.blog-post{
   margin-top: 150px;
    border-radius: 10px;
    width: 90%;
    background-color: aliceblue;
    margin-left: 55px;;
}
.avatar{
    justify-content: center;
    width: 30%;
    height: 70px;
    background-color: #0697d1;
    color: white;
    border-radius: 20px;
    box-shadow: 2px 2px 2px 2px #707070;
    margin-left: 20px;
}
.author{
  
  text-decoration: none;
  color: #f8f8f8;

}
.avatar>img{
    border-radius: 50px;
}


@media screen 
and (min-width: 1366px)
and (max-width:1920px)
 {


   
  .menu 
  {
        position: fixed;
        top :0;
        display: flex;
        justify-content: center;
        background-color: rgba(0, 0, 0, 0.144);
        border-radius: 20px;
        width: 60%;
        height: 55px;
        margin: 0 auto;
        margin-top: 8px;
        margin-left: -14%;
        overflow: hidden;
  }
}

    </style>
</head>
<body>
    <div class="wrapper-home">
        <div class="full">
            <div class="menu">
                <a class="active" href="home.html">Home</a>
                <a href="all-games.html">All Games</a>
                <a href="">About Us</a>
                <a href="">Blog</a>
                <a href="">Request A Game</a> 
                <a href="php/users/register.php">Bloggers</a>       
            </div>
            <div class="blog-post card" style="margin-bottom: 20px;">
              <div class="card-header">
              #<?php echo $tags;?> 
             </div>
              <div class="card-body">
                <h5 class="card-title"><?php echo $title; ?></h5>
                <p class="card-text">
              <?php
                        /*
                        if($shortpost==1) {
                            echo truncate($desc , "post.php" , "id" , $id);
                        } else {
                          echo $desc;
                        }*/
                        echo $desc;
                      ?>
              </p>
              <?php
                          $delete_post_link='../include/delete_post.php?postid='.$id;
                        if(isset($_SESSION['username']) ) {
                          if($_SESSION['username']==$author || $_SESSION['usertype']=='admingw') {
                            echo "
            
                           
            
                            <a href=$delete_post_link type=\"button\" class=\"btn btn-danger\" >
                              Delete
                            </a>
                            ";
                          }
                        }
                      ?>	
              </div>
              <div class="card-header">
              Author : <?php echo $author?>
              <span class="pull-right"><?php echo $time ?></span>
              </div>
            </div> 

    </div>
</div>


      <!--  -->
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/main.js"></script>

</body>
</html>