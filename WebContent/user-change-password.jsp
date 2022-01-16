<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.takealot.bean.ValidateUser"%>
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

<%String message = (String)request.getAttribute("message"); %>
var msg ="<%=message%>";
if(msg!="null")
{
	alert(msg);
// 	document.getElementById("passwordspan").innerHTML="Invalid username or password!";
}
function checkbox(selected)
{
	if(selected.checked)
		{
			document.myform.opassword.type="text";
			document.myform.npassword.type="text";
			document.myform.rpassword.type="text";
		}
	else
		{
			document.myform.opassword.type="password";
			document.myform.npassword.type="password";
			document.myform.rpassword.type="password";
		}
}
	function checkPass()
	{
		var flag=true;
		
		var opass = document.myform.opassword.value;
		opass = opass.trim();
		var npass =document.myform.npassword.value;
		npass = npass.trim();
		var rpass =document.myform.rpassword.value;
		rpass = rpass.trim();
		
		if(opass == ""){
			document.getElementById("opspan").innerHTML="Please enter old password!";
			flag =  false;
		}
		else{
			if(opass.length < 8){
				document.getElementById("opspan").innerHTML="password should be minimum of 8 characters!";
				flag = false;
			}else
				document.getElementById("opspan").innerHTML="";	
		}
		
		if(npass == ""){
			document.getElementById("npspan").innerHTML="Please enter password!";
			flag =  false;
		}
		else{
			if(npass.length < 8){
				document.getElementById("npspan").innerHTML="password should be minimum of 8 characters!";
				flag = false;
			}else
				document.getElementById("npspan").innerHTML="";
				if(rpass == ""){
					document.getElementById("rpspan").innerHTML="Please enter password!";
					flag =  false;
				}
				else{
					document.getElementById("rpspan").innerHTML="";
					if(rpass.length < 8){
						document.getElementById("rpspan").innerHTML="password should be minimum of 8 characters!";
						flag = false;
					}else
						document.getElementById("rpspan").innerHTML="";
				}	
		}
		
		if(flag==true){
			if(npass!=rpass){
				document.getElementById("invalidspan").innerHTML = "Both password should must be same!";
				flag= false;
			}
		}else{
			document.getElementById("invalidspan").innerHTML="";
		}
		if(flag==true){
			alert("Password changed successfully.");
		}
		return flag;
 	}
</script>
</head>

<body>
<%@ include file="header2.jsp" %>
<!-- <header class="section-header"> -->
<!-- <section class="header-main border-bottom"> -->
<!-- 	<div class="container"> -->
<!-- <div class="row align-items-center"> -->
<!-- 	<div class="col-xl-2 col-lg-12 col-md-12"> -->
<!-- 		<a href="index.jsp" class="brand-wrap"> -->
<!-- 			<img class="logo" src="images/logo.png"> -->
<!-- 		</a> brand-wrap.// -->
<!-- 	</div> -->
<!-- 	<div class="col-xl-6 col-lg-7 col-md-6"> -->
<!-- 		<form action="#" class="search-header"> -->
<!-- 			<div class="input-group w-100"> -->
<!-- 				<select class="custom-select border-right"  name="category_name"> -->
<!-- 						<option value="">All type</option><option value="codex">Special</option> -->
<!-- 						<option value="comments">Only best</option> -->
<!-- 						<option value="content">Latest</option> -->
<!-- 				</select> -->
<!-- 			    <input type="text" class="form-control" placeholder="Search"> -->
			    
<!-- 			    <div class="input-group-append"> -->
<!-- 			      <button class="btn btn-primary" type="submit"> -->
<!-- 			        <i class="fa fa-search"></i> Search -->
<!-- 			      </button> -->
<!-- 			    </div> -->
<!-- 		    </div> -->
<!-- 		</form> search-wrap .end// -->
<!-- 	</div> col.// -->
<!-- 	<div class="col-xl-4 col-lg-5 col-md-6"> -->
<!-- 		<div class="widgets-wrap float-md-right"> -->
<!-- 			<div class="widget-header mr-3"> -->
<!-- 				<a href="#" class="widget-view"> -->
<!-- 					<div class="icon-area"> -->
<!-- 						<i class="fa fa-user"></i> -->
<!-- 						<span class="notify">3</span> -->
<!-- 					</div> -->
<!-- 					<small class="text"> My profile </small> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<div class="widget-header mr-3"> -->
<!-- 				<a href="#" class="widget-view"> -->
<!-- 					<div class="icon-area"> -->
<!-- 						<i class="fa fa-comment-dots"></i> -->
<!-- 						<span class="notify">1</span> -->
<!-- 					</div> -->
<!-- 					<small class="text"> Message </small> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<div class="widget-header mr-3"> -->
<!-- 				<a href="#" class="widget-view"> -->
<!-- 					<div class="icon-area"> -->
<!-- 						<i class="fa fa-store"></i> -->
<!-- 					</div> -->
<!-- 					<small class="text"> Orders </small> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<div class="widget-header"> -->
<!-- 				<a href="#" class="widget-view"> -->
<!-- 					<div class="icon-area"> -->
<!-- 						<i class="fa fa-shopping-cart"></i> -->
<!-- 					</div> -->
<!-- 					<small class="text"> Cart </small> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 		</div> widgets-wrap.// -->
<!-- 	</div> col.// -->
<!-- </div> row.// -->
<!-- 	</div> container.// -->
<!-- </section> header-main .// -->

<!-- </header> section-header.// -->



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">


<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Change Password!</h4>
      <form name="myform" action="ChangePassword" method="post">
      	  
          <div class="form-group">
          	 <label>Old Password<span>*</span></label>
			 <input name="opassword" class="form-control" placeholder="Old password" type="password">
			 <span id="opspan"></span>
          </div> <!-- form-group// -->
         <br>
          <div class="form-group">
          <label>New Password<span>*</span></label>
			<input name="npassword" class="form-control" placeholder="New password" type="password">
			<span id="npspan"></span>
          </div> <!-- form-group// -->
          
          <div class="form-group">
          <label>Repeat Password<span>*</span></label>
			<input name="rpassword" class="form-control" placeholder="Repeat password" type="password">
			<span id="rpspan"></span>
          </div> <!-- form-group// -->
          <span id="invalidspan"></span>
          <div class="form-group col-md-6">
<!-- 						<LABEL>REPEAT PASSWORD<SPAN>*</SPAN></LABEL> -->
					    <input  type="checkbox" name="chkbox" onchange="checkbox(this)"> Show Password</input>
<!-- 					    <span id="rpswspan"></span>	    -->
					</div> <!-- form-group end.// -->
         
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" onclick="return checkPass()"> Save </button>
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <!-- <p class="text-center mt-4">Don't have account? <a href="register.jsp">Sign up</a></p> -->
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>
</body>
<script>
	document.myform.opassword.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>