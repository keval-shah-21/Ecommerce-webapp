<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.takealot.bean.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Jain General Store</title>

<%@ include file="common_plugin.jsp" %>
<style>
span{
	color : red;
	font-style : italic;
}
</style>

<%-- <jsp:include page="/CheckUser"/> --%>
<script>

	function checkUP()
	{
		var flag=true;
		
		var scname = document.myform.scname.value;
		scname = scname.trim();
		if(scname == ""){
			document.getElementById("scspan").innerHTML="Please enter sub-category name!";
			flag= false;
		}
		else{
			document.getElementById("scspan").innerHTML="";
		}
		return flag;
	}
</script>
</head>

<body>
<%@ include file="header2.jsp" %>
<%-- <jsp:include page="/FetchCategory"/> --%>
<%-- <%List<Category> categoryList = (List)request.getAttribute("categoryDetails"); %> --%>
<%String orderId = (String)request.getAttribute("orderid"); 
	String status = (String)request.getAttribute("status");%>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">


<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Update Order Status</h4>
      <form name="myform" action="UpdateOrderStatus" method="post">
      
      	<div class="col form-group">
          	<label>Order ID</label>
			 <input name="orderid" class="form-control" placeholder="" type="text" readonly="true" value="<%=orderId%>">
			 
          </div>
      	 <div class="col form-group">
      	 <label>Update Status</label>
      	  <select class="mr-2 form-control"  name="status" title="--Select Category--" placeholder="--Select Category--">
      	  	
      	  		<%if(status.equalsIgnoreCase("Placed")) {%>
      	  			<option value="Placed" selected>Placed</option>
      	  			<option value="Shipped">Shipped</option>
      	  			<option value="Delivered">Delivered</option>
				<%} %>
				<%if(status.equalsIgnoreCase("Shipped")) {%>
      	  			<option value="Placed" >Placed</option>
      	  			<option value="Shipped" selected>Shipped</option>
      	  			<option value="Delivered">Delivered</option>
				<%} %>
				<%if(status.equalsIgnoreCase("Delivered")) {%>
      	  			<option value="Placed" selected>Placed</option>
      	  			<option value="Shipped">Shipped</option>
      	  			<option value="Delivered" selected>Delivered</option>
				<%} %>
				
					
			</select>
		</div>
          
    
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" onclick="return checkUP()"> Create </button>
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>
</body>
<script>
	document.myform.scname.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>