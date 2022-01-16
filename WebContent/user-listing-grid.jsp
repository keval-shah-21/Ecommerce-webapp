<!DOCTYPE HTML>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-listing-grid.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:08:56 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Jain General Store</title>

<%@ include file="common_plugin.jsp" %>
<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="js/script.js" type="text/javascript"></script>

</head>
<body>



<%@ include file="header2.jsp" %>

<nav class="navbar navbar-main navbar-expand-lg border-bottom">
  <div class="container">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="main_nav">
      <ul class="navbar-nav">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-bars text-muted mr-2"></i> Demo pages </a>
			<div class="dropdown-menu dropdown-large">
				<nav class="row">
					<div class="col-6">
						<a href="page-index-1.html">Home page 1</a>
						<a href="page-index-2.html">Home page 2</a>
						<a href="user-category.jsp">All category</a>
						<a href="user-listing-list.jsp">Listing list</a>
						<a href="user-listing-grid.jsp">Listing grid</a>
						<a href="user-shopping-cart.jsp">Shopping cart</a>
						<a href="user-detail-product.jsp">Product detail</a>
						<a href="user-content.jsp">Page content</a>
						<a href="page-user-login.jsp">Page login</a>
						<a href="register.jsp">Page register</a>
					</div>
					<div class="col-6">
						<a href="user-profile-main.jsp">Profile main</a>
						<a href="user-profile-orders.jsp">Profile orders</a>
						<a href="user-profile-seller.jsp">Profile seller</a>
						<a href="user-profile-wishlist.jsp">Profile wishlist</a>
						<a href="user-profile-setting.jsp">Profile setting</a>
						<a href="user-profile-address.jsp">Profile address</a>
						<a href="rtl-page-index.jsp">RTL home page</a>
						<a href="page-components.jsp" target="_blank">More components</a>
					</div>
				</nav>  <!--  row end .// -->
			</div> <!--  dropdown-menu dropdown-large end.// -->
		</li>
      	<li class="nav-item">
           <a class="nav-link" href="#">Ready to ship</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Trade shows</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sell with us</a>
        </li>
      </ul>
      <ul class="navbar-nav ml-md-auto">
      	  <li class="nav-item">
            <a class="nav-link" href="#">Get the app</a>
          </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="../../../external.html?link=http://example.com/" data-toggle="dropdown">English</a>
	        <div class="dropdown-menu dropdown-menu-right">
	          <a class="dropdown-item" href="#">Russian</a>
	          <a class="dropdown-item" href="#">French</a>
	          <a class="dropdown-item" href="#">Spanish</a>
	          <a class="dropdown-item" href="#">Chinese</a>
	        </div>
	      </li>
	   </ul>
    </div> <!-- collapse .// -->
  </div> <!-- container .// -->
</nav>
</header> <!-- section-header.// -->


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">


<!-- ============================  FILTER TOP  ================================= -->
<div class="card mb-3">
	<div class="card-body">
<div class="row">
	<div class="col-md-2"> Your are here: </div> <!-- col.// -->
	<nav class="col-md-8"> 
	<ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item"><a href="#">Category name</a></li>
	    <li class="breadcrumb-item"><a href="#">Sub category</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Items</li>
	</ol>  
	</nav> <!-- col.// -->
</div> <!-- row.// -->
<hr>
<div class="row">
	<div class="col-md-2">Filter by</div> <!-- col.// -->
	<div class="col-md-10"> 
		<ul class="list-inline">
		  <li class="list-inline-item mr-3 dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">   Supplier type </a>
            <div class="dropdown-menu p-3" style="max-width:400px;">	
		      <label class="form-check">
		      	 <input type="radio" name="myfilter" class="form-check-input"> Good supplier
		      </label>
		      <label class="form-check">	
		      	 <input type="radio" name="myfilter" class="form-check-input"> Best supplier
		      </label>
		      <label class="form-check">
		      	 <input type="radio" name="myfilter" class="form-check-input"> New supplier
		      </label>
            </div> <!-- dropdown-menu.// -->
	      </li>
	      <li class="list-inline-item mr-3 dropdown">
	      	<a href="#" class="dropdown-toggle" data-toggle="dropdown">  Country </a>
            <div class="dropdown-menu p-3">	
		      <label class="form-check"> 	 <input type="checkbox" class="form-check-input"> China    </label>
		      <label class="form-check">   	 <input type="checkbox" class="form-check-input"> Japan      </label>
		      <label class="form-check">    <input type="checkbox" class="form-check-input"> Uzbekistan  </label>
		      <label class="form-check">  <input type="checkbox" class="form-check-input"> Russia     </label>
            </div> <!-- dropdown-menu.// -->
	      </li>
		  <li class="list-inline-item mr-3 dropdown">
		  	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Feature</a>
		  	<div class="dropdown-menu">
		  		<a href="#" class="dropdown-item">Anti backterial</a>
		  		<a href="#" class="dropdown-item">With buttons</a>
		  		<a href="#" class="dropdown-item">Extra safety</a>
		  	</div>
		  </li>
		  <li class="list-inline-item mr-3"><a href="#">Color</a></li>
		  <li class="list-inline-item mr-3"><a href="#">Size</a></li>
		  <li class="list-inline-item mr-3">
		  	<div class="form-inline">
		  		<label class="mr-2">Price</label>
				<input class="form-control form-control-sm" placeholder="Min" type="number">
					<span class="px-2"> - </span>
				<input class="form-control form-control-sm" placeholder="Max" type="number">
				<button type="submit" class="btn btn-sm btn-light ml-2">Ok</button>
			</div>
		  </li>
		  <li class="list-inline-item mr-3">
		  	<label class="custom-control mt-1 custom-checkbox">
			  <input type="checkbox" class="custom-control-input">
			  <div class="custom-control-label">Ready to ship
			  </div>
			</label>
		  </li>
		</ul>
	</div> <!-- col.// -->
</div> <!-- row.// -->
	</div> <!-- card-body .// -->
</div> <!-- card.// -->
<!-- ============================ FILTER TOP END.// ================================= -->

<header class="mb-3">
		<div class="form-inline">
			<strong class="mr-md-auto">32 Items found </strong>
			<select class="mr-2 form-control">
				<option>Latest items</option>
				<option>Trending</option>
				<option>Most Popular</option>
				<option>Cheapest</option>
			</select>
			<div class="btn-group">
				<a href="page-listing-grid.html" class="btn btn-light active" data-toggle="tooltip" title="List view"> 
					<i class="fa fa-bars"></i></a>
				<a href="page-listing-large.html" class="btn btn-light" data-toggle="tooltip" title="Grid view"> 
					<i class="fa fa-th"></i></a>
			</div>
		</div>
</header><!-- sect-heading -->

<div class="row">
	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="images/items/1.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Hot sale unisex New Design Shirt for sport polo shirts latest design</a>
					<div class="price-wrap">
						<span class="price">$32.00-$40.00</span> 
						<small class="text-muted">/per item</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 2 Years </span> 
						<span class="tag"> 23 reviews </span>
						<span class="tag"> Japan </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/2.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">High Quality Winter PU Rain Jacket with Padding for Men's outdoor</a>
					<div class="price-wrap">
						<span class="price">$50.00-$75.00</span> 
						<small class="text-muted">/per item</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 4 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Great manufacturer Co ltd.</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 3 Years </span> 
						<span class="tag"> 70 reviews </span>
						<span class="tag"> Russia </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/3.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$425.00-$490.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Best textile company Ltd.</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 7 Years </span> 
						<span class="tag"> 34 reviews </span>
						<span class="tag"> Russia </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/4.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/5.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/6.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/15.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Pro Electronic Ltd</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<img src="images/items/1.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="images/items/2.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="images/items/3.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="images/items/4.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->

	<div class="col-md-3">
		<figure class="card card-product-grid">
			<div class="img-wrap"> 
				<span class="badge badge-danger"> NEW </span>
				<img src="images/items/1.jpg">
			</div> <!-- img-wrap.// -->
			<figcaption class="info-wrap">
					<a href="#" class="title mb-2">Cheap and Best demo clothe with latest Fashion styles for Men</a>
					<div class="price-wrap">
						<span class="price">$325.00-$390.00</span> 
						<small class="text-muted">/per bag</small>
					</div> <!-- price-wrap.// -->
					
					<p class="mb-2"> 2 Pieces  <small class="text-muted">(Min Order)</small></p>
					
					<p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
				   
					<hr>
					
					<p class="mb-3">
						<span class="tag"> <i class="fa fa-check"></i> Verified</span> 
						<span class="tag"> 4 Years </span> 
						<span class="tag"> 60 reviews </span>
						<span class="tag"> China </span>
					</p>
				
					<label class="custom-control mb-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
					  <div class="custom-control-label">Add to compare
					  </div>
					</label>

					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Contact supplier </a>	
					
			</figcaption>
		</figure>
	</div> <!-- col.// -->
</div> <!-- row end.// -->


<nav class="mb-4" aria-label="Page navigation sample">
  <ul class="pagination">
    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>


<div class="box text-center">
	<p>Did you find what you were looking for？</p>
	<a href="#" class="btn btn-light">Yes</a>
	<a href="#" class="btn btn-light">No</a>
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<section class="padding-y-lg bg-light border-top">
<div class="container">

<p class="pb-2 text-center">Delivering the latest product trends and industry news straight to your inbox</p>

<div class="row justify-content-md-center">
	<div class="col-lg-4 col-sm-6">
<form class="form-row">
		<div class="col-8">
		<input class="form-control" placeholder="Your Email" type="email">
		</div> <!-- col.// -->
		<div class="col-4">
		<button type="submit" class="btn btn-block btn-warning"> <i class="fa fa-envelope"></i> Subscribe </button>
		</div> <!-- col.// -->
</form>
<small class="form-text">We’ll never share your email address with a third-party. </small>
	</div> <!-- col-md-6.// -->
</div>
	

</div>
</section>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer bg-secondary">
	<div class="container">
		<section class="footer-top padding-y-lg text-white">
			<div class="row">
				<aside class="col-md col-6">
					<h6 class="title">Brands</h6>
					<ul class="list-unstyled">
						<li> <a href="#">Adidas</a></li>
						<li> <a href="#">Puma</a></li>
						<li> <a href="#">Reebok</a></li>
						<li> <a href="#">Nike</a></li>
					</ul>
				</aside>
				<aside class="col-md col-6">
					<h6 class="title">Company</h6>
					<ul class="list-unstyled">
						<li> <a href="#">About us</a></li>
						<li> <a href="#">Career</a></li>
						<li> <a href="#">Find a store</a></li>
						<li> <a href="#">Rules and terms</a></li>
						<li> <a href="#">Sitemap</a></li>
					</ul>
				</aside>
				<aside class="col-md col-6">
					<h6 class="title">Help</h6>
					<ul class="list-unstyled">
						<li> <a href="#">Contact us</a></li>
						<li> <a href="#">Money refund</a></li>
						<li> <a href="#">Order status</a></li>
						<li> <a href="#">Shipping info</a></li>
						<li> <a href="#">Open dispute</a></li>
					</ul>
				</aside>
				<aside class="col-md col-6">
					<h6 class="title">Account</h6>
					<ul class="list-unstyled">
						<li> <a href="#"> User Login </a></li>
						<li> <a href="#"> User register </a></li>
						<li> <a href="#"> Account Setting </a></li>
						<li> <a href="#"> My Orders </a></li>
					</ul>
				</aside>
				<aside class="col-md">
					<h6 class="title">Social</h6>
					<ul class="list-unstyled">
						<li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
						<li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
						<li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
						<li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
					</ul>
				</aside>
			</div> <!-- row.// -->
		</section>	<!-- footer-top.// -->

		<section class="footer-bottom text-center">
		
				<p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
				<p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
				<br>
		</section>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->




</body>

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-listing-grid.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:08:57 GMT -->
</html>