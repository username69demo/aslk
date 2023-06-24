<?php
include('functions/userfunctions.php');
include('includes/header.php');

if (isset($_GET['product'])) 
{

      $product_slug = $_GET['product'];
       $product_data = getSlugActive("products", $product_slug);
    $product = mysqli_fetch_array($product_data);
    if ($product) 
    {
        ?>
           <div class="py-2 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a href="Categories.php" class="text-white">Home/</a>
            <a href="Categories.php" class="text-white">Categories/</a>
            <?= $product['name']; ?>
        </h6>
    </div>
</div>
  <div class="bg-light py-4">
         <div class="container mt-4 product
         _data">
         	<div class="row">
         		<div class="col-md-4">
         			<div class="shadow">

         			<img src="uploads/photo/<?= $product['image']; ?>" alt="product-image" class="w-100">
         			</div>
         		</div>
         		<div class="col-md-8">
         			<h4 class="fw-bold"><?= $product['name']; ?>
         				
         				<span class="float-end text-danger">
         					<?php

         					if ($product['trending']) {
         						echo "Trending";
         					}
         					?>
         				</span>
         			</h4>
         			<hr>
         			<p><?= $product['small_description']; ?></p>
         			<div class="row">
         				<div class="col-md-6">
         					<h5> Rs <s class="text-danger"> <?= $product['original_price'];?></s></h5>
         				</div>
         				<div class="col-md-6">
         					<h5 > Rs <span class="text-success fw-bold"> <?= $product['selling_price'];?></span></h5>
         				</div>
         			</div>
         			<div class="row">
         				<div class="col-md-4">
         					<div class="input-group mb-3" style="width:130px">
                                <button class="input-group-text decrement_btn">-</button>
                                <input type="text" class="form-control bg-white text-center input-qty" id="inputCartQty" value="1" >
                                <button class="input-group-text  increment_btn ">+</button>
                            </div>
         				</div>
         			</div>
         			<div class="row mt-4">
         				<div class="col-md-6">
         					<button class="btn btn-primary px-4 addToCartBtn" id="cart_btn" value="<?= $product['id'];?>"> add to cart </button>
         				</div>
         				<div class="col-md-6">
         					<button class="btn btn-primary px-4"> add to wishlist </button>
         				</div>
         			</div>
         			<hr>
         			<h6>Product Description :</h6>
         			<p><?= $product['description']; ?></p>
         		</div>
         	</div>
         </div>
</div>
        <?php

    }
    else
    {
    	echo "product no found";
    }
}
else 
{
    echo "Something went wrong";
}
include('includes/footer.php');
?>
