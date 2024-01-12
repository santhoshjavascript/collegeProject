<?php
include('includes/config.php');
session_start();
error_reporting(0);


  ?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Baby Day Care Management System | Info of Babysitter</title>
      <!--meta tags -->
      
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Dosis:400,500,600,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Quicksand:400,500,700" rel="stylesheet">
   </head>
   <body>
      <div class="main-top" id="home">
         <!-- header -->
         <?php include_once("includes/navbar.php");?>
         <!-- //header -->
  
      
      <!-- blog -->
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="blog">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3" style="padding-top: 20px;">Babysitter Info</h3>
            <div class="row">
               <?php
$bsid=$_GET['bsid'];
$ret=mysqli_query($con,"select * from tblbabysitter where id='$bsid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
               <div class="col-lg-6 col-md-6 blog-by-blog border-grid-bottom">
                  <div class="row">
                      
                     <div class="col-lg-4">
                        <img src="admin/images/<?php echo $row['ProfilePic']?>" class="img-fluid" alt="">
                     </div>
                     <div class="col-lg-8 col-lg-8 blog-w3layouts-grids">
                        <div class="blog-matter mb-3">
                           <h6><?php  echo $row['Name'];?></h6>
                          
                        </div>
                        <div class="event-blog-w3pvt mt-md-4 mt-3 p-0">
                          <p>Language Known: <?php  echo $row['LanguagesKnown'];?> </p>
                           <p>Expirience: <?php  echo $row['BabysitterExp'];?> </p>
                           <p>Certificate: <?php  echo $row['Certificate'];?> </p>
                        </div>
                     </div>
                  </div>
               </div><?php } ?>
            </div>
            
         </div>
      </section>
      <!--//blog -->
    
   
      <!-- footer -->
     <?php include_once('includes/footer.php');?>
      <!--//footer -->
   </body>
</html>