<?php 
session_start();
if (isset($_SESSION['auth'])){
$_SESSION['message'] = "already login";
	header('Location: index.php');
	exit();
}
include('includes/header.php'); ?>
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6 mt-4 log-main-style">
      <?php 
        if (isset($_SESSION['message'])) { ?>
       
      <div class="alert alert-warning alert-dismissible fade show" role="alert">
     <strong>Hey!</strong> <?= $_SESSION['message']; ?>
     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
     <?php
           unset($_SESSION['message']);
        }
     ?>
      <div class="log-header ">
        <h4>Login Form</h4>
      </div>
       <hr class="log-hr-headline">
      <div class="card-body">
         <form action="functions/authcode.php" method="POST">
         
   <div class="form-log">
  <div class="log-col">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" name="email"  placeholder="Enter your email" required>
   
  </div>
    <div class="log-col">
  <label  class="form-label">Password</label>
    <input type="Password" class="form-control" name="password"  placeholder="Password" required>
  </div>
  
  <div class="log-btn-position">
  <button type="submit" name="login_btn" class="log-btn">login</button>
</div>
<div class="log-para">
  <p>If you are Sign Up , Please  <a href="register.php">Register </a> now</p>
  </div>
</form>
</div>
      </div>
      
    </div>
  </div>
</div>
    
   

<?php include('includes/footer.php'); ?>
    
     