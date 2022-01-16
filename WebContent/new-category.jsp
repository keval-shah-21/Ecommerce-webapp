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

<%-- <%@ include file="common_plugin.jsp" %> --%>
<%@ include file="header3.jsp" %>
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
		
		var cname = document.myform.cname.value;
		cname = cname.trim();
		if(cname == ""){
			document.getElementById("cspan").innerHTML="Please enter category name!";
			flag= false;
		}
		else{
			document.getElementById("cspan").innerHTML="";
		}
		return flag;
	}
</script>
</head>

<body>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">


<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Create new category</h4>
      <form name="myform" action="AddCategory" method="post">
      	  
          <div class="col form-group">
          	<label>Category name</label>
			 <input name="cname" class="form-control" placeholder="" type="text">
			 <span id="cspan"></span>
          </div> <!-- form-group// -->
    
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
	document.myform.cname.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>