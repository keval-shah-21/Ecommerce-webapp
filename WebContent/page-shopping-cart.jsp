<!DOCTYPE HTML>
<%@page import="com.takealot.bean.Cart"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-shopping-cart.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:08:57 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Jain General Store</title>

</head>
<body>


<!-- <header class="section-header"> -->
<!-- <section class="header-main border-bottom"> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row align-items-center"> -->
<!-- 			<div class="col-xl-2 col-lg-3 col-md-12"> -->
<!-- 				<a href="../../index.html" class="brand-wrap"> -->
<!-- 					<img class="logo" src="images/logo.png"> -->
<!-- 				</a> brand-wrap.// -->
<!-- 			</div> -->
<!-- 			<div class="col-xl-6 col-lg-5 col-md-6"> -->
<!-- 				<form action="#" class="search-header"> -->
<!-- 					<div class="input-group w-100"> -->
<!-- 						<select class="custom-select border-right"  name="category_name"> -->
<!-- 								<option value="">All type</option><option value="codex">Special</option> -->
<!-- 								<option value="comments">Only best</option> -->
<!-- 								<option value="content">Latest</option> -->
<!-- 						</select> -->
<!-- 					    <input type="text" class="form-control" placeholder="Search"> -->
					    
<!-- 					    <div class="input-group-append"> -->
<!-- 					      <button class="btn btn-primary" type="submit"> -->
<!-- 					        <i class="fa fa-search"></i> Search -->
<!-- 					      </button> -->
<!-- 					    </div> -->
<!-- 				    </div> -->
<!-- 				</form> search-wrap .end// -->
<!-- 			</div> col.// -->
<!-- 			<div class="col-xl-4 col-lg-4 col-md-6"> -->
<!-- 				<div class="widgets-wrap float-md-right"> -->
<!-- 					<div class="widget-header mr-3"> -->
<!-- 						<a href="#" class="widget-view"> -->
<!-- 							<div class="icon-area"> -->
<!-- 								<i class="fa fa-user"></i> -->
<!-- 								<span class="notify">3</span> -->
<!-- 							</div> -->
<!-- 							<small class="text"> My profile </small> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="widget-header mr-3"> -->
<!-- 						<a href="#" class="widget-view"> -->
<!-- 							<div class="icon-area"> -->
<!-- 								<i class="fa fa-comment-dots"></i> -->
<!-- 								<span class="notify">1</span> -->
<!-- 							</div> -->
<!-- 							<small class="text"> Message </small> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="widget-header mr-3"> -->
<!-- 						<a href="#" class="widget-view"> -->
<!-- 							<div class="icon-area"> -->
<!-- 								<i class="fa fa-store"></i> -->
<!-- 							</div> -->
<!-- 							<small class="text"> Orders </small> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="widget-header"> -->
<!-- 						<a href="#" class="widget-view"> -->
<!-- 							<div class="icon-area"> -->
<!-- 								<i class="fa fa-shopping-cart"></i> -->
<!-- 							</div> -->
<!-- 							<small class="text"> Cart </small> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> widgets-wrap.// -->
<!-- 			</div> col.// -->
<!-- 		</div> row.// -->
<!-- 	</div> container.// -->
<!-- </section> header-main .// -->

<!-- <nav class="navbar navbar-main navbar-expand-lg border-bottom"> -->
<!--   <div class="container"> -->

<!--     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--       <span class="navbar-toggler-icon"></span> -->
<!--     </button> -->

<!--     <div class="collapse navbar-collapse" id="main_nav"> -->
<!--       <ul class="navbar-nav"> -->
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
<!--       	<li class="nav-item"> -->
<!--            <a class="nav-link" href="#">Ready to ship</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#">Trade shows</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#">Services</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#">Sell with us</a> -->
<!--         </li> -->
<!--       </ul> -->
<!--       <ul class="navbar-nav ml-md-auto"> -->
<!--       	  <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">Get the app</a> -->
<!--           </li> -->
<!-- 	      <li class="nav-item dropdown"> -->
<!-- 	        <a class="nav-link dropdown-toggle" href="../../../external.html?link=http://example.com/" data-toggle="dropdown">English</a> -->
<!-- 	        <div class="dropdown-menu dropdown-menu-right"> -->
<!-- 	          <a class="dropdown-item" href="#">Russian</a> -->
<!-- 	          <a class="dropdown-item" href="#">French</a> -->
<!-- 	          <a class="dropdown-item" href="#">Spanish</a> -->
<!-- 	          <a class="dropdown-item" href="#">Chinese</a> -->
<!-- 	        </div> -->
<!-- 	      </li> -->
<!-- 	   </ul> -->
<!--     </div> collapse .// -->
<!--   </div> container .// -->
<!-- </nav> -->
<!-- </header> section-header.// -->
<%@ include file="header.jsp" %>
<jsp:include page="/DisplayProductDetails"/>
<jsp:include page="/FetchCartDetail"/>
<%List<Product> productList = new ArrayList<Product>(); 
	productList = (List)request.getAttribute("productDetails");%>
<%List<Cart> cartList = new ArrayList<Cart>();
	cartList  = (List)request.getAttribute("cartDetails");%>
	
<%int userId=0;
if(httpSession!=null)
{
	User obj =new User();
	obj = (User)httpSession.getAttribute("loginBean");
	userId = obj.getCustomerId();
	
}
 %>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<main class="col-md-9">
<div class="card">
<form action="CartBuyNow" method="POST">
<table class="table table-borderless table-shopping-cart">
<thead class="text-muted">
<tr class="small text-uppercase">
  <th scope="col">Product</th>
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="120">Price(&#8377 )</th>
  <th scope="col" class="text-right" width="200"> </th>
</tr>
</thead>
<tbody>
<%int sum = 0; %>
<%int pprice = 0; 
	int tempprice=0;%>
<%System.out.println(userId); %>
<%int cnt=0; %>
<%for(Product obj : productList){ %>
	<%for(Cart obj1 : cartList) {%>
	
	<%if(obj1.getProductId()==obj.getProductId() && obj1.getUserId()==userId) {%>
	<%cnt++; %>
<tr>
		<%tempprice =obj.getProductPrice();
			sum = sum+tempprice;%>
		
	<td>
		<figure class="itemside">
			<input type="hidden" class="productid" value="<%=obj.getProductId()%>">
			<input type="hidden" class="productprice" value="<%=obj.getProductPrice()%>">
			<input type="hidden" id="productids" name="productids">
			<input type="hidden" id="productquantity" name="productquantity">
			<input type="hidden" id="productprice" name="productprice">
			<input type="hidden" id="alltotal" name="total" ">
			<input type="hidden" name="userid" value="<%=userId%>">
			<input type="hidden" name="orderquantitys" id="orderquantity">
			<div class="aside"><img src="data:image/png;base64,<%=obj.getProductImage1String()%>" class="img-sm"></div>
			<figcaption class="info">
				<a href="#" class="title text-dark"><%=obj.getProductName() %></a>
				<p class="text-muted small"><%=obj.getProductDiscription() %><br> </p>
			</figcaption>
		</figure>
	</td>
<!-- 	<td>  -->
<!-- 		<select class="form-control"> -->
<!-- 			<option>1</option> -->
<!-- 			<option>2</option>	 -->
<!-- 			<option>3</option>	 -->
<!-- 			<option>4</option>	 -->
<!-- 		</select>  -->
<!-- 	</td> -->
	<td>
		<div class="form-row  mt-4">
		<div class="form-group col-md flex-grow-0">
			<div class="input-group mb-3 input-spinner">
			  <div class="input-group-prepend">
			    <button class="btn btn-light minusbutton" type="button" data-id="<%=obj.getProductPrice() %>" id="button-minus"> &minus; </button>
			  </div>
			  <input type="text" id="quantity1" class="form-control quantity" value="1">
			  <div class="input-group-append">
			    <button class="btn btn-light plusbutton" type="button" data-id="<%=obj.getProductPrice() %>" id="button-plus"> + </button>
			  </div>
			</div>
		</div> <!-- col.// -->
		
	</div> <!-- row.// -->
	</td>
	<td> 
		<div class="price-wrap"> 
			
			<var class="price"><%=obj.getProductPrice() %></var> 
<!-- 			<small class="text-muted"> $315.20 each </small>  -->
		</div> <!-- price-wrap .// -->
	</td>
	<td class="text-right"> 
<!-- 	<a data-original-title="Save to Wishlist" title="" href="#" class="btn btn-light" data-toggle="tooltip"> <i class="fa fa-heart"></i></a>  -->
	<a href="DeleteCartProduct?id=<%=obj1.getCartId() %>" class="btn btn-light"> Remove</a>
	</td>
	<%} %>
		<%} %>
	<%} %>
	<%if(cnt==0) {%>
		<h4>No items in cart</h4>
	<%} %>
</tr>
<!-- <tr> -->
<!-- 	<td> -->
<!-- 		<figure class="itemside"> -->
<!-- 			<div class="aside"><img src="images/items/2.jpg" class="img-sm"></div> -->
<!-- 			<figcaption class="info"> -->
<!-- 				<a href="#" class="title text-dark">Product name  goes here nice</a> -->
<!-- 				<p class="text-muted small">Size: XL, Color: blue, <br> Brand: Gucci</p> -->
<!-- 			</figcaption> -->
<!-- 		</figure> -->
<!-- 	</td> -->
<!-- <!-- 	<td>  --> -->
<!-- <!-- 		<select class="form-control"> --> 
<!-- <!-- 			<option>1</option> --> 
<!-- <!-- 			<option>2</option>	 --> 
<!-- <!-- 			<option>3</option>	 --> 
<!-- <!-- 			<option>4</option>	 --> 
<!-- <!-- 		</select>  --> 
<!-- <!-- 	</td> -->
<!-- 	<td>  -->
<!-- 		<div class="price-wrap">  -->
<!-- 			<var class="price">$149.97</var>  -->
<!-- 			<small  class="text-muted"> $75.00 each </small>   -->
<!-- 		</div> price-wrap .// -->
<!-- 	</td> -->
<!-- 	<td class="text-right">  -->
<!-- 	<a data-original-title="Save to Wishlist" title="" href="#" class="btn btn-light" data-toggle="tooltip"> <i class="fa fa-heart"></i></a>  -->
<!-- 	<a href="#" class="btn btn-light btn-round"> Remove</a> -->
<!-- 	</td> -->
<!-- </tr> -->
<!-- <tr> -->
<!-- 	<td> -->
<!-- 		<figure class="itemside"> -->
<!-- 			<div class="aside"><img src="images/items/3.jpg" class="img-sm"></div> -->
<!-- 			<figcaption class="info"> -->
<!-- 				<a href="#" class="title text-dark">Another name of some product goes just here as a demo text </a> -->
<!-- 				<p class="small text-muted">Size: XL, Color: blue,  Brand: Tissot</p> -->
<!-- 			</figcaption> -->
<!-- 		</figure> -->
<!-- 	</td> -->
<!-- <!-- 	<td>  --> 
<!-- <!-- 		<select class="form-control"> --> 
<!-- <!-- 			<option>1</option> --> 
<!-- <!-- 			<option>2</option>	 --> 
<!-- <!-- 			<option>3</option>	 --> 
<!-- <!-- 		</select>  --> 
<!-- <!-- 	</td> --> 
<!-- 	<td>  -->
<!-- 		<div class="price-wrap">  -->
<!-- 			<var class="price">$98.00</var>  -->
<!-- 			<small class="text-muted"> $578.00 each</small>  -->
<!-- 		</div> price-wrap .// -->
<!-- 	</td> -->
<!-- 	<td class="text-right">  -->
<!-- 		<a data-original-title="Save to Wishlist" title="" href="#" class="btn btn-light" data-toggle="tooltip"> <i class="fa fa-heart"></i></a>  -->
<!-- 		<a href="#" class="btn btn-light btn-round"> Remove</a> -->
<!-- 	</td> -->
<!-- </tr> -->
</tbody>
</table>

<div class="card-body border-top">
	<button class="btn btn-primary float-md-right purchase"> Make Purchase <i class="fa fa-chevron-right"></i> </button>
	<a href="welcome.jsp" class="btn btn-light"> <i class="fa fa-chevron-left"></i> Continue shopping </a>
</div>		
</div> <!-- card.// -->

<!-- <div class="alert alert-success mt-3"> -->
<!-- 	<p class="icontext"><i class="icon text-success fa fa-truck"></i> Free Delivery within 1-2 weeks</p> -->
<!-- </div> -->

	</main> <!-- col.// -->
	<aside class="col-md-3">
		<div class="card mb-3">
			<div class="card-body">
			<form>
<!-- 				<div class="form-group"> -->
<!-- 					<label>Have coupon?</label> -->
<!-- 					<div class="input-group"> -->
<!-- 						<input type="text" class="form-control" name="" placeholder="Coupon code"> -->
<!-- 						<span class="input-group-append">  -->
<!-- 							<button class="btn btn-primary">Apply</button> -->
<!-- 						</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
			</form>
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
		<div class="card">
			<div class="card-body">
					<dl class="dlist-align">
					  <dt>Total price:</dt>
					  <dd class="text-right">&#8377 <label name="grandtotal" id="grandTotal" value="<%=sum%>"><%=sum%></label></dd>
					</dl>
<!-- 					<dl class="dlist-align"> -->
<!-- 					  <dt>Discount:</dt> -->
<!-- 					  <dd class="text-right">USD 658</dd> -->
<!-- 					</dl> -->
					<dl class="dlist-align">
					  <dt>Total:</dt>
					  <dd class="text-right  h5">&#8377 <strong id="gTotal" value="<%=sum%>"><%=sum %></strong></dd>
					</dl>
					<hr>
<!-- 					<p class="text-center mb-3"> -->
<!-- 						<img src="images/misc/payments.png" height="26"> -->
<!-- 					</p> -->
					
			</div> <!-- card-body.// -->
		</div>  <!-- card .// -->
	</aside> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
</form>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<!-- <section class="section-name border-top padding-y"> -->
<!-- <div class="container"> -->
<!-- <h6>Payment and refund policy</h6> -->
<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod -->
<!-- tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, -->
<!-- quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo -->
<!-- consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse -->
<!-- cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non -->
<!-- proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod -->
<!-- tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, -->
<!-- quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo -->
<!-- consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse -->
<!-- cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non -->
<!-- proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->

<!-- </div>container // -->
<!-- </section> -->
<!-- ========================= SECTION  END// ========================= -->

<%@ include file="Footer.jsp" %>

<script>
	
	$(document).ready(function(){
		
		
		
		
		$('.plusbutton').click(function(){
			
			var price = parseInt($(this).attr('data-id'));
			var quantity = parseInt($(this).parent().parent().find('#quantity1').val());
// 			alert("price : "+price);
// 			alert("quanti"+ quantity);
			quantity = quantity + 1;
			if(quantity > 20)
			{
				alert("Quantity can not more than 20");
				quantity =20;
				$('#quantity1').val("20");
			}
			var productTotalPrice = price * quantity;
			$(this).parent().parent().find('#quantity1').val(quantity);
// 			alert("Price : "+(price*quantity));
// 			alert($(this).closest('tr').find('.price').html());
			$(this).closest('tr').find('.price').text(productTotalPrice);
			updatetotal();
			
			
			
		});
		$('.minusbutton').click(function(){
			
			var price = parseInt($(this).attr('data-id'));
			var quantity = parseInt($(this).parent().parent().find('#quantity1').val());
// 			alert("price : "+price);
// 			alert("quanti"+ quantity);
			quantity = quantity - 1;
			if(quantity < 1)
				{
					alert("Quantity can not less than 1");
					quantity =1;
					$('#quantity1').val("1");
				}
			var productTotalPrice = price * quantity;
			$(this).parent().parent().find('#quantity1').val(quantity);
// 			alert("Price : "+(price*quantity));
// 			alert($(this).closest('tr').find('.price').html());
			$(this).closest('tr').find('.price').text(productTotalPrice);
			
			updatetotal();
			
			
			
		});
		
		function updatetotal()
		{
			var grandTotal = 0;
			$( '.price' ).each(function() {
			     var totalPrice = parseInt($( this ).text());
			     grandTotal = grandTotal + totalPrice;
			  });
// 			alert(grandTotal);
			$('#grandTotal').text(grandTotal);
			$('#gTotal').text(grandTotal);
			$('#alltotal').val(grandTotal);
// 			alert("Grand Total : "+$('#alltotal').val());
		}
		$('.purchase').click(function(){
			
			updatetotal();
			var c=0;
			var qt;
			var pid;
			var pprice;
			$('.quantity').each(function(i,obj){
				
				if(c==0)
					{
						qt = parseInt($(this).val())+" ";
						c++;
					}
				else
					{
						qt = qt + parseInt($(this).val())+" ";
						
					}
			});
			c=0;
// 			alert("Quantity : "+qt);
			var cnt = 0;
			$('.productid').each(function(i,obj){
				
				cnt++;
				if(c==0)
					{
						pid = parseInt($(this).val())+" ";
						c++;
					}
				else
					{
						pid = pid + parseInt($(this).val())+" ";
					}
			});
			c=0;
// 			alert(pid);
			$('.productprice').each(function(i,obj){
				
				if(c==0)
					{
						pprice = parseInt($(this).val())+" ";
						c++;
					}
				else
					{
						pprice = pprice + parseInt($(this).val())+" ";
					}
			});
// 			alert(pprice);
			$('#productids').val(pid);
// 			alert("Product Ids :"+$('#productids').val());
			$('#productquantity').val(qt);
// 			alert("product Quantity :"+$('#productquantity').val());
			$('#productprice').val(pprice);
// 			alert("Product Price :"+$('#productprice').val());
			$('#orderquantity').val(cnt);
			
		});
	});
</script>

</body>

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-shopping-cart.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:08:58 GMT -->
</html>