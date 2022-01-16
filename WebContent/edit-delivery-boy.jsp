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
<%-- <jsp:include page="/CheckUser"/> --%>
<%-- <%@ include file="common_plugin.jsp" %> --%>
<script>
	var namePattern = /^([a-zA-Z]+)$/;
	var emailPattern = /^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,4})$/;
	var phonePattern = /^([6-9]\d{9})$/;
	var salaryPattern = /^([0-9]{4,5})$/;
	var flag = true;
	
	function checkbox(selected)
	{
		if(selected.checked)
			{
				document.myform.cpassword.type="text";
				document.myform.rpassword.type="text";
			}
		else
			{
				document.myform.cpassword.type="password";
				document.myform.rpassword.type="password";
			}
	}
	function checkFname(){
		
		var fname = document.myform.fname.value;
		fname = fname.trim();
		if(fname==""){
			document.getElementById("fnamespan").innerHTML="Please enter your first name!";
			flag= false;
		}
		else{
			if(!(namePattern.test(fname))){
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
			if(!(namePattern.test(lname))){
				document.getElementById("lnamespan").innerHTML="Invalid name!";
				flag= false;
			}
			else{
				document.getElementById("lnamespan").innerHTML="";
			}
		}
	}
	
// 	function checkEmail(){ 
		
// 		var f = 0;
// 		var email = document.myform.email.value;
// 		email = email.trim();
// 		email = email.toLowerCase();
// 		if (email == "") {
// 			document.getElementById("emailspan").innerHTML = "Please enter your email address!";
// 			flag = false;
// 		} 
// 		else {
// 			if (!(emailPattern.test(email))) {
// 				document.getElementById("emailspan").innerHTML = "Invalid email address!";
// 				flag =  false;
// 			}
// 			else{
<%-- 				<%List<ValidateUser> userlist = new ArrayList<ValidateUser>();%> --%>
<%-- 				<%userlist = (List) request.getAttribute("ulist");%> --%>
<%-- 				<%for (ValidateUser obj : userlist) {%> --%>

<%-- 					userName = "<%=obj.getUsername()%>"; --%>
				
// 					if (email == userName){
// 						f =1;
// 					}
<%-- 			<%}%> --%>
// 				if(f==1){
// 					document.getElementById("emailspan").innerHTML = "You already have an account with thid email!";
// 					flag = false;}
// 				else{
// 					document.getElementById("emailspan").innerHTML = "";
// 				}
// 			}
// 		}
// 	}
	function checkPhone(){
		var phoneno = document.myform.phoneno.value;
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
	
	function checkSalary(){
		var salary = document.myform.salary.value;
		salary = salary.trim();
		if (salary == "") {
			document.getElementById("salaryspan").innerHTML = "Please enter salary!";
			flag =  false;
		}
		else{
			if (!(salaryPattern.test(salary))) {
				document.getElementById("salaryspan").innerHTML = "Invalid salary!";
				flag =  false;
			}
			else{
				document.getElementById("salaryspan").innerHTML="";
			}
		}
	}
	
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
	
	function checkValidation(){	
		flag=true;
		var cpass = document.myform.cpassword.value;
		cpass = cpass.trim();
		var rpass = document.myform.rpassword.value;
		rpass = rpass.trim();
		checkFname();
		checkLname();
// 		checkEmail();
		checkPhone();
		checkAddress();
		checkSalary();
		var len = document.myform.cpassword.value.length;
		if (cpass == "") {
			document.getElementById("cpswspan").innerHTML = "Please enter the password!";
			document.myform.cpassword.value="";
			flag =  false;
		}
		else{
			if(len < 8){
				document.getElementById("cpswspan").innerHTML="Password should be minimum of 8 characters!";
				flag = false;
			}
			else{
				document.getElementById("cpswspan").innerHTML="";
				if (rpass == "") {
					document.getElementById("rpswspan").innerHTML = "Please re-enter the password!";
					flag = false;
				}
				else{
					document.getElementById("rpswspan").innerHTML="";
					if(cpass != "" && rpass!=""){
						document.getElementById("rpswspan").innerHTML="";
						if(cpass!=rpass){
							document.getElementById("cpswspan").innerHTML = "Both password should must be same!";
							flag= false;
						}
					}else{
						document.getElementById("cpswspan").innerHTML="";
					}
				}
			}
		}
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

<%User userobj = (User)request.getAttribute("deliveryBoyDetail"); %>
<%@ include file="header3.jsp" %>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Edit Delivery Boy</h4></header>
		<form name="myform" action="EditDeliveryBoy" method="POST">
				<div class="form-row">
					<div class="col form-group">
						<label>First name<span>*</span></label>
						<input type="hidden" name="id" value="<%=userobj.getCustomerId()%>"/>
					  	<input type="text" class="form-control" placeholder="" name="fname" onblur="checkFname()" value="<%=userobj.getFname()%>">
					  	<span id="fnamespan"></span>
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>Last name<span>*</span></label>
					  	<input type="text" class="form-control" placeholder="" name="lname" onblur="checkLname()" value="<%=userobj.getLname()%>">
					  	<span id="lnamespan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				
				<div class="form-group">
				<label>Email<span>*</span></label>
					<input type="email" value="<%=userobj.getEmail()%>" class="form-control" placeholder="e.g. abc123@gmail.com" name="email" 	readonly>
					<span id="emailspan"></span>
				</div> <!-- form-group end.// -->
				
				<div class="form-group">
					<label>Phone number<span>*</span></label>
					<input type="text"  value="<%=userobj.getContact()%>" class="form-control" placeholder="10 digit phone number" name="phoneno" onblur="checkPhone()">
					<span id="phonenospan"></span>
					</div> <!-- form-group end.// -->
				
				<div class="form-group">
					<label>Address<span>*</span></label>
            		<textarea  value="<%=userobj.getAddress1()%>" name="add1" class="form-control" rows="5" cols="35" onblur="checkAddress()"><%=userobj.getAddress1() %></textarea>
            		<span id="addspan"></span>
            	</div>

				<div class="form-group">
					<label>Salary<span>*</span></label>
					<input type="text" value="<%=userobj.getSalary()%>" class="form-control" placeholder="" name="salary" onblur="checkSalary()">
					<span id="salaryspan"></span>
				</div> <!-- form-group end.// -->           
            	
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Create password<span>*</span></label>
					    <input  value="<%=userobj.getPassword()%>" class="form-control" type="password" name="cpassword">
					    <span id="cpswspan"></span>
					</div> <!-- form-group end.// -->
					 
					<div class="form-group col-md-6">
						<label>Repeat password<span>*</span></label>
					    <input  value="<%=userobj.getPassword()%>" class="form-control" type="password" name="rpassword">
					    <input  type="hidden" name="role" value="Delivery Boy">
					    <input type="hidden" name="status" value="0">
					    <span id="rpswspan"></span>	   
					</div> <!-- form-group end.// -->
					
					<div class="form-group">
					    <input type="checkbox" name="chkbox" onchange="checkbox(this)"> Show Password</input>
					</div> <!-- form-group end.// -->	
				</div>

				</br>
			    <div class="form-group">
			          <button type="submit" class="btn btn-primary btn-block" name="submit" onclick="return checkValidation()"> Continue  </button>
			    </div> <!-- form-group// -->      
			    <!-- <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> I am agree with <a href="#">terms and contitions</a>  </div> </label>
		        </div> form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <!-- <p class="text-center mt-4">Have an account? <a href="page-user-login.jsp">Log In</a></p> -->
    <br><br>
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
