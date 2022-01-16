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

<%-- <jsp:include page="/CheckUser"/> --%>

<script>

	var usernamepattern = /^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,4})$/;
	<%String message = (String)request.getAttribute("message"); %>
	var msg ="<%=message%>";
	function checkbox(selected)
	{
		if(selected.checked)
			{
				document.myform.password.type="text";
			}
		else
			{
				document.myform.password.type="password";
			}
	}	
	if(msg!="null")
		{
			alert(msg);
			document.getElementById("passwordspan").innerHTML="Invalid username or password!";
		}

	function checkUP()
	{
		var flag=true;
		
		var uname = document.myform.username.value;
		uname = uname.trim();
		var password =document.myform.password.value;
		password = password.trim();
		uname = uname.toLowerCase();
		if(uname == ""){
			document.getElementById("usernamespan").innerHTML="Please enter username!";
			flag= false;
		}
		else{
			document.getElementById("usernamespan").innerHTML="";
			if(!(usernamepattern.test(uname))){
				document.getElementById("usernamespan").innerHTML="Invalid username!";
				flag= false;
			}
			else{
				document.getElementById("usernamespan").innerHTML="";
			}
		}
		
		if(password == ""){
			document.getElementById("passwordspan").innerHTML="Please enter password!";
			flag =  false;
		}
		else{
			
			document.getElementById("passwordspan").innerHTML="";
		}
		
// 		if(uname != "" && password != ""){
<%-- 			<%List<ValidateUser> userlist = new ArrayList<ValidateUser>();%> --%>
<%-- 			<%userlist = (List) request.getAttribute("ulist");%> --%>
<%-- 			<%for (ValidateUser obj : userlist) {%> --%>
				
// 				flag=true;
<%-- 				var userName = "<%=obj.getUsername()%>"; --%>
<%-- 				var pass = "<%=obj.getPassword()%>"; --%>
				
// 				if (!(uname == userName && password == pass)) {
// 					document.getElementById("passwordspan").innerHTML = "Invalid username or pasword!";
// 					flag = false;
// 				} else {
// 					document.getElementById("passwordspan").innerHTML = "";
// 					return flag;
// 				}
<%-- 		<%}%> --%>
// 		}
	return flag;
	}
</script>
</head>

<body>
<%@ include file="header2.jsp" %>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">


<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Sign in</h4>
      <form name="myform" action="LoginServlet" method="post">
      	  
          <div class="form-group">
          	<input type="hidden" name="uname"></input>
          	<input type="hidden" name="pass"></input>
			 <input name="username" class="form-control" placeholder="Username" type="text">
			 <span id="usernamespan"></span>
          </div> <!-- form-group// -->
          <div class="form-group">
			<input name="password" class="form-control" placeholder="Password" type="password">
			<span id="passwordspan"></span>
          </div> <!-- form-group// -->
          	<div class="form-group col-md-6">
<!-- 						<LABEL>REPEAT PASSWORD<SPAN>*</SPAN></LABEL> -->
					    <input  type="checkbox" name="chkbox" onchange="checkbox(this)"> Show Password</input>
<!-- 					    <span id="rpswspan"></span>	    -->
					</div> <!-- form-group end.// -->	
          <div class="form-group">
          	<a href="page-user-forgot.jsp" class="float-right">Forgot password?</a> 
          </div> <!-- form-group form-check .// -->
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" onclick="return checkUP()"> Login </button>
          </div> <!-- form-group// -->    
      </form>
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <p class="text-center mt-4">Don't have account? <a href="register.jsp">Sign up</a></p>
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>
</body>
<script>
	document.myform.username.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>