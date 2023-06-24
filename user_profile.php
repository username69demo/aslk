<?php 

include('includes/header.php');
 ?>
<div class="main-profile">
  <div class="profile">

         <?php 
         session_start();
         if (isset($_SESSION['auth'])) {
          ?>
                
         <li class="nav-item">
          <h4 class="text-center"><?= $_SESSION['auth_user']['name']; ?></h4>
          
          <h4 class="text-center "><?= $_SESSION['auth_user']['email']; ?></h4>
        </li>
         
          <ul>
         <li class="nav-item">
           <button><a class="nav-link" href="logout.php">logout</a>
</button>
         </li>
        </ul>
        
       
          <?php
           
         }
         ?>
       
     
</div>
</div>