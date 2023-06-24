<?php 
include('functions/userfunctions.php');
include('includes/header.php');

 ?>
 <div class="py-2 bg-primary">
     <div class="container">
         <h6 class="text-white"> Home / Categories </h6>
     </div>
 </div>
<div class="py-3">
    <div class="container-user-cat">
        <div class="row">
             <div class="col-md-12 ">
               <h1 class="cat-headline"> <span class="cat-c">C</span>ategories</h1>
               <hr>
               <div class="row">
                    <?php
               $categories = getAllActive('categories');
               if (mysqli_num_rows($categories) > 0) 
               {
                 foreach( $categories as $item)
                 {
                    ?>
                    <div class="col-md-2 mb-2 cat-space" >
                        <a class="cat-url" href="products.php?category=<?= $item['slug'];?>">
                        <div class="card-cat shadow">
                          <div class="card-cat-body">
                            <img src="uploads/photo/<?= $item['image']; ?>" alt="category image" class="img-cat">
                              <h4 class="text-center cat-name"><?= $item['name']; ?></h4>
                           </div>
                         </div>
                        
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
    </div>
   
</div>
   
<?php include('includes/footer.php'); ?>
    
     