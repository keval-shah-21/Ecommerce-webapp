<!DOCTYPE HTML>
<%@page import="com.takealot.bean.User"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-main.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
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
<%HttpSession httpSession1 = request.getSession(false);
	User userobj =null;
	if(httpSession1!=null)
	{
		userobj = (User)httpSession1.getAttribute("loginBean");
	}%>



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
			<a class="list-group-item active" href="user-profile-main.jsp"> Account overview  </a>
			<a class="list-group-item" href="user-profile-orders.jsp"> My Orders </a>
			<a class="list-group-item" href="user-profile-wishlist.jsp"> My wishlist </a>
			<a class="list-group-item" href="edit-profile.jsp"> Edit Profile </a>
			<a class="list-group-item" href="user-change-password.jsp"> Change Password </a>			
			<a class="list-group-item" href="LogoutServlet"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

		<article class="card mb-3">
			<div class="card-body">
				
				<figure class="icontext">
						<div class="icon">
							<img class="rounded-circle img-sm border" src="images/avatars/avatar3.jpg">
						</div>
						<div class="text">
							<strong> <%=userobj.getFname() %> <%=userobj.getLname()%> </strong> <br> 
							<p class="mb-2"> <%=userobj.getEmail()%>  </p> 
						</div>
				</figure>
				<hr>
				<p>
					<i class="fa fa-map-marker text-muted"></i> &nbsp; My address:  
					 <br>
			<!--Tashkent city, Street name, Building 123, House 321 &nbsp --> 
					<% if(userobj.getAddress1() == null && userobj.getAddress2() == null) {%>
						Address not set!		
					<%}else{%>
						<%if(userobj.getAddress1() == null) {%>
							<%= userobj.getAddress2()%>
						<%}else{%>
							<%= userobj.getAddress1()%>
							<%} %>
					<%} %>
				</p>

				

				<article class="card-group card-stat">
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">38</h4>
							<span>Orders</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">5</h4>
							<span>Wishlists</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">12</h4>
							<span>Awaiting delivery</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h4 class="title">50</h4>
							<span>Delivered items</span>
						</div>
					</figure>
				</article>
				

			</div> <!-- card-body .// -->
		</article> <!-- card.// -->

		<article class="card  mb-3">
			<!-- 	<div class="card-body">
					<h5 class="card-title mb-4">Recent orders </h5>	
	
					<div class="row">
					<div class="col-md-6">
						<figure class="itemside  mb-3">
							<div class="aside"><img src="images/items/1.jpg" class="border img-sm"></div>
							<figcaption class="info">
								<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
								<p>Great book name goes here </p>
								<span class="text-success">Order confirmed </span>
							</figcaption>
						</figure>
					</div> col.//
					<div class="col-md-6">
						<figure class="itemside  mb-3">
							<div class="aside"><img src="images/items/2.jpg" class="border img-sm"></div>
							<figcaption class="info">
								<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
								<p>How to be rich</p>
								<span class="text-success">Departured</span>
							</figcaption>
						</figure>
					</div> col.//
					<div class="col-md-6">
						<figure class="itemside mb-3">
							<div class="aside"><img src="images/items/3.jpg" class="border img-sm"></div>
							<figcaption class="info">
								<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
								<p>Harry Potter book </p>
								<span class="text-success">Shipped  </span>
							</figcaption>
						</figure>
					</div> col.//
				</div> row.//
	
				<a href="#" class="btn btn-outline-primary btn-block"> See all orders <i class="fa fa-chevron-down"></i>  </a>
				</div> card-body .// -->
		</article> <!-- card.// -->

	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->




<!-- ========================= FOOTER ========================= -->
<!-- <footer class="section-footer bg-secondary">
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

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-main.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
</html>