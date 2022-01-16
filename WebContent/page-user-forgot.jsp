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
<script>
	var emailpattern = /^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,4})$/;
	<%String message = (String)request.getAttribute("message"); %>
	var msg ="<%=message%>";
	
	if(msg!="null")
		{
			alert(msg);
			//document.getElementById("passwordspan").innerHTML="Invalid username or password!";
		}


	function checkEmail(){
		
		var email = document.myform.email.value;
		email = email.trim();
		var flag = true;
		if (email == "") {
			document.getElementById("emailspan").innerHTML = "Please enter your email address!";
			flag =false;
		} 
		else {
			document.getElementById("emailspan").innerHTML="";
			if (!(emailpattern.test(email))) {
				document.getElementById("emailspan").innerHTML = "Invalid email address!";
				flag = false;
			}
			else{
				document.getElementById("emailspan").innerHTML = "";
			}
		}
		
		return flag;
	}
</script>
</head>

<body>
<%@ include file="header2.jsp" %>


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">
	
<!-- ============================ COMPONENT LOGIN   ================================= -->
		<div class="card mx-auto" style="max-width: 450px; margin-top: 100px;">
			<div class="card-body">
				<h4 class="card-title mb-4">Forgot password!</h4>
				<form name="myform" action="ForgotPasswordServlet" method="POST">
					<div class="form-group">
						<label>Enter email<span>*</span></label> 
						<input name="email" id="emailid"
							class="form-control" placeholder="" type="text"> <span
							id="emailspan"></span>
					</div><!-- form-group// -->
					<div class="form-group">
						<input type="submit" id="senddiv" class="btn btn-primary btn-block" value="Send OTP" onclick="return checkEmail()">
					</div><!-- form-group// -->
				
				</form>
			</div>
			<!-- card-body.// -->
		</div>
		<!-- card .// -->
		<br> <br>
		<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>
</body>
<script>
	document.myform.email.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>