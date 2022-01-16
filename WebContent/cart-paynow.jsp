<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@page import="com.takealot.bean.ValidateUser"%>
<%@page import="com.takealot.bean.User"%>
 <%@page import="java.util.*" %>  
 <%
 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Merchant Check Out Page</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Evrsoft First Page">
</head>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

<body>
<%@ include file="header2.jsp" %>

<%HttpSession httpSession1 = request.getSession(false);
	User userobj =null;
	if(httpSession1!=null)
	{
		userobj = (User)httpSession1.getAttribute("loginBean");
	}%>

<%-- <%String productName = (String)request.getAttribute("productName"); %> --%>
<%-- <%String productPrice = (String)request.getAttribute("productPrice"); %> --%>
<%-- <%String productDiscription = (String)request.getAttribute("productDiscription"); %> --%>
<%-- <%String productId = (String)request.getAttribute("productId"); %> --%>
<%-- <%String userId = (String)request.getAttribute("userId"); %> --%>
<%-- <%String userFname = (String)request.getAttribute("userFname"); %> --%>
<%-- <%String userLname = (String)request.getAttribute("userLname"); %> --%>
<%String paymentMethod = (String)request.getAttribute("paymentmethod"); %>
<%String address = (String)request.getAttribute("address"); %>
<%String phoneNo = (String)request.getAttribute("phoneNo"); %>
<%-- <%String orderQuantity = (String)request.getAttribute("orderquantity"); %> --%>

<%String productIds = (String)request.getAttribute("productids"); %>
<%String productPrices = (String)request.getAttribute("productprices"); %>
<%String productQuantitys = (String)request.getAttribute("productquantitys"); %>
<%String orderQuantity = (String)request.getAttribute("orderquantitys"); %>
<%String userId = (String)request.getAttribute("userid"); %>
<%String orderAmount = (String)request.getAttribute("orderamount"); %>

	<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Place order</h4></header>
	
	<form id="myform" method="post" action="paymentredirect.jsp">
	
<!-- 			<table border="1"> -->
<!-- 			<tbody> -->
<!-- 				<tr> -->
<!-- 					<th>S.No</th> -->
<!-- 					<th>Label</th> -->
<!-- 					<th>Value</th> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>1</td> -->
<!-- 					<td><label>ORDER_ID::*</label></td> -->
<!-- 					<td><input id="ORDER_ID" tabindex="1" maxlength="20" size="20" -->
<!-- 						name="ORDER_ID" autocomplete="off" -->
<%-- 						value="ORDS_<%= randomInt %>"> --%>
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>2</td> -->
<!-- 					<td><label>CUSTID ::*</label></td> -->
<!-- 					<td><input type="hidden" id="CUST_ID" tabindex="2" maxlength="30" size="12" name="CUST_ID" autocomplete="off" value="CUST001"></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>3</td> -->
<!-- 					<td><label>INDUSTRY_TYPE_ID ::*</label></td> -->
<!-- 					<td><input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>4</td> -->
<!-- 					<td><label>Channel ::*</label></td> -->
<!-- 					<td><input type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12" -->
<!-- 						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB"> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>5</td> -->
<!-- 					<td><label>txnAmount*</label></td> -->
<!-- 					<td><input title="TXN_AMOUNT" tabindex="10" -->
<!-- 						type="text" name="TXN_AMOUNT" -->
<%-- 						value="<%=productPrice%>"> --%>
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 					<td></td> -->
<!-- 					<td><input value="CheckOut" type="submit"	onclick=""></td> -->
<!-- 				</tr> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 		* - Mandatory Fields -->


				<div class="form-row">
					<div class="col form-group">
						
						<input type="hidden" id="productIds" value="<%=productIds%>">
						<input type="hidden" id="orderQuantity" value="<%=orderQuantity%>">
						<input id="orderid"  type="hidden" class="form-control"   tabindex="1" maxlength="20" size="20"
						name="ORDER_ID" autocomplete="off"
						value="ORDS_<%= randomInt %>">
						
						<input type="hidden" id="userid" tabindex="2" maxlength="30" size="12" name="CUST_ID" autocomplete="off" value="<%=userId%>">

						
						<input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">
<!-- 				 		<label>Product Name</label> -->
				 		<input class="form-control" type="hidden" id="productprices" value="<%=productPrices%>"></input>
				 		<label>Total Price</label>
						<input id="productprice" readonly=true class="form-control"  title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="<%=orderAmount%>">
<!-- 						<label>Product Discription</label> -->
						<input id="productqua" class="form-control" type="hidden" value="<%=productQuantitys%>"></input>
					<input type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
						<label>Phone Number</label>
						<input id="phoneno" class="form-control" type="text" readonly=true value="<%=phoneNo%>"></input>
						<label>Payment Method</label>
						<input id="paymentmode" class="form-control" type="text" readonly=true value="<%=paymentMethod%>"></input>
						<label>Address</label>
						<textarea id="address" rows="5" cols="30" class="form-control" type="text" readonly=true value="<%=address%>"><%=address%></textarea>
<!-- 						<label>Phone number<span>*</span></label> -->
<%-- 						<input type="text" readonly="true" class="form-control"  name="phone" value="<%=phoneNo%>"></input> --%>
<!-- 					<label>Product Discription</label> -->
<!-- 						<input class="form-control" type="text"  ></input> -->
					</div> 																
				</div>
				 <div class="form-group">
			          <input id="paynow" value="PayNow" class="btn btn-primary btn-block" type="submit"	onclick="">
			    </div>      
	</form>
	</header>
	</article>
	</div>
	</section>
	<script>
		
		$(document).ready(function(){
			
			$('#paynow').click(function(){
				
// 				alert("called...");
				var productid = $('#productIds').val();
				alert("Product Ids : "+productid);
				var userid = $('#userid').val();
				var orderid = $('#orderid').val();
				var orderamount = $('#productprice').val();
				var address = $('#address').val();
				var phoneno = $('#phoneno').val();
				var paymentmode = $('#paymentmode').val();
				var productquantity = $('#productqua').val();
				var orderquantity = $('#orderQuantity').val();
				var productprice = $('#productprices').val();
				alert(orderquantity);
// 				alert("Product Id : "+productId);
// 				alert("User id : "+userId);
// 				alert("Order id : "+orderId);
// 				alert("Adddress : "+address);
// 				alert("Phone No  :"+phoneNo);
// 				alert("Payment Mode : "+paymentmode);
				
				if(paymentmode=="cash on delivery")
					{
						alert("inside if");
						$('#myform').attr('action',"successful-animation.jsp");
					}
				if(paymentmode=="online")
					{
				$.get("AddCartOrderDetail",{
					
					userId : userid,
					productIds : productid,
					orderId : orderid,
					orderAmount : orderamount,
					address : address,
					phoneNo : phoneno,
					paymentMode : paymentmode,
					productQuantitys : productquantity,
					orderQuantity : orderquantity,
					productPrices : productprice
				}).done(function(data){
					
// 					alert("order detail added..");
				});
					}
				else
					{
					$.get("AddCODCartOrderDetail",{
						
						userId : userid,
						productIds : productid,
						orderId : orderid,
						orderAmount : orderamount,
						address : address,
						phoneNo : phoneno,
						paymentMode : paymentmode,
						productQuantitys : productquantity,
						orderQuantity : orderquantity,
						productPrices : productprice
					}).done(function(data){
						
//	 					alert("order detail added..");
					});
					}
			});
		});
	</script>
</body>

</html>