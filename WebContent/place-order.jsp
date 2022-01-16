<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.takealot.bean.ValidateUser"%>
<%@page import="com.takealot.bean.User"%>
<%@page import="java.util.*"%>
 
 <html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Evrsoft First Page">

<title>Jain General Store</title>


<script>

	var flag = true;
	var phonePattern = /^([6-9]\d{9})$/;
	
	function checkAddress(){
		var address = document.myform.add1.value;
		address = address.trim();
		if (address == "") {
			document.getElementById("addspan").innerHTML = "Please enter address!";
			flag =  false;
		}
		else{
				document.getElementById("addspan").innerHTML="";
		}
	}
 	function checkPhone(){
 		var phoneno = document.myform.phone.value;	
 		phoneno = phoneno.trim();
 		if (phoneno == "") {
 			document.getElementById("phonenospan").innerHTML = "Please enter phone number!";
 			flag =  false;
 		}
 		else{
 			if (!(phonePattern.test(phoneno))) {
 				document.getElementById("phonenospan").innerHTML = "Invalid phone number!";
 				flag =  false;
 			}
 			else{
 				document.getElementById("phonenospan").innerHTML="";
 			}
 		}
 	}
	function checkPayment(){
		var getSelectedValue = document.querySelector('input[name="payment"]:checked');		
		if(getSelectedValue == null) {   
			document.getElementById("paymentspan").innerHTML = "Please select payment method!";
			flag = false;
		}
		else
			document.getElementById("paymentspan").innerHTML = "";
	}
	function checkValidation(){	
		flag=true;
 		checkPhone();
		checkAddress();
		checkPayment();
		return flag;
	}
</script>
<style type="text/css">
span{
	color:red;
	font-style : italic;
	font-size:13px;
}
</style>
</head>
<body>

<%@ include file="header2.jsp" %>
<%HttpSession httpSession1 = request.getSession(false);
	User userobj =null;
	if(httpSession1!=null)
	{
		userobj = (User)httpSession1.getAttribute("loginBean");
	}%>

<%String productName = (String)request.getAttribute("productName"); %>
<%String productPrice = (String)request.getAttribute("productPrice"); %>
<%String productDiscription = (String)request.getAttribute("productDis"); %>
<%String productId = (String)request.getAttribute("productId"); %>
<%int userId = (int)request.getAttribute("userId"); %>
<%String userFname = (String)request.getAttribute("userFname"); %>
<%String userLname = (String)request.getAttribute("userLname"); %>
<%String orderQuantity  = (String)request.getAttribute("orderquantity"); %>
<%System.out.println("Order Quantity in place order jsp : "+orderQuantity);%>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Place order</h4></header>
		<form  name="myform" action="PaymentServlet" method="POST">
		
				<div class="form-row">
					<div class="col form-group">
						
							<input type="hidden" name="productId" value="<%=productId%>">
							<input type="hidden" name="productName" value="<%=productName %>">
							<input type="hidden" name="productDiscription" value="<%=productDiscription%>">
							<input type="hidden" name="userId" value="<%=userId%>">
							<input type="hidden" name="userfname" value="<%=userFname%>">
							<input type="hidden" name="userlname" value="<%=userLname %>">
							<input type="hidden" name="orderquantity" value="<%=orderQuantity%>">
<!-- 						<label>Order Id</label> -->
<!-- 						<input class="form-control" type="text" id="ORDER_ID" tabindex="1" maxlength="20" size="20" -->
<!-- 						name="ORDER_ID" autocomplete="off" -->
<%-- 						value="ORDS_<%= randomInt %>"> --%>
<!-- 						<label>Customer Id</label> -->
<%-- 						<input id="CUST_ID" tabindex="2" maxlength="30" size="12" name="CUST_ID" autocomplete="off" value="<%=userId%>"> --%>
<!-- <!-- 						<label>Product Name</label> --> -->
<%-- <%-- 						<input class="form-control" type="text" readonly=true value="<%=productName%>"></input> --%> 
<!-- 						<label>INDUSTRY_TYPE_ID ::*</label> -->
<!-- 						<input id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"> -->
						<label>Product Price</label>
<%-- 						<input class="form-control" type="text" readonly=true value="Rs. <%=productPrice%>"></input> --%>
						<input readonly="true" class="form-control" title="TXN_AMOUNT" tabindex="10"
						type="text" name="productPrice"
						value="<%=productPrice%>">
<!-- 						<label>Channel ::*</label></td> -->
<!-- 					<input id="CHANNEL_ID" tabindex="4" maxlength="12" -->
<!-- 						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB"> -->
<!-- 						<label>Product Discription</label> -->
<%-- 						<textarea readonly="true" name="add1" class="form-control" rows="5" cols="35" value="<%=productDiscription%>"><%=productDiscription %></textarea> --%>
						<label>Phone number<span>*</span></label>
					  	<input type="text" class="form-control" placeholder="10 digit phone number" name="phone" ></input>					  	
					  	<span id="phonenospan"></span><br>
					  	<small>This phone number will be used while delivering the product...</small>
					</div> <!-- form-group end.// -->																
				</div> <!-- form-row end.// -->		
				<div class="form-row">
					<label>Address</label>
					<% if(userobj.getAddress1()!=null && !userobj.getAddress1().isEmpty()) {%>            		
            		<textarea  name="add1" class="form-control" rows="5" cols="35"><%=userobj.getAddress1() %></textarea>
            		<%} %>
            		<% if(userobj.getAddress1()==null || userobj.getAddress1().isEmpty()) {%>            		
            		<textarea  name="add1" class="form-control" rows="5" cols="35"  placeholder="Address to deliver product..."></textarea>
            		<%} %>	
            		<span id="addspan"></span>
				</div>		
				<br>	
				<label>Choose payment option</label><br>									
				<input  class="pmode" type="radio" name="payment" id="cod" value="cash on delivery">  Cash on delivery<br>   
				<input  class="pmode" type="radio" name="payment" id="online" value="online">  Online payment<br>
				<span id="paymentspan"></span>
				<br><br>
			    <div class="form-group">
			          <button type="submit" class="btn btn-primary btn-block" name="submit" onclick="return checkValidation()"> Proceed  </button>
			    </div> <!-- form-group// -->      
			    <!-- <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> I am agree with <a href="#">terms and contitions</a>  </div> </label>
		        </div> form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>

</body>
<!-- <script> -->
<!-- // 	$(document).ready(function(){ -->
		
<!-- // 		$('.pmode').change(function(){ -->
			
<!-- // 			alert("Called.."); -->
<!-- // 			var paymentMode = $(this).val(); -->
<!-- // 			alert(paymentMode); -->
<!-- // 			alert($(this).val()); -->
<!-- // 			alert(paymentMode=="online"); -->
<!-- // 			if(paymentMode =="cod") -->
<!-- // 				{ -->
<!-- // 					alert("inside if"); -->
<!-- // 					$('#myform').attr('action',"successful-animation.jsp"); -->
<!-- // 				} -->
<!-- // 		}); -->
<!-- // 	}); -->
<!-- </script> -->
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>

