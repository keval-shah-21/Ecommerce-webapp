<!DOCTYPE HTML>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-wishlist.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

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
						<a href="page-category.html">All category</a>
						<a href="page-listing-large.html">Listing list</a>
						<a href="page-listing-grid.html">Listing grid</a>
						<a href="page-shopping-cart.html">Shopping cart</a>
						<a href="page-detail-product.html">Product detail</a>
						<a href="page-content.html">Page content</a>
						<a href="page-user-login.html">Page login</a>
						<a href="page-user-register.html">Page register</a>
					</div>
					<div class="col-6">
						<a href="page-profile-main.html">Profile main</a>
						<a href="page-profile-orders.html">Profile orders</a>
						<a href="page-profile-seller.html">Profile seller</a>
						<a href="page-profile-wishlist.html">Profile wishlist</a>
						<a href="page-profile-setting.html">Profile setting</a>
						<a href="page-profile-address.html">Profile address</a>
						<a href="page-components.html" target="_blank">More components</a>
					</div>
				</nav> <!--  row end .// -->
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

<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg-gray">
<div class="container">
	<h2 class="title-page">My account</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->
	
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		<nav class="list-group">
			<a class="list-group-item" href="user-profile.jsp"> Account overview  </a>
			<a class="list-group-item" href="page-profile-address.html"> My Address </a>
			<a class="list-group-item" href="page-profile-orders.html"> My Orders </a>
			<a class="list-group-item active" href="page-profile-wishlist.html"> My wishlist </a>
			<a class="list-group-item" href="edit-profile.jsp"> Settings </a>
			<a class="list-group-item" href="page-index-1.html"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

		<article class="card">
			<div class="card-body">

		<div class="row">
				<div class="col-md-6">
					<figure class="itemside mb-4">
						<div class="aside"><img src="images/items/1.jpg" class="border img-md"></div>
						<figcaption class="info">
							<a href="#" class="title">Great product name goes here</a>
							<p class="price mb-2">$80</p>
							<a href="#" class="btn btn-secondary btn-sm"> Add to cart </a>
							<a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a>
						</figcaption>
					</figure>
				</div> <!-- col.// -->

				<div class="col-md-6">
					<figure class="itemside mb-4">
						<div class="aside"><img src="images/items/2.jpg" class="border img-md"></div>
						<figcaption class="info">
							<a href="#" class="title">Men's Jackeet for Winter </a>
							<p class="price mb-2">$1280</p>
							<a href="#" class="btn btn-secondary btn-sm"> Add to cart </a>
							<a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a>
						</figcaption>
					</figure>
				</div> <!-- col.// -->

				<div class="col-md-6">
					<figure class="itemside mb-4">
						<div class="aside"><img src="images/items/3.jpg" class="border img-md"></div>
						<figcaption class="info">
							<a href="#" class="title">Another book of item goes here </a>
							<p class="price mb-2">$280</p>
							<a href="#" class="btn btn-secondary btn-sm"> Add to cart </a>
							<a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
			</div> <!-- row .//  -->

			</div> <!-- card-body.// -->
		</article>


	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



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

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-wishlist.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
</html>