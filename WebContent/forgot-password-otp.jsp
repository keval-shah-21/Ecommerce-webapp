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
window.setTimeout(myf,1000);
function myf(){
	alert("OTP has been sent on your email address!");
}
	var otppattern = /^([0-9]{6})$/;
	function checkForgot(){
		<%String Otp=(String)request.getAttribute("Otp"); %>
		<%String emailId =(String) request.getAttribute("emailAddress"); %>
		<%String password =(String) request.getAttribute("password"); %>
	
		var otp = document.myform.otp.value;
		otp = otp.trim();
		var flag = true;
		if(otp == ""){
					document.getElementById("otpspan").innerHTML="Please enter OTP!";
					document.myform.otp.focus();
					flag = false;
			}
			else{
					document.getElementById("otpspan").innerHTML="";
					if(!(otppattern.test(otp))){
						document.getElementById("otpspan").innerHTML="Invalid OTP!";
						flag =false;
					}
					else{
						document.getElementById("otpspan").innerHTML="";
						var pass = <%=Otp%>;
						if(pass!=otp)
							{
							document.getElementById("otpspan").innerHTML="Invalid Otp!!!";	
							flag = false;
							}
						
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
				<form name="myform" action="SendForgotPassword" method="post">
				
					<div class="form-group">
						<label>Enter OTP<span>*</span></label> 
						<input name="password" class="form-control" placeholder="" type="hidden" value="<%=password%>">
						<input name="email" class="form-control" placeholder="" type="hidden" value="<%=emailId%>">
						<input name="otp"class="form-control" placeholder="" type="text"> 
						<span id="otpspan"></span>
					</div>	<!-- form-group// -->
					<div class="form-group">
<!-- 						<a href="#" style="color:blue;" class="float-right">Resend OTP?</a> -->
					</div>	<!-- form-group form-check .// -->
					</br>
					
					<div id="regdiv" class="form-group">
						<button type="submit" class="btn btn-primary btn-block"
							onclick="return checkForgot()">Continue</button>
					</div>	<!-- form-group// -->
					
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