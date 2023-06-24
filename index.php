<?php 

include('functions/userfunctions.php');
include('includes/header.php'); ?>
<div class="py-1">
    <div class="container">
        <div class="row">
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
        </div>
    </div>
   
</div>
   <div class="py-1 mb-2">
    <div class="container-user-cat-index">
        
      
               <div class="row">
                    <?php
               $categories = getAllActive('categories');
               if (mysqli_num_rows($categories) > 0) 
               {
                 foreach( $categories as $item)
                 {
                    ?>
                    <div class="col-md-2-index mb-2 " >
                        <a class="cat-url-index" href="products.php?category=<?= $item['slug'];?>">
                        <div class="card-cat-index">
                          <div class="card-cat-body-index">
                            <img src="uploads/photo/<?= $item['image']; ?>" alt="category image" class="img-cat-index">
                              <h4 class="text-center cat-name"><?= $item['name']; ?></h4>
                           </div>
                         </div>
                     </a>
                        
                    </div>

                   

                    <?php
                 }    
               }
               else
               {

               }
               ?>
               </div>
              
            
        </div>
    </div>
   
<?php include('includes/footer.php'); ?>
    
     