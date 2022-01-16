<%@page import="com.takealot.bean.User"%>
<%@page import="com.takealot.util.GenerateOtp"%>
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
	function checkotp(){
		var otp = document.myform.otp.value;
		otp = otp.trim();
		if(otp == ""){
			document.getElementById("otpspan").innerHTML="Please enter OTP!";
			document.myform.otp.focus();
			return false;
		}
		else{
			document.getElementById("otpspan").innerHTML="";
			if(!(otppattern.test(otp))){
				document.getElementById("otpspan").innerHTML="Invalid OTP!";
				return false;
			}
			else{
				document.getElementById("otpspan").innerHTML="";
				
				 <% String str = (String)request.getAttribute("OTP"); %>
				 var otpgenerate = <%=str%>;
				 
				 if(otp !=  otpgenerate ) {
					document.getElementById("otpspan").innerHTML="OTP doesn't match!";
					return false; 
				} 
				 else
				 {
				 	return true;
				 }
			}
		}
	}
</script>
</head>
<body>


<%User user = new User();%>
				<%user = (User)request.getAttribute("customerDetail");%>
<%@ include file="header2.jsp" %>



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">
	
<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Sign up</h4>
      <form name="myform" action="Registration" method="POST">
      	 
          <div class="form-group">
          	<label>Enter OTP<span>*</span></label>
          	<input name="fname" type="hidden" value="<%=user.getFname()%>"></input>
          	<input name="lname" type="hidden" value="<%=user.getLname()%>"></input>
          	<input name="email" type="hidden" value="<%=user.getEmail()%>"></input>
          	<input name="rpassword" type="hidden" value="<%=user.getPassword()%>"></input>
          	<input name="phoneno" type="hidden" value="<%=user.getContact()%>"></input>
          	<input name="role" type="hidden" value="<%=user.getRole()%>"></input>
          	<input name="status" type="hidden" value="<%=user.getStatus()%>"></input>
			 <input name="otp" class="form-control" placeholder="" type="text"></input>
			 <span id="otpspan"></span>
          </div> <!-- form-group// -->
                    
          <div class="form-group">
          	
          </div> <!-- form-group form-check .// -->
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" onclick="return checkotp()"> Register  </button>
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
	document.myform.otp.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>