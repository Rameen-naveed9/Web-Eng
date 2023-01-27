<?php
include("php/db/connection.php");

if(isset($_REQUEST['id'])) {
  $id=$_REQUEST['id'];

  $query="SELECT * FROM posts WHERE postID='$id'";
  $result=mysqli_query($conn , $query);

  if($post=mysqli_fetch_assoc($result)) {
      $id=$post['postID'];
      $title=$post['postTitle'];
      $desc=$post['postDesc'];
      $tags=$post['postTag'];
      $author=$post['postAuthor'];
      $time=$post['postTime'];
      $shortpost=0;
      /* increament view by 1 */

      include("single-blog-page.php");
  }
}
?>