<!DOCTYPE HTML>
<%@page import="com.takealot.bean.Product"%>
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

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min3661.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui3661.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive3661.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="js/script3661.js" type="text/javascript"></script>
<script>

function getdid(userid) {
	
	var uid = userid;
	var strLink = "DeleteProduct?id=" + uid;
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
<br>
<br>
<h2 style="font-weight:bold;">Product Detail</h2>
<br>
<br>
<jsp:include page="/FetchAllProductDetail"/>
<div class="container">
	<%List<Product> productList = new ArrayList<Product>(); %>
		<%productList = (List)request.getAttribute("allProdcuctdetail"); %>
		<a href="add-product.jsp" class="btn btn-primary"> <i class="fa fa-plus"></i> Add Product </a>
		<br>
		<br>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>MRP</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Stock</th>
                    <th>Discription</th>
                    <th>Category</th>
                    <th>Sub-Category</th>
                    
                    <th>Image1</th>
                    <th>Image2</th>
                    <th>Image3</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    
                    
                    
                </tr>
            </thead>
            <tbody>
            <%for(Product obj : productList){ %>
                <tr>
                    <td><%=obj.getProductName() %></td>
                    <td><%=obj.getProductMRP() %></td>
                    <td><%=obj.getProductPrice() %></td>
                    <td><%=obj.getProductDiscount() %> %</td>
                    <td><%=obj.getProductStock() %></td>
                    <td><%=obj.getProductDiscription()%> </td>
                    <td><%=obj.getCategoryName() %></td>
                    <td><%=obj.getSubCategoryName() %></td>
                    <td><img  style="border:2px solid black" height="130px" widht="130px" src="data:image/png;base64,<%=obj.getProductImage1String()%>"></td>
                    <%if(obj.getProductImage2String()!=null && obj.getProductImage2String().length()>0){ %>
                    <td><img  style="border:2px solid black" height="130px" widht="130px" src="data:image/png;base64,<%=obj.getProductImage2String()%>"></td>
                    <%} %>
                     <%if(obj.getProductImage2String()==null || obj.getProductImage2String().length()<=0){ %>
                     	<td placehoder="Not Available"></td>
                     <%} %>
                    <%if(obj.getProductImage3String()!=null && obj.getProductImage3String().length()>0){ %>
                    <td><img style="border:2px solid black" height="130px" widht="130px" src="data:image/png;base64,<%=obj.getProductImage3String()%>"></td>
                     <%}%>
                     <%if(obj.getProductImage3String()==null || obj.getProductImage3String().length()<=0){ %>
                     	<td placehoder="Not Available"></td>
                     <%} %>
                    
                    
                    
                    
                     <td><a style="color:white;"href="EditProduct?id=<%=obj.getProductId()%>"><button class="btn btn-primary" style="color:white;"> <i class="fa fa-pen"></i> </button></a></td>
                    <%if(obj.getProductStatus()!=-1) {%>
                    <td><button class="btn btn-primary"  style="background-color:red;" data-toggle="modal" data-target="#exampleModalCenter"
													onclick="getdid(<%=obj.getProductId()%>)"><i class="fa fa-trash" > </i></button></td>
                    <%} %>
                    <%if(obj.getProductStatus()==-1) {%>
                    <td><a style="color:white;"href="UnblockProduct?id=<%=obj.getProductId()%>"><button class="btn btn-primary"  style="background-color:red;" ><i>Unblock </i></button></a></td>
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
											Product</h5>
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