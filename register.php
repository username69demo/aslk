
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
    <div class="col-md-6 mt-4 reg-main-style  ">
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

      <div class="  Reg-header ">
        <h4>Register Form</h4>
      </div>
      
      
      <hr class="reg-hr-headline">
      <div class="card-body">
         
          
              <form action="functions/authcode.php" method="POST" enctype="multipart/form-data">
              <div class="form-rg">
                <div class="reg-col">
                  <label for="">Name</label>
                  <input type="text" name="name" class="form-control" placeholder="enter category name">
                </div>
                <div class="reg-col">
                <label for="">email</label>
                  <input type="email" name="email" class="form-control" placeholder="enter category name">
                </div>
                 <div class="reg-col">
                <label for="">phone</label>
                  <input type="number" name="phone" class="form-control" placeholder="enter category name">
                </div>
                   <div class="creg-col">
                    <label for="">Upload image</label>
            <input type="file" name="image" class="form-control">
            <div class="reg-col">
                <label for="">password</label>
                  <input type="Password" name="password" class="form-control" placeholder="enter category name">
                </div>
                  </div>
                   
          
                   <div class="reg-btn-position">
                   <button type="submit" class="reg-btn" name="register_btn">Save</button>
                  </div>
                </div>
              </form>
            
      </div>
      
    </div>
  </div>
</div>
    
   

<?php include('includes/footer.php'); ?>
    
     