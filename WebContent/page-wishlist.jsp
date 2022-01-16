<!DOCTYPE HTML>
<%@page import="com.takealot.bean.Wishlist"%>
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



</head>
<body>


<%@ include file="header.jsp" %>
<jsp:include page="/DisplayProductDetails"/>
<jsp:include page="/DisplayWishlist"/>
<%List<Product> productList = new ArrayList<Product>(); 
	productList = (List)request.getAttribute("productDetails");%>
<%List<Wishlist> wishlistList = new ArrayList<Wishlist>(); 
	wishlistList = (List)request.getAttribute("wishlistDetails");%>
	
<%int userId=0;
User userobj =new User();
if(httpSession!=null)
{
	
	userobj = (User)httpSession.getAttribute("loginBean");
	userId = userobj.getCustomerId();
	
}
 %>

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
<!-- 			<a class="list-group-item" href="page-profile-main.html"> Account overview  </a> -->
<!-- 			<a class="list-group-item" href="page-profile-address.html"> My Address </a> -->
<!-- 			<a class="list-group-item" href="page-profile-orders.html"> My Orders </a> -->
<!-- 			<a class="list-group-item active" href="page-profile-wishlist.html"> My wishlist </a> -->
<!-- 			<a class="list-group-item" href="page-profile-seller.html"> My Selling Items </a> -->
<!-- 			<a class="list-group-item" href="page-profile-setting.html"> Settings </a> -->
<!-- 			<a class="list-group-item" href="page-index-1.html"> Log out </a> -->
	
			<a class="list-group-item" href="edit-profile.jsp"> Edit Profile </a>
			<%if(userobj.getRole().equalsIgnoreCase("customer")) {%>
			<a class="list-group-item" href="user-profile-orders.jsp"> My Orders </a>
			<a class="list-group-item active" href="page-wishlist.jsp"> My wishlist </a>
			<%} %>
			<a class="list-group-item" href="user-change-password.jsp"> Change Password </a>			
			<a class="list-group-item" href="LogoutServlet"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">
	
		<%int cnt = 0; %>
		<article class="card">
			<div class="card-body">
		
		<div class="row">
				<%for(Product obj : productList) {%>
					<%for(Wishlist obj1 :wishlistList) { %>
					<%if(obj.getProductId()==obj1.getProductId() && obj1.getUserId()==userId) {%>
						<%cnt++; %>
				<div class="col-md-6">
					<figure class="itemside mb-4">
						<div class="aside"><img src="data:image/png;base64,<%=obj.getProductImage1String()%>" class="border img-md"></div>
						<figcaption class="info">
							<input type="hidden" id="productId" name="productId" value="<%=obj.getProductId()%>">
							<a href="#" class="title"><%=obj.getProductName() %></a>
							<p class="price mb-2">&#8377 <%=obj.getProductPrice() %></p>
							<a href="#" class="btn btn-secondary btn-sm cart" id="cartid"> Add to cart </a>
							<a href="DeleteWishlistProduct?id=<%=obj1.getWishlistId() %>" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
					<%} %>
					<%} %>
				<%} %>
			<%if(cnt==0) {%>
				<h4>No items in wishlist</h4>
			<%} %>
		
<!-- 				<div class="col-md-6"> -->
<!-- 					<figure class="itemside mb-4"> -->
<!-- 						<div class="aside"><img src="images/items/2.jpg" class="border img-md"></div> -->
<!-- 						<figcaption class="info"> -->
<!-- 							<a href="#" class="title">Men's Jackeet for Winter </a> -->
<!-- 							<p class="price mb-2">$1280</p> -->
<!-- 							<a href="#" class="btn btn-secondary btn-sm"> Add to cart </a> -->
<!-- 							<a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a> -->
<!-- 						</figcaption> -->
<!-- 					</figure> -->
<!-- 				</div> col.// -->

<!-- 				<div class="col-md-6"> -->
<!-- 					<figure class="itemside mb-4"> -->
<!-- 						<div class="aside"><img src="images/items/3.jpg" class="border img-md"></div> -->
<!-- 						<figcaption class="info"> -->
<!-- 							<a href="#" class="title">Another book of item goes here </a> -->
<!-- 							<p class="price mb-2">$280</p> -->
<!-- 							<a href="#" class="btn btn-secondary btn-sm"> Add to cart </a> -->
<!-- 							<a href="#" class="btn btn-danger btn-sm" data-toggle="tooltip" title="" data-original-title="Remove from wishlist"> <i class="fa fa-times"></i> </a> -->
<!-- 						</figcaption> -->
<!-- 					</figure> -->
<!-- 				</div> col.// -->
			</div> <!-- row .//  -->

			</div> <!-- card-body.// -->
		</article>


	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= FOOTER ========================= -->
<%@ include file="Footer.jsp" %>
<!-- ========================= FOOTER END // ========================= -->


<script>
	
	$(document).ready(function(){
		
		$('.cart').click(function(){
			
			alert("called...");
			var pid = parseInt($(this).parent().find('#productId').val());
			alert(pid);
			$.get("AddToCart",{
				id : pid
			}).done(function(data){
				
					if(data == 'true')
						{
							alert("product added to Cart...");
						}
			});
		});
		
	});
</script>
</body>

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-wishlist.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
</html>