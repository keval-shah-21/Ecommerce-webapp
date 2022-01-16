<%@page import="com.takealot.bean.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.takealot.bean.SubCategory"%>
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

	function checkUP()
	{
		var flag=true;
		
		var scname = document.myform.scname.value;
		scname = scname.trim();
		if(scname == ""){
			document.getElementById("scspan").innerHTML="Please enter sub-category name!";
			flag= false;
		}
		else{
			document.getElementById("scspan").innerHTML="";
		}
		return flag;
	}
</script>
</head>

<body>
<%@ include file="header2.jsp" %>
<jsp:include page="/FetchCategory"/>
<%SubCategory subCategory = (SubCategory)request.getAttribute("subCategoryDetail"); %>
<%List<Category> categoryList = (List)request.getAttribute("categoryDetails"); %>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">


<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body">
      <h4 class="card-title mb-4">Edit sub-category</h4>
      <form name="myform" action="#" method="post">
      
      <div class="col form-group">
          	<label>Sub-category name</label>
			 <input name="scname" class="form-control" placeholder="" type="text" value="<%=subCategory.getSubCategoryName()%>">
			 <input name="id" class="form-control" placeholder="" type="hidden" value="<%=subCategory.getSubCategoryId()%>">
			 
			 <span id="scspan"></span>
          </div> <!-- form-group// -->
      	 <div class="col form-group">
      	 <label>Select category</label>
      	  <select class="mr-2 form-control"  name="cname" >
      	  	
      	  		<%for(Category obj : categoryList){ %>
      	  		
      	  			<%if(obj.getCategoryName().equalsIgnoreCase(subCategory.getCategoryName())){ %>
						<option value="<%=obj.getCategoryName()%>" selected><%=obj.getCategoryName()%></option>
						<%} %>
						<%if(!obj.getCategoryName().equalsIgnoreCase(subCategory.getCategoryName())){ %>
						<option value="<%=obj.getCategoryName()%>" ><%=obj.getCategoryName()%></option>
						<%} %>
				<%} %>	
			</select>
		</div>
			
          
    
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block" onclick="return checkUP()"> Save </button>
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
	document.myform.scname.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-login.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>