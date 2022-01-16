<!DOCTYPE HTML>
<%@page import="com.takealot.bean.User"%>
<%@page import="com.takealot.bean.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.takealot.bean.Order"%>
<%@page import="java.util.List"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-orders.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title>Jain General Store</title>

<%@ include file="common_plugin.jsp" %>

<script>
	
	function getstatus(dstatus)
	{
		var deliverystatus = dstatus;
		
		(document).getElementById("status").value=deliverystatus;
	}
</script>
</head>
<body>

<%@ include file="header2.jsp" %>
<%HttpSession httpSession1 = request.getSession(false);
	User userobj =null;
	if(httpSession1!=null)
	{
		userobj = (User)httpSession1.getAttribute("loginBean");
	}%>



<!-- <nav class="navbar navbar-main navbar-expand-lg border-bottom"> -->
<!-- <div class="container"> -->
<!-- 	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation"> -->
<!-- 	<span class="navbar-toggler-icon"></span> -->
<!-- 	</button> -->

<!-- 	<div class="collapse navbar-collapse" id="main_nav"> -->
<!-- 	<ul class="navbar-nav"> -->
<!-- 		<li class="nav-item dropdown"> -->
<!-- 			<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-bars text-muted mr-2"></i> Demo pages </a> -->
<!-- 			<div class="dropdown-menu dropdown-large"> -->
<!-- 				<nav class="row"> -->
<!-- 					<div class="col-6"> -->
<!-- 						<a href="page-index-1.html">Home page 1</a> -->
<!-- 						<a href="page-index-2.html">Home page 2</a> -->
<!-- 						<a href="page-category.html">All category</a> -->
<!-- 						<a href="page-listing-large.html">Listing list</a> -->
<!-- 						<a href="page-listing-grid.html">Listing grid</a> -->
<!-- 						<a href="page-shopping-cart.html">Shopping cart</a> -->
<!-- 						<a href="page-detail-product.html">Product detail</a> -->
<!-- 						<a href="page-content.html">Page content</a> -->
<!-- 						<a href="page-user-login.html">Page login</a> -->
<!-- 						<a href="page-user-register.html">Page register</a> -->
<!-- 					</div> -->
<!-- 					<div class="col-6"> -->
<!-- 						<a href="page-profile-main.html">Profile main</a> -->
<!-- 						<a href="page-profile-orders.html">Profile orders</a> -->
<!-- 						<a href="page-profile-seller.html">Profile seller</a> -->
<!-- 						<a href="page-profile-wishlist.html">Profile wishlist</a> -->
<!-- 						<a href="page-profile-setting.html">Profile setting</a> -->
<!-- 						<a href="page-profile-address.html">Profile address</a> -->
<!-- 						<a href="page-components.html" target="_blank">More components</a> -->
<!-- 					</div> -->
<!-- 				</nav>  row end .// -->
<!-- 			</div>  dropdown-menu dropdown-large end.// -->
<!-- 		</li> -->
<!-- 		<li class="nav-item"> -->
<!-- 			<a class="nav-link" href="#">Ready to ship</a> -->
<!-- 		</li> -->
<!-- 		<li class="nav-item"> -->
<!-- 		<a class="nav-link" href="#">Trade shows</a> -->
<!-- 		</li> -->
<!-- 		<li class="nav-item"> -->
<!-- 		<a class="nav-link" href="#">Services</a> -->
<!-- 		</li> -->
<!-- 		<li class="nav-item"> -->
<!-- 		<a class="nav-link" href="#">Sell with us</a> -->
<!-- 		</li> -->
<!-- 	</ul> -->
<!-- 	<ul class="navbar-nav ml-md-auto"> -->
<!-- 			<li class="nav-item"> -->
<!-- 			<a class="nav-link" href="#">Get the app</a> -->
<!-- 		</li> -->
<!-- 		<li class="nav-item dropdown"> -->
<!-- 			<a class="nav-link dropdown-toggle" href="../../../external.html?link=http://example.com/" data-toggle="dropdown">English</a> -->
<!-- 			<div class="dropdown-menu dropdown-menu-right"> -->
<!-- 			<a class="dropdown-item" href="#">Russian</a> -->
<!-- 			<a class="dropdown-item" href="#">French</a> -->
<!-- 			<a class="dropdown-item" href="#">Spanish</a> -->
<!-- 			<a class="dropdown-item" href="#">Chinese</a> -->
<!-- 			</div> -->
<!-- 		</li> -->
<!-- 		</ul> -->
<!-- 	</div> collapse .// -->
<!-- </div> container .// -->
<!-- </nav> -->
<!-- </header> section-header.// -->


<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg-gray">
<div class="container">
	<h2 class="title-page">My account</h2>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->
	

<!-- ========================= SECTION CONTENT ========================= -->
<%int userId=0;
String fname="";
String lname="";
String email="";
HttpSession httpSession = request.getSession(false);
if(httpSession!=null)
{
	User obj =new User();
	obj = (User)httpSession.getAttribute("loginBean");
	userId = obj.getCustomerId();
	fname=obj.getFname();
	lname=obj.getLname();
	email=obj.getEmail();
}
 %>
<jsp:include page="/FetchOrderDetails"/>
		<%List<Order> orderList = new ArrayList<Order>();
			orderList = (List)request.getAttribute("orderlist");%>
		<%List<Order> orderDetailList = new ArrayList<Order>();
			orderDetailList = (List)request.getAttribute("orderdetaillist");%>
	<jsp:include page="/DisplayProductDetails"/>
		<%List<Product> productList = new ArrayList<Product>(); %>
		<%productList = (List)request.getAttribute("productDetails"); %>
			
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		<nav class="list-group">
<!-- 			<a class="list-group-item active" href="user-profile-main.jsp"> Account overview  </a> -->
<!-- 			<a class="list-group-item" href="user-profile-orders.jsp"> My Orders </a> -->
<!-- 			<a class="list-group-item" href="user-profile-wishlist.jsp"> My wishlist </a> -->
<!-- 			<a class="list-group-item" href="edit-profile.jsp"> Edit Profile </a> -->
<!-- 			<a class="list-group-item" href="user-change-password.jsp"> Change Password </a>			 -->
<!-- 			<a class="list-group-item" href="LogoutServlet"> Log out </a> -->
			<a class="list-group-item" href="edit-profile.jsp"> Edit Profile </a>
			<%if(userobj.getRole().equalsIgnoreCase("customer")) {%>
			<a class="list-group-item active" href="user-profile-orders.jsp"> My Orders </a>
			<a class="list-group-item" href="page-wishlist.jsp"> My wishlist </a>
			<%} %>
			<a class="list-group-item" href="user-change-password.jsp"> Change Password </a>			
			<a class="list-group-item" href="LogoutServlet"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

		<% for(Order obj3 : orderDetailList) {%>
			<%for(Order obj2 : orderList) {%>
				<%for(Product obj : productList) {%>
				
<%-- 						<%System.out.println("order Id Condition : "+obj3.getOrderId().equalsIgnoreCase(obj2.getOrderId())); %> --%>
<%-- 					<%System.out.println("USer Id Condition : "+(obj2.getUserId()==userId)); %> --%>
<%-- 					<%System.out.println("Order id Condition : "+(obj2.getOrderId().equalsIgnoreCase(obj3.getOrderId()))); %> --%>
<%-- 					<%System.out.println("Product Id Condititon : "+(obj3.getProductId()==obj.getProductId()));%> --%>
					<%if(obj2.getUserId()==userId && obj3.getOrderId().equalsIgnoreCase(obj2.getOrderId()) && obj3.getProductId()==obj.getProductId() && (!obj2.getOrderStatus().equalsIgnoreCase("Delivered")) && obj2.getPaymentStatus().equalsIgnoreCase("TXN_SUCCESS")) {%>
<%-- 						<%System.out.println("Inside if in order");%> --%>
		<article class="card mb-4">
		<header class="card-header">
			
			<strong class="d-inline-block mr-3">Order ID: <%=obj2.getOrderId() %></strong>
			<span>Order Date: <%=obj2.getOrderDate() %></span>
		</header>
		<div class="card-body">
			<div class="row"> 
				<div class="col-md-8">
					<h6 class="text-muted">Delivery to</h6>
					<p><%=fname %> <%=lname %> <br>  
					Phone: <%=obj2.getPhoneNo()%> Email: <%=email%> <br>
			    	
			    	 Address: 
			    		<%= obj2.getAddress() %>
			 		</p>
				</div>
<!-- 				<div class="col-md-4"> -->
<!-- 					<h6 class="text-muted">Payment</h6> -->
<!-- 					<span class="text-success"> -->
<!-- 						<i class="fab fa-lg fa-cc-visa"></i> -->
<!-- 					    Visa  **** 4216   -->
<!-- 					</span> -->
<!-- 					<p>Subtotal: $356 <br> -->
<!-- 					 Shipping fee:  $56 <br>  -->
<!-- 					 <span class="b">Total:  $456 </span> -->
<!-- 					</p> -->
<!-- 				</div> -->
			</div> 
		</div> 
		<div class="table-responsive">
		<table class="table table-hover">
			<tbody><tr>
				<td width="65">
					<img src="data:image/png;base64,<%=obj.getProductImage1String()%>" class="img-xs border">
				</td>
				<td> 
					<p class="title mb-0"> <%=obj.getProductName() %></p>
					<var class="price text-muted">&#8377 <%=obj.getProductPrice() %></var>
				</td>
				<td><%=obj.getProductDiscription() %> </td>
				<td width="250"> <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#exampleModalCenter"
													onclick="getstatus('<%=obj2.getOrderStatus()%>')">Track Order</button>
<!-- 				<a href="#" class="btn btn-outline-primary">Track order</a>  -->
<!-- 					<div class="dropdown d-inline-block"> -->
<!-- 						 <a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a> -->
<!-- 						 <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 						 	<a href="#" class="dropdown-item">Return</a> -->
<!-- 						 	<a href="#"  class="dropdown-item">Cancel order</a> -->
<!-- 						 </div> -->
<!-- 					</div>  -->
				</td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td> -->
<!-- 					<img src="images/items/2.jpg" class="img-xs border"> -->
<!-- 				</td> -->
<!-- 				<td>  -->
<!-- 					<p class="title mb-0">Another name goes here </p> -->
<!-- 					<var class="price text-muted">USD 15</var> -->
<!-- 				</td> -->
<!-- 				<td> Seller <br> ABC shop </td> -->
<!-- 				<td>  -->
<!-- 					<a href="#" class="btn btn-outline-primary">Track order</a> -->
<!-- 					<div class="dropdown d-inline-block"> -->
<!-- 						 <a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a> -->
<!-- 						 <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 						 	<a href="#" class="dropdown-item">Return</a> -->
<!-- 						 	<a href="#"  class="dropdown-item">Cancel order</a> -->
<!-- 						 </div> -->
<!-- 					</div> dropdown.// -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> -->
<!-- 					<img src="images/items/3.jpg" class="img-xs border"> -->
<!-- 				</td> -->
<!-- 				<td>  -->
<!-- 					<p class="title mb-0">The name of the product  goes here </p> -->
<!-- 					<var class="price text-muted">USD 145</var> -->
<!-- 				</td> -->
<!-- 				<td> Seller <br> Wallmart </td> -->
<!-- 				<td> <a href="#" class="btn btn-outline-primary">Track order</a>  -->
<!-- 					<div class="dropdown d-inline-block"> -->
<!-- 						 <a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a> -->
<!-- 						 <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 						 	<a href="#" class="dropdown-item">Return</a> -->
<!-- 						 	<a href="#"  class="dropdown-item">Cancel order</a> -->
<!-- 						 </div> -->
<!-- 					</div> dropdown.// -->
<!-- 				</td> -->
<!-- 			</tr> -->
		</tbody></table>
		</div> 
		</article>
		<%} %>
		<% } %>
		<% } %>
		<%} %>
		
		 <div class="modal fade" id="exampleModalCenter" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Order
											Status</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body"><input type="text" readonly="true" id="status" class="form-control" ></input></div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Ok</button>
<!-- 										<button type="button" class="btn btn-primary"> -->
<!-- 											<a id="takeid">Delete</a> -->
										</button>
									</div>
								</div>
							</div>
						</div>


<!-- 		<article class="card order-item mb-4"> -->
<!-- 		<header class="card-header"> -->
<!-- 			<a href="#" class="float-right"> <i class="fa fa-print"></i> Print</a> -->
<!-- 			<strong class="d-inline-block mr-3">Order ID: 6123456789</strong> -->
<!-- 			<span>Order Date: 16 December 2018</span> -->
<!-- 		</header> -->
<!-- 		<div class="card-body"> -->
<!-- 			<div class="row">  -->
<!-- 				<div class="col-md-8"> -->
<!-- 					<h6 class="text-muted">Delivery to</h6> -->
<!-- 					<p>Michael Jackson <br>   -->
<!-- 					Phone +1234567890 Email: myname@pixsellz.com <br> -->
<!-- 			    	Location: Home number, Building name, Street 123,  Tashkent, UZB <br>  -->
<!-- 			    	P.O. Box: 100123 -->
<!-- 			 		</p> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<h6 class="text-muted">Payment</h6> -->
<!-- 					<span class="text-success"> -->
<!-- 						<i class="fab fa-lg fa-cc-visa"></i> -->
<!-- 					    Visa  **** 4216   -->
<!-- 					</span> -->
<!-- 					<p>Subtotal: $356 <br> -->
<!-- 					 Shipping fee:  $56 <br>  -->
<!-- 					 <span class="b">Total:  $456 </span> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 			</div> row.// -->
<!-- 		</div> card-body .// -->
<!-- 		<div class="table-responsive"> -->
<!-- 		<table class="table table-hover"> -->
<!-- 			<tbody><tr> -->
<!-- 				<td width="65"> -->
<!-- 					<img src="images/items/1.jpg" class="img-xs border"> -->
<!-- 				</td> -->
<!-- 				<td>  -->
<!-- 					<p class="title mb-0">Product name goes here </p> -->
<!-- 					<var class="price text-muted">USD 145</var> -->
<!-- 				</td> -->
<!-- 				<td> Seller <br> Nike clothing </td> -->
<!-- 				<td width="250"> <a href="#" class="btn btn-outline-primary">Track order</a>   -->
<!-- 					<div class="dropdown d-inline-block"> -->
<!-- 						 <a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a> -->
<!-- 						 <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 						 	<a href="#" class="dropdown-item">Return</a> -->
<!-- 						 	<a href="#"  class="dropdown-item">Cancel order</a> -->
<!-- 						 </div> -->
<!-- 					</div> dropdown.// -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td> -->
<!-- 					<img src="images/items/2.jpg" class="img-xs border"> -->
<!-- 				</td> -->
<!-- 				<td>  -->
<!-- 					<p class="title mb-0">Another name goes here </p> -->
<!-- 					<var class="price text-muted">USD 15</var> -->
<!-- 				</td> -->
<!-- 				<td> Seller <br> ABC shop </td> -->
<!-- 				<td> <a href="#" class="btn btn-outline-primary">Track order</a>   -->
<!-- 					<div class="dropdown d-inline-block"> -->
<!-- 						 <a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-outline-secondary">More</a> -->
<!-- 						 <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 						 	<a href="#" class="dropdown-item">Return</a> -->
<!-- 						 	<a href="#"  class="dropdown-item">Cancel order</a> -->
<!-- 						 </div> -->
<!-- 					</div> dropdown.// -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</tbody></table> -->
<!-- 		</div> table-responsive .end// -->
<!-- 		</article> card order-item .// -->


	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= FOOTER ========================= 
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
		</section>	<!-- footer-top.//  -->

		<section class="footer-bottom text-center">
		
				<p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
				<p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
				<br>
		</section>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->


</body>

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-orders.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
</html>