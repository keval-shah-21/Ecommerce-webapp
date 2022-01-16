<!DOCTYPE HTML>
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
<script src="js/script3661.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="PDF/pdf.css" />
    <script src="PDF/pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<script>
function checkDate(){
	var flag = true;
	var today = new Date();
	var d = today.getDate();
	var m = today.getMonth() + 1;
	if(d<10)
		d = '0' + d;
	if(m<10)
		m = '0' + m;
	var current = today.getFullYear()+'-'+m+'-'+d;
	var start = document.myform.sdate.value;
	var end = document.myform.edate.value;
	start = start.trim();
	end = end.trim();
	if(start == ""){
		document.getElementById("error").innerHTML = "Please select starting date...";
		flag = false;
	}
	else if( end == "" ){
		document.getElementById("error").innerHTML = "Please select ending date...";
		flag = false;
	}
	else if(start > current){
		document.getElementById("error").innerHTML = "Invalid starting date...";
		flag = false;
	}
	else if(end > current){
		document.getElementById("error").innerHTML = "Invalid ending date...";
		flag = false;
	}
	else if(start > end){
		document.getElementById("error").innerHTML = "Invalid starting date...";
		flag = false;
	}
	else{
		document.getElementById("error").innerHTML = "";
	}
	return flag;
}
function getdid(userid) {
	
	var uid = userid;
	var strLink = "DeleteUser?id=" + uid;
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
span{
	color:red;
	font-style : italic;
	font-size:19px;
}
</style>
</head>
<body>

<%@ include file="header3.jsp" %>
<br>
<br>
<!-- <div id="invoice"> -->
<!-- <center><h1 style="color:blue;font-weight:bold">Jain General Store</h1></center> -->
<h2>Order Report</h2>
<br>
<br>
<!-- </div> -->
<div class="container" >
	
	<%String startDate = (String)request.getAttribute("sdate"); 
			String endDate = (String)request.getAttribute("edate");%>
      
	<form name="myform" action="ReportGenerate " method="POST">
		<div style="width:600px">
				<div class="form-row">					
					<%if(startDate==null || endDate==null){ %>
					<div class="col form-group">
						<label>Start Date</label>
					  	<input style="width:200px" type="date" class="form-control" placeholder="" name="sdate" ></input>
					  	<span id="fnamespan"></span>
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>End Date</label>
					  	<input style="width:200px;margin-left:10px" type="date" class="form-control" placeholder="" name="edate" >
					  	<span id="lnamespan"></span>
					</div> <!-- form-group end.// -->					
					<%} %>
					<%if(startDate!=null && endDate!=null){ %>
					<div class="col form-group">
						<label>Start Date</label>
					  	<input style="width:200px" type="date" class="form-control" placeholder="" name="sdate" value="<%=startDate%>"></input>
					  	<span id="fnamespan"></span>
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>End Date</label>
					  	<input style="width:200px;margin-left:10px" type="date" class="form-control" placeholder="" name="edate" value="<%=endDate%>">
					  	<span id="lnamespan"></span>
					</div> <!-- form-group end.// -->
					<%} %>
					<div class="form-group">
			          <button style="margin-top:30px" type="submit" class="btn btn-primary btn-block" onclick="return checkDate()" name="submit" > Apply </button>
			   		 </div> <!-- form-group// -->			   		 						
				</div> <!-- form-row end.// -->	
				<span id="error"></span>	     
		</div>
	</form>
	
	
		<jsp:include page="/DisplayUser"/>
	<%List<User> userList = new ArrayList<User>(); %>
		<%userList = (List)request.getAttribute("userData"); %>
	
		<%List<Order> orderList = new ArrayList<Order>();
			orderList = (List)request.getAttribute("reportorderdetail");%>
		
		<%int total=0; %>
		<%for(Order obj : orderList) {%>
		<%System.out.println("Order Amount :"+obj.getOrderAmount()); %>
		<%if(obj.getOrderAmount()!=null) {%>
			<%int len = obj.getOrderAmount().length();
			String substr = obj.getOrderAmount().substring(0,(len-3)); %>
			<%total = total + Integer.parseInt(substr); %>
			<%} %>
		<%} %>
<!-- 		 	<button class="btn btn-primary" id="download"> download pdf</button> -->
 <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download"> download pdf</button>
            </div>
		 	<div id="invoice">
			<br><h4 style="text-align:right">Total Earning :&#8377 <%=total %></h4>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        	
        	</div>
        	
            <thead>
            
                <tr>
                   <div id="invoice">
                    <th>Order Date</th>
                    <th>User Name</th>
                    <th>Order Amount</th>
                   
                </tr>
            </thead>
            <tbody>
            <%for(User obj : userList) {%>
			<%for(Order obj1 : orderList) {%>
			<%if(obj1.getUserId() == obj.getCustomerId()) {%>
               	<tr>
                    	
                   		<td><%=obj1.getOrderDate() %></td>
                   		<td><%=obj.getFname() %> <%=obj.getLname() %></td>
                   		<td>&#8377 <%=obj1.getOrderAmount() %></td>
               	 </tr>
                <%} %>
                <%} %>
                <%} %>
              </div>  
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
											User</h5>
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
