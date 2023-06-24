<?php
include('functions/userfunctions.php');
include('includes/header.php');
if (isset($_GET['category'])) {
    $category_slug = $_GET['category'];
    $category_data = getSlugActive("categories", $category_slug);
    $category = mysqli_fetch_array($category_data);
    if ($category) {
        
   
    $cid = $category['id'];
?>

<div class="py-2 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a href="Categories.php" class="text-white">Home/</a>
            <a href="Categories.php" class="text-white">Categories/</a>
            <?= $category['name']; ?>
        </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1><?= $category['name']; ?></h1>
                <hr>
                <div class="row">
                    <?php
                    $products = getProByCate($cid);
                    if (mysqli_num_rows($products) > 0) {
                        while ($item = mysqli_fetch_array($products)) {
                    ?>
                            <div class="col-md-3 mb-2">
                                <a href="product-view.php?product=<?= $item['slug']; ?>">
                                    <div class="card shadow">
                                        <div class="card-body">
                                            <img src="uploads/photo/<?= $item['image']; ?>" alt="category image" class="w-100">
                                            <h4 class="text-center"><?= $item['name']; ?></h4>
                                        </div>
                                    </div>
                                </a>
                            </div>
                    <?php
                        }
                    } else {
                        echo "No products found for this category.";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>


   <?php
  } 

else {
    echo "Something went wrong";
  }
}
else {
    echo "Something went wrong";
}
include('includes/footer.php');
?>
