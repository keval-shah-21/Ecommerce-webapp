<!DOCTYPE HTML>
<%@page import="com.takealot.bean.User"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-setting.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:01 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title>Jain General Store</title>

<%-- <%@ include file="common_plugin.jsp" %> --%>

<!-- <!-- jQuery --> 
<!-- <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script> -->

<!-- <!-- Bootstrap4 files--> 
<!-- <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script> -->
<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/> -->

<!-- <!-- Font awesome 5 --> 
<!-- <link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet"> -->

<!-- <!-- custom style --> 
<!-- <link href="css/ui.css" rel="stylesheet" type="text/css"/> -->
<!-- <link href="css/responsive.css" rel="stylesheet" type="text/css" /> -->

<!-- <!-- custom javascript --> 
<!-- <script src="js/script.js" type="text/javascript"></script> -->
<script type="text/javascript">
var flag = true;
var namepattern = /^([a-zA-Z]+)$/;
var phonepattern = /^([6-9]\d{9})$/;

function checkFname(){
	
	var fname = document.myform.fname.value;
	fname = fname.trim();
	if(fname==""){
		document.getElementById("fnamespan").innerHTML="Please enter your first name!";
		flag= false;
	}
	else{
		document.getElementById("fnamespan").innerHTML="";
		if(!(namepattern.test(fname))){
			document.getElementById("fnamespan").innerHTML="Invalid name!";
			flag =  false;
		}
		else{
			document.getElementById("fnamespan").innerHTML="";
		}
	}
}

function checkLname(){
	var lname = document.myform.lname.value;
	lname = lname.trim();
	if(lname==""){
		document.getElementById("lnamespan").innerHTML="Please enter your last name!";
		flag= false;
	}
	else{	
		document.getElementById("lnamespan").innerHTML
		if(!(namepattern.test(lname))){
			document.getElementById("lnamespan").innerHTML="Invalid name!";
			flag= false;
		}
		else{
			document.getElementById("lnamespan").innerHTML="";
		}
	}
}

function checkPhone(){
	
	var phoneno = document.myform.phoneno.value;
	phoneno = phoneno.trim();
	if (phoneno != "") {
		if (!(phonepattern.test(phoneno))) {
			document.getElementById("phononospan").innerHTML = "Invalid phone number!";
			flag =  false;
		}
		else{
			document.getElementById("phononospan").innerHTML="";
		}
	}
}

function checkValidation(){
	flag = true;
	
	checkFname();
	checkLname();
	checkPhone();
	
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


<%HttpSession httpSession1 = request.getSession(false);
	User userobj =null;
	if(httpSession1!=null)
	{
		userobj = (User)httpSession1.getAttribute("loginBean");
	}%>
<%if(userobj.getRole().equalsIgnoreCase("customer")){ %>
	<%@ include file="header.jsp" %>
<%} %>
<%if(!userobj.getRole().equalsIgnoreCase("customer")){ %>
	<%@ include file="header3.jsp" %>
<%} %>

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
	<center><h2 class="title-page">My account</h2></center>
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION PAGETOP END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		<nav class="list-group">
			<!-- <a class="list-group-item active" href="user-profile-main.jsp"> Account overview  </a>
			<a class="list-group-item" href="user-profile-orders.jsp"> My Orders </a>
			<a class="list-group-item" href="user-profile-wishlist.jsp"> My wishlist </a> -->
			<a class="list-group-item active" href="edit-profile.jsp"> Edit Profile </a>
			<%if(userobj.getRole().equalsIgnoreCase("customer")) {%>
			<a class="list-group-item" href="user-profile-orders.jsp"> My Orders </a>
			<a class="list-group-item" href="page-wishlist.jsp"> My wishlist </a>
			<%} %>		
			<a class="list-group-item" href="user-change-password.jsp"> Change Password </a>
				
			<a class="list-group-item" href="LogoutServlet"> Log out </a>
		</nav>
	</aside> <!-- col.// -->
	<main class="col-md-9">

	<div class="card">
      <div class="card-body">
     <form class="row" name="myform" action="EditServlet" method="POST" enctype="multipart/form-data">
     	<div class="col-md-9">
     	
     		
     		<% if(userobj.getUserProfilepicString()!=null && !userobj.getUserProfilepicString().isEmpty()) {%>
     		<div class="col-md">
     		<img src="data:image/png;base64,<%=userobj.getUserProfilepicString() %>" class="img-md rounded-circle border"></img><br><br>
			<input type="file" name = "profilePhoto"></input> 
     		</div>  
     		<%} %>
     		<% if(userobj.getUserProfilepicString()==null || userobj.getUserProfilepicString().isEmpty()) {%>
     		<div class="col-md">
     		<img src="images/user.png" class="img-md rounded-circle border"></img><br><br>
			<input type="file" name = "profilePhoto"></input> 
     		</div>  
     		<%} %>
     	
      	<br>
     		<div class="form-row">
     		
				<div class="col form-group">
					<label>Fisrt Name</label>
				  	<input type="text" name="fname" class="form-control" value="<%=userobj.getFname()%>">
				  	<span id="fnamespan"></span>
				</div> <!-- form-group end.// -->
				<div class="col form-group">
					<label>Last Name</label>
				  	<input type="text" name="lname" class="form-control" value="<%=userobj.getLname()%>">
				  	<span id="lnamespan"></span>
				</div> <!-- form-group end.// -->
				
			</div> <!-- form-row.// -->
			<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Email</label>
				  <input type="text" name="emailid" id="emailID" class="form-control" value="<%=userobj.getEmail()%>">
				</div> <!-- form-group end.// -->
				<% if(userobj.getContact()!=null && !userobj.getContact().isEmpty()) {%>
				<div class="form-group col-md-6">
				  <label>Phone</label>
				  <input type="text" name="phoneno" class="form-control" value="<%=userobj.getContact()%>">
				   <span id="phononospan"></span>
				</div> <!-- form-group end.// -->
				<%} %>
				<% if(userobj.getContact()==null || userobj.getContact().isEmpty()) {%>
				<div class="form-group col-md-6">
				  <label>Phone</label>
				  <input type="text" name="phoneno" class="form-control" placeholder="Not Available">
				   <span id="phononospan"></span>
				</div> <!-- form-group end.// -->
				<%} %>
				<%if(userobj.getRole().equalsIgnoreCase("Delivery Boy")) {%>
					<div class="form-group col-md-6">
				  <label>Salary</label>
				  <input type="text" name="emailid" id="emailID" class="form-control" value="<%=userobj.getSalary()%>" readonly="true">
				</div> <!-- form-group end.// -->
				<%} %>
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-6">
				
					<div class="row">
        		   		<!--  <div class="form-group col-md-6">
				  			<input type="textarea"></textarea>
						</div> form-group end.//
						<div class="form-group col-md-6">
				  			<input type="textarea" ></textarea>
						</div> form-group end.// -->
						
            		</div>	<!-- row.// -->
            		<%if(!userobj.getRole().equalsIgnoreCase("admin")) {%>
            		<% if(userobj.getAddress1()!=null && !userobj.getAddress1().isEmpty()) {%>
            		<label>Address 1</label>
            		<textarea  name="add1" class="form-control" rows="5" cols="35"><%=userobj.getAddress1() %></textarea>
            		<%} %>
            		<% if(userobj.getAddress1()==null || userobj.getAddress1().isEmpty()) {%>
            		<label>Address 1</label>
            		<textarea  name="add1" class="form-control" rows="5" cols="35" placeholder="Not Available"></textarea>
            		<%} %>
            		<% if(userobj.getAddress2()!=null && !userobj.getAddress2().isEmpty()) {%>
            		<label>Address 2</label>
						<textarea name="add2" class="form-control" rows="5" cols="35"><%=userobj.getAddress2() %></textarea>
					<%} %>
					<% if(userobj.getAddress2()==null || userobj.getAddress2().isEmpty()) {%>
					<label>Address 2</label>
						<textarea name="add2" class="form-control" rows="5" cols="35" placeholder="Not Available"></textarea>
					<%} %>
					<%} %>
				</div>
			</div>
			
			<button class="btn btn-primary" onclick="return checkValidation()" >Save</button>	
			<!-- <button class="btn btn-light"onclick="pageR()">Change password</button>	 -->
			
			<br><br><br><br><br><br>
			
			

     	</div> <!-- col.// -->
     	
     </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->



	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->
<%@ include file="Footer.jsp" %> 

<script type="text/javascript">
	document.getElementById("emailID").readOnly = true;
</script>>

</body>

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-profile-setting.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:02 GMT -->
</html>