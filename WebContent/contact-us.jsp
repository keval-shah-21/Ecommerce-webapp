<!DOCTYPE HTML>
<%@page import="com.takealot.bean.User"%>
<%@page import="com.takealot.bean.ValidateUser"%>
<%@page import="java.util.*"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Jain General Store</title>
<jsp:include page="/CheckUser"/>
<%@ include file="common_plugin.jsp" %>
<style>	
#location{
	margin: auto;
	align: center;
}
#loc{
  height: 420px;
  background: url('images/location.jpg');
  background-size: 100% 100%; 
  border-radius: 25px;
  border: 2px solid black;
}
</style>
<script>
	var namepattern = /^([a-zA-Z]+)$/;
	var emailpattern = /^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,4})$/;
	var flag = true;
	
	function checkFname(){
		
		var fname = document.myform.fname.value;
		fname = fname.trim();
		if(fname==""){
			document.getElementById("fnamespan").innerHTML="Please enter your first name!";
			flag= false;
		}
		else{
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
			if(!(namepattern.test(lname))){
				document.getElementById("lnamespan").innerHTML="Invalid name!";
				flag= false;
			}
			else{
				document.getElementById("lnamespan").innerHTML="";
			}
		}
	}
	
	function checkEmail(){ 
		
		var f = 0;
		var email = document.myform.email.value;
		email = email.trim();
		email = email.toLowerCase();
		if (email == "") {
			document.getElementById("emailspan").innerHTML = "Please enter your email address!";
			flag = false;
		} 
		else {
			if (!(emailpattern.test(email))) {
				document.getElementById("emailspan").innerHTML = "Invalid email address!";
				flag =  false;
			}
			else{
				document.getElementById("emailspan").innerHTML = "";
			}
		}
	}
	function checkMsg(){
		var msg = document.myform.message.value;
		msg = msg.trim();
		if (msg== "") {
			document.getElementById("msgspan").innerHTML = "Please enter your message!";
			flag = false;
		} 
		else{
			var len = document.myform.message.value.length;
			if(len>150){
				document.getElementById("msgspan").innerHTML = "Maximum 150 words are allowed!";
				flag = false;
			}
			else
				document.getElementById("msgspan").innerHTML = "";
		}
	}
	
	function checkValidation(){	
		flag=true;
		checkFname();
		checkLname();
		checkEmail();
		checkMsg();
		if(flag==true)
			alert("Thank you for contacting us...");
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

<% int userId=0;
String fname="",lname="",email="";
HttpSession httpSession = request.getSession(false);
if(httpSession!=null)
{
	User obj =new User();
	obj = (User)httpSession.getAttribute("loginBean");
	userId = obj.getCustomerId();
	fname = obj.getFname();
	lname = obj.getLname();
	email = obj.getEmail();
	
} %>

<%@ include file="header2.jsp" %>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:600px; margin-top:40px;">
	<!-- "max-width:600px;  width:50%;-->
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Contact Us</h4></header>
		<form name="myform" action="ContactUsServlet" method="POST">
				<div class="form-row">
					<div class="col form-group">
						<label>First name<span>*</span></label>
					  	<input type="text" readonly="true" class="form-control" placeholder="" name="fname" onblur="checkFname()" value="<%=fname%>"></input>
					  	<span id="fnamespan"></span>
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>Last name<span>*</span></label>
					  	<input type="text" readonly="true" class="form-control" placeholder="" name="lname" onblur="checkLname()" value="<%=lname%>">
					  	<span id="lnamespan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				
				<div class="form-group">
				<label>Email<span>*</span></label>
					<input type="email" readonly="true" class="form-control" placeholder="e.g. abc123@gmail.com" name="email" onblur="checkEmail()"	value="<%=email%>">
					<span id="emailspan"></span>
				</div> <!-- form-group end.// -->
				<label>Message<span>*</span></label>
            	<textarea  name="message"  class="form-control" rows="5" cols="35" placeholder="maximum 150 words..." onblur="checkMsg()"></textarea>
            	<span id="msgspan"></span>	
				<br><br>
			    <div class="form-group">
			          <button type="submit" class="btn btn-primary btn-block" name="submit" onclick="return checkValidation()"> Send  </button>
			    </div> <!-- form-group// -->      
			    <!-- <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> I am agree with <a href="#">terms and contitions</a>  </div> </label>
		        </div> form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <div  id="location" style="max-width:600px; margin-top:40px;">
    	<!-- <center> -->
    	<header class="mb-4"><h4 class="card-title">Location</h4></header>
    	<div id="loc"></div>
    	<br>
	   	<div style="font-size: 19px;"><b >Address: </b>22, Jay Bhagwan Shopping Center,<br>
	   													Near Jain Temple, Krishnanagar Road,<br>
	   													Nayannagar, Saijpur Bogha,<br>
	   													Ahemdabad - 382345</div>
	    <div style="font-size: 19px;"><b >Contact number: </b>9714090757</div>
	    <!-- </center> -->
	 </div>
    <br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>

</body>
<script>
	document.myform.fname.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>
