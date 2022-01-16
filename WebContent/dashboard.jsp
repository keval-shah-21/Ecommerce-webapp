<%@page import="com.takealot.bean.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jain General Store</title>
<style>
	#dead{
		margin: auto;
		padding: 30px;
	}
	.a1{
		display: inline-block;
		height: 130px;
		width: 270px;
		margin: 30px;
		padding: 25px;
		border: 3px solid black;
		border-radius: 20px;
		color: white;
		font-family: Verdana;
		overflow: auto;
		
	}
	#fir{
		background-color: green;
	}
	#sec{
		background-color: orange;
	}
	#thi{background-color: blue;}
	#for{background-color: red;}
	#fiv{background-color: blue;}
</style>
</head>
<body>
	<%@ include file="header3.jsp" %>
	
	<jsp:include page="/DisplayUser"/>
	<%List<User> userList = new ArrayList<User>(); %>
		<%userList = (List)request.getAttribute("userData"); %>
	<jsp:include page="/DisplayProductDetails"/>
	<%List<Product> productList = new ArrayList<Product>(); 
 		productList = (List)request.getAttribute("productDetails");%>
 	<%int productcount=0,ordercount=0,usercount=0; %>
 	<%for(User obj : userList){ %>
 		<%usercount++; %>
 	<%} %>
 	<%for(Product obj : productList){%>
 	
 		<%productcount++; %>
 	<%} %>
 	<jsp:include page="/FetchOrderDetails"/>
		<%List<Order> orderList = new ArrayList<Order>();
			orderList = (List)request.getAttribute("orderlist");%>
		<%for(Order obj : orderList) {%>
			<%ordercount++; %>
		<%} %>
	<div id="dead">
	<a href="display-order.jsp"><div class="a1" id="fir">orders
	<p style="color:white;font-size:25px;text-align:right"><%=ordercount %></p>
	</div></a>
	<%if(role.equalsIgnoreCase("admin")) {%>
	<a href="displayuser.jsp"><div class="a1" id="sec">Users
	<p style="color:white;font-size:25px;text-align:right"><%=usercount -1%></p>
	</div></a>
	<a href="display-product.jsp"><div class="a1" id="thi">Products
	<p style="color:white;font-size:25px;text-align:right"><%=productcount %></p>
	</div></a>
	<%} %>
<!-- 	<div class="a1" id="for">See you</div> -->
<!-- 	<div class="a1" id="fiv">dead</div>	 -->
	</div>
</body>
</html>