<%@page import="com.takealot.bean.Product"%>
<%@page import="com.takealot.bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.takealot.bean.SubCategory"%>
<%@page import="java.util.List"%>
<%@page import="com.takealot.bean.User"%>
<%@ include file="common_plugin.jsp" %>

<jsp:include page="/DisplaySubCategory"/>
	<%List<SubCategory> subCategoryList = new ArrayList<SubCategory>(); %>
		<%subCategoryList = (List)request.getAttribute("subCategoryDetails"); %>
		
		<jsp:include page="/DisplayCategory"/>
	<%List<Category> categoryList = new ArrayList<Category>(); %>
		<%categoryList = (List)request.getAttribute("categoryDetails"); %>
		
		<jsp:include page="/DisplayProductDetails"/>
	<%List<Product> productName = new ArrayList<Product>(); 
 		productName = (List)request.getAttribute("productDetails");%> 

<style>
img{
	height : 80px;
	width : 150px;
}
</style>
<!-- <link href ="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" -->
<!--          rel = "stylesheet"> -->
         
        
<!--          rel = "stylesheet"> -->
        
<!-- <!--       <script src = "https://code.jquery.com/jquery-1.10.2.js"></script> --> 
<!-- <!--       <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
      
<!--       <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->

<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">  
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
  <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>  
  <link rel="stylesheet" href="/resources/demos/style.css">  
      
      <!-- Javascript -->
      <script>
      
      
         $(function() {
            var availableTutorials  =  [

            	
            	<% for(Product obj2 : productName) {%>
            		"<%=obj2.getProductName()%>",
            	<%}%>
            	
            	<%for(SubCategory obj1 : subCategoryList) {%>
            		"<%=obj1.getSubCategoryName()%>",
            	<%}%>
            	
            ];
            $( "#search" ).autocomplete({
               source: availableTutorials
            });
         });
      </script>

<header class="section-header">
<%HttpSession httpSession = request.getSession(false);
	User user = new User();
	String role="";
	 user = (User)httpSession.getAttribute("loginBean");
	 if(user!=null){
	  role = user.getRole();
	 }%>
	<%if(role.equalsIgnoreCase("")) {%>
		<%response.sendRedirect("page-user-login.jsp"); %>
	<%} %>
<%String searchItem = (String)request.getAttribute("searchitem"); %>
<jsp:include page="/DisplaySubCategory"/>
	
<section class="	header-main border-bottom">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-xl-2 col-lg-3 col-md-12">
				<a href="dashboard.jsp" class="brand-wrap">
					<img src="images/StoreLogo.jpg">
				</a> 
			</div>
			<div class="col-xl-6 col-lg-5 col-md-6">
				
<!-- 				<form action="SearchProduct" method="post" class="search-header"> -->
<!-- 					<div class="input-group w-100"> -->
<!-- 						<select class="custom-select border-right"  name="category_name">
<!-- 								<option value="">All type</option><option value="codex">Special</option> -->
<!-- 								<option value="comments">Only best</option> -->
<!-- 								<option value="content">Latest</option> -->
<!-- 						</select> --> 
<%-- 						<%if(searchItem==null) {%> --%>
<!-- 					    <input id="search" name="searchproduct" type="text" class="form-control" placeholder="Search"> -->
<%-- 					    <%} %> --%>
<%-- 					    <%if(searchItem!=null) {%> --%>
<%-- 					    	<input id="search" name="searchproduct" type="text" class="form-control" placeholder="Search" value="<%=searchItem%>"> --%>
<%-- 					    <%} %> --%>
					    
<!-- 					    <div class="input-group-append"> -->
<!-- 					      <button id="searchbutton" class="btn btn-primary" type="submit"> -->
<!-- 					        <i id="searchicon" class="fa fa-search"></i> Search -->
<!-- 					      </button> -->
<!-- 					    </div> -->
<!-- 				    </div> -->
<!-- 				</form> search-wrap .end// -->
			</div> <!-- col.// -->
			<div class="col-xl-4 col-lg-4 col-md-6">
				<div class="widgets-wrap float-md-right">
					<%if(user == null) {%>
					<div class="widget-header mr-3">
						<a href="page-user-login.jsp " class="widget-view">
							<div class="icon-area">
								<i class="fa fa-sign-in-alt"></i>
								<!-- <span class="notify">3</span> -->
							</div>
							<small class="text"> Login </small>
						</a>
					</div>
					<%} %>
					<% if(user != null){ %>
					<div class="widget-header mr-3">
						<a href="edit-profile.jsp " class="widget-view">
							<div class="icon-area">
								<i class="fa fa-user"></i>
								<!-- <span class="notify">3</span> -->
							</div>
							<small class="text"> My Profile </small>
						</a>
					</div>
					<% } %>
					
	<!-- <ul class="navbar-nav ml-md-auto">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="../../../external.html?link=http://example.com/" data-toggle="dropdown">English</a>
			<div class="dropdown-menu dropdown-menu-right">
			<a class="dropdown-item" href="#">My Profile</a>
			<a class="dropdown-item" href="#">Login</a>
			</div>
		</li>
		</ul> -->					
				<!-- 	<div class="widget-header mr-3">
						<a class="widget-view">
							<div class="icon-area">
								<i class="fa fa-comment-dots"></i>
								<span class="notify">1</span>
							</div>
							<small class="text"> Message </small>
						</a>
					</div> -->
					<%if(user!=null && (!user.getRole().equalsIgnoreCase("Admin")) && (!user.getRole().equalsIgnoreCase("Delivery Boy"))) {%>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-store"></i>
							</div>
							<small class="text"> Orders </small>
						</a>
					</div>
					<div class="widget-header">
						<a href="page-shopping-cart.jsp" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<small class="text"> Cart </small>
						</a>
					</div>
					
						<div class="widget-header">
						<a href="page-wishlist.jsp" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<small class="text"> Wishlist </small>
						</a>
					</div>
					<%} %>
				</div> <!-- widgets-wrap.// -->
			</div> <!-- col.// -->
		</div> <!-- row.// -->
	</div> <!-- container.// -->
</section> <!-- header-main .// -->

<nav class="navbar navbar-main navbar-expand-lg border-bottom">
<div class="container">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="main_nav">
	<ul class="navbar-nav">
		
		<%if(user == null){ %>
			<%for(Category obj: categoryList ) {%>
			<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" value="<%=obj.getCategoryId()%>"><%=obj.getCategoryName()%> </a>
			<div class="dropdown-menu dropdown-medium">
<!-- 			<a class="dropdown-item" href="delivery_boy_reg.jsp">Registration</a> -->
<!-- 			<a class="dropdown-item" href="page-user-login.jsp">Manage delivery boys</a> -->
				<%for(SubCategory obj1 : subCategoryList){ %>
					<%if(obj.getCategoryId()==obj1.getCategoryId()) {%>
						<a class="dropdown-item" href="SubcategoryProduct?id=<%=obj1.getSubCategoryId() %>" value="<%=obj1.getSubCategoryId()%>"><%=obj1.getSubCategoryName() %></a>
					<%} %>
				<%} %>
			</div>
			</li>
			
				
			<% }%>
			<li class="nav-item">
			<a class="nav-link" href="SortProduct">Sort</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="about-us.jsp">About us</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="FAQ.jsp">FAQ</a>
			</li>
			
		<%} %>
		<%if(user!=null && user.getRole().equalsIgnoreCase("customer")){ %>
			<%for(Category obj: categoryList ) {%>
			<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown" value="<%=obj.getCategoryId()%>"><%=obj.getCategoryName()%> </a>
			<div class="dropdown-menu dropdown-medium">
<!-- 			<a class="dropdown-item" href="delivery_boy_reg.jsp">Registration</a> -->
<!-- 			<a class="dropdown-item" href="page-user-login.jsp">Manage delivery boys</a> -->
				<%for(SubCategory obj1 : subCategoryList){ %>
					<%if(obj.getCategoryId()==obj1.getCategoryId()) {%>
						<a class="dropdown-item" href="SubcategoryProduct?id=<%=obj1.getSubCategoryId() %>" value="<%=obj1.getSubCategoryId()%>"><%=obj1.getSubCategoryName() %></a>
					<%} %>
				<%} %>
			</div>
			</li>
			
				
			<% }%>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="SortProduct">Sort</a>
			</li>	
			<li class="nav-item">
			<a class="nav-link" href="contact-us.jsp">Contact us</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="about-us.jsp">About us</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="FAQ.jsp">FAQ</a>
					
		<%} %>	
		<%if(user!=null && user.getRole().equalsIgnoreCase("admin")){ %>	
		<li class="nav-item">
		<a class="nav-link" href="dashboard.jsp">Dashboard</a>
		</li>
		<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Delivery boy</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="delivery_boy_reg.jsp">Registration</a>
			<a class="dropdown-item" href="display-delivery-boy.jsp">Manage delivery boys</a>
			</div>
		</li>
		
		<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Product</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="add-product.jsp">Add Product</a>
			<a class="dropdown-item" href="display-product.jsp">Manage Product</a>
			<a class="dropdown-item" href="display-product-review.jsp">Manage Review</a>
			
			
			</div>
		</li>
		
		<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Category</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="new-category.jsp">Add Category</a>
			<a class="dropdown-item" href="display-category.jsp">Manage Category</a>
			</div>
		</li>
		
		<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Sub-Category</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="new-subcategory.jsp">Add Sub-Category</a>
			<a class="dropdown-item" href="display-subcategory.jsp">Manage Sub-Category</a>
			</div>
		</li>
		
		<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Order</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="display-order.jsp">View Order</a>
			<a class="dropdown-item" href="display-order-detail.jsp">View Order Details</a>
			</div>
		</li>
		
		<li class="nav-item">
		<a class="nav-link" href="displayuser.jsp">User data</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="ReportGenerate">Report Generate</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="dispaly-contact-us.jsp">Contact Us</a>
		</li>
	
		
<!-- 		<li class="nav-item"> -->
<!-- 		<a class="nav-link" href="DisplayCategory">Category</a> -->
<!-- 		</li> -->
		
<!-- 		<li class="nav-item"> -->
<!-- 		<a class="nav-link" href="DisplaySubCategory">Sub-category</a> -->
<!-- 		</li> -->
		<%} %>
		<%if(user!=null && user.getRole().equalsIgnoreCase("Delivery Boy")){ %>
		
			<li class="nav-item dropdown dropdown-menu-right">
			<a class="nav-link dropdown-toggle" data-toggle="dropdown">Order</a>
			<div class="dropdown-menu dropdown-medium">
			<a class="dropdown-item" href="display-order.jsp">View Order</a>
			<a class="dropdown-item" href="display-order-detail.jsp">View Order Details</a>
			</div>
		</li>
		<%} %>

	</ul>
<!-- 	<ul class="navbar-nav ml-md-auto"> -->
			
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
	</div> <!-- collapse .// -->
</div> <!-- container .// -->
</nav>

</header> <!-- section-header.// --> 
