<!DOCTYPE HTML>
<%@page import="com.takealot.bean.Product"%>
<%@page import="com.takealot.bean.Order"%>
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
<!-- <script src="js/script3661.js" type="text/javascript"></script> -->

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
<h2>Order data</h2>
<br>
<br>
<div class="container">
	<jsp:include page="/DisplayUser"/>
	<%List<User> userList = new ArrayList<User>(); %>
		<%userList = (List)request.getAttribute("userData"); %>
	<jsp:include page="/FetchOrderDetails"/>
		<%List<Order> orderList = new ArrayList<Order>();
			orderList = (List)request.getAttribute("orderlist");%>
	
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                	<th>User Name</th>
                    <th>Order Id</th>
                    <th>Order Date</th>
                    <th>Order Amount</th>
                    <th>Order Quantity</th>
                    <th>Order Address</th>
                    <th>Order Status</th>
                    <th>Phone No</th>
                    <th>Payment Mode</th>
                    <th>Payment Status</th>
                    <th>Update Status</th>
                </tr>
            </thead>
            <tbody>
				<%for(User obj : userList) {%>
					<%for(Order obj1 : orderList) {%>
						<%if(obj1.getUserId() == obj.getCustomerId()) {%>
               	<tr>
                    	<td><%=obj.getFname() %>  <%=obj.getLname() %></td>
                    	<td><%=obj1.getOrderId() %></td>
                   		 <td><%=obj1.getOrderDate() %></td>
                   		 <td><%=obj1.getOrderAmount() %></td>
                   		 <td><%=obj1.getOrderQuantity() %></td>
                   		 <td><%=obj1.getAddress() %></td>
                   		 <td><%=obj1.getOrderStatus() %></td>
                   		 <td><%=obj1.getPhoneNo() %></td>
                   		 <td><%=obj1.getPaymentMode() %></td>
                   		 <td><%=obj1.getPaymentStatus() %></td>
                   		  <td><a style="color:white;"href="UpdateOrderStatus?id=<%=obj1.getOrderId()%>&status=<%=obj1.getOrderStatus()%>"><button class="btn btn-primary" style="color:white;"> <i class="fa fa-pen"></i> </button></a></td>
<%--                    <% if(obj.getContact()!=null && !obj.getContact().isEmpty()) {%>  --%>
<%--                     <td><%=obj.getContact() %></td> --%>
<%--                     <%} %> --%>
<%--                    <% if(obj.getContact() !=null && obj.getContact().isEmpty()) {%>  --%>
<!--                     <td>NA</td> -->
<%--                     <%} %> --%>
<!--                     <td><button class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#exampleModalCenter" -->
<%-- 													onclick="getdid(<%=obj1.getOrderId()%>)">Delete</button></td> --%>
                    
               	 </tr>
                <%} %>
                <%} %>
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
										<h5 class="modal-title" id="exampleModalLongTitle">Update
											Status</h5></br></br>
											<select class="mr-2 form-control"  id="#updatestatus" title="--Select Category--" placeholder="--Select Category--">
												<option>Placed</option>
												<option>Shipped</option>
												<option>Delivered</option>
											</select>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
<!-- 									<div class="modal-body">Are you sure want to Delete?</div> -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">cancel</button>
										<button type="button" class="btn btn-primary">
											<a id="takeid">Ok</a>
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