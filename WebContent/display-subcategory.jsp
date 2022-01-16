<!DOCTYPE HTML>
<%@page import="com.takealot.bean.SubCategory"%>
<%@page import="com.takealot.bean.Category"%>
<%@page import="com.takealot.bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-index-1.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:08:42 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">


<!-- <meta charset="UTF-8"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    

<title>Jain General Store</title>

<%@ include file="common_plugin.jsp" %>

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap3661.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5  -->
<link href="fonts/fontawesome/css/all.min3661.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui3661.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive3661.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="js/script3661.js" type="text/javascript"></script>
<script>

function getdid(userid) {
	
	var uid = userid;
	var strLink = "DeleteSubCategory?id=" + uid;
	document.getElementById("takeid").setAttribute("href", strLink);
}
</script>
<style>
h2{
	text-align : center;
	color : Tomato;
	font-family : Lucida Console;
	text-decoration : underline;
}
</style>
</head>
<body>


<%@ include file="header3.jsp" %>
<!-- <header class="section-header"> -->
<!-- <section class="header-main border-bottom"> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row align-items-center"> -->
<!-- 			<div class="col-xl-2 col-lg-3 col-md-12"> -->
<!-- 				<a href="../../index.html" class="brand-wrap"> -->
<!-- 					<img class="logo" src="images/logo3661.png"> -->
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
<!-- 						<a href="page-user-register.html">Pa</a> -->
<!-- 					</div> -->
<!-- 					<div class="col-6"> -->
<!-- 						<a href="page-profile-main.html">Profile main</a> -->
<!-- 						<a href="page-profile-orders.html">Profile orders</a> -->
<!-- 						<a href="page-profile-seller.html">Profile seller</a> -->
<!-- 						<a href="page-profile-wishlist.html">Profile wishlist</a> -->
<!-- 						<a href="page-profile-setting.html">Profile setting</a> -->
<!-- 						<a href="page-profile-address.html">Profile address</a> -->
<!-- 						<a href="rtl-page-index-1.html">RTL home page</a> -->
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
<br>
<br>
<h2>Sub-Category data</h2>
<br>
<br>
<div class="container">
<jsp:include page="/FetchAllSubcategory"/>
	<%List<SubCategory> allsubCategoryList = new ArrayList<SubCategory>(); %>
		<%allsubCategoryList = (List)request.getAttribute("allSubcategory"); %>
		<a href="new-subcategory.jsp" class="btn btn-primary"> <i class="fa fa-plus"></i> Add Sub-Category </a>
		<br>
		<br>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Sub-Category Name</th>
                    <th>Category Name</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    
                </tr>
            </thead>
            <tbody>
            <%for(SubCategory obj : allsubCategoryList){ %>
                <tr>
                    <td><%=obj.getSubCategoryName() %></td>
                    <td><%=obj.getCategoryName() %></td>
                     <td><button class="btn btn-primary" style="color:white;"> <i class="fa fa-pen"><a style="color:white;"href="EditSubCategory?id=<%=obj.getSubCategoryId()%>"></i> Edit </button></a></td>
                    <%if(obj.getSubCategoryStatus()!=-1) {%>
                    <td><button class="btn btn-primary"  style="background-color:red;" data-toggle="modal" data-target="#exampleModalCenter"
													onclick="getdid(<%=obj.getSubCategoryId()%>)"><i class="fa fa-trash" > Delete</i></button></td>
                    <%} %>
                    
                    <%if(obj.getSubCategoryStatus()==-1) {%>
                     <td><a style="color:white;"href="UnblockSubCategory?id=<%=obj.getSubCategoryId()%>"><button class="btn btn-primary"  style="background-color:red;" ><i>Unblock </i></button></a></td>
                    <%} %>
                   
                </tr>
                <%} %>
            </tbody>
        </table>
        

	    </div>
	    <div class="modal fade" id="exampleModalCenter" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Delete
											Sub-Category</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">Are you sure want to Delete?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">cancel</button>
										<button type="button" class="btn btn-primary">
											<a id="takeid">Delete</a>
										</button>
									</div>
								</div>
							</div>
						</div>
<!--     <link href="assets/bootstrap.min.css" rel="stylesheet"> -->

    <link href="assets/datatables.bootstrap4.min.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
<!--     <script src="assets/jquery.min.js"></script> -->

    <!-- Page level plugin JavaScript-->
    <script src="assets/jquery.datatables.min.js"></script>

    <script src="assets/datatables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
    </script>

</body>
</html>