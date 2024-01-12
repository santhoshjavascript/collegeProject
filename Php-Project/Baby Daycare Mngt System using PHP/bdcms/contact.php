<?php
include('includes/config.php');
session_start();
error_reporting(0);

if(isset($_POST['submit']))
  {
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $message=$_POST['message'];
     
    $query=mysqli_query($con, "insert into tblcontact(FirstName,LastName,Phone,Email,Message) value('$fname','$lname','$phone','$email','$message')");
    if ($query) {
   echo "<script>alert('Your message was sent successfully!.');</script>";
echo "<script>window.location.href ='contact.php'</script>";
  }
  else
    {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}
  ?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Baby Day Care Management System | Contact us Page</title>
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
      
    
      <!-- contact -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3" Id="contact">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3" style="color:blue;padding-top: 20px;">Contact Us</h3>
            <div class="row mb-lg-5 mb-md-5 mb-sm-4 mb-4">
               <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
               <div class="col-lg-4 col-md-4 footer_grid_left text-center">
                  <div class="contact_footer_grid_left text-center">
                     <h4 class="mb-lg-3 mb-2">Address </h4>
                     <p><?php  echo $row['PageDescription'];?></p>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4 footer_grid_left text-center">
                  <div class="contact_footer_grid_left text-center ">
                     <h4 class="mb-lg-3 mb-2">Phone </h4>
                     <p>+<?php  echo $row['MobileNumber'];?></p>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4 footer_grid_left text-center">
                  <div class="contact_footer_grid_left text-center">
                     <h4 class="mb-lg-3 mb-2">Email Us</h4>
                     <p><?php  echo $row['Email'];?>
                     </p>
                  </div>
               </div>
            </div><?php } ?>
            <div class="wthree-info-para">
               <!--contact-map -->
               <form action="#" method="post">
                  <div class="contact-mid row">
                     <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
                        <input type="text" class="form-control" placeholder="First Name" required="" name="fname">
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
                        <input type="text" class="form-control" placeholder="Last Name" required="" name="lname">
                     </div>
                  </div>
                  <div class="contact-mid row">
                     <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
                        <input type="text" class="form-control" placeholder="Phone" required="" name="phone" pattern="[0-9]+" maxlength="10">
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
                        <input type="email" class="form-control" placeholder="Email" required="" name="email">
                     </div>
                  </div>
                  <div class="form-group contact-forms">
                     <textarea class="form-control" rows="3" placeholder="Message.." required="" name="message"></textarea>
                  </div>
                  <div class="text-left click-subscribe">
                     <button type="submit" class="btn click-me" type="submit" name="submit">Send</button>
                  </div>
               </form>
            </div>
         </div>
      </section>
      <!--//contact -->

      <!-- footer -->
     <?php include_once('includes/footer.php');?>
      <!--//footer -->
   </body>
</html>