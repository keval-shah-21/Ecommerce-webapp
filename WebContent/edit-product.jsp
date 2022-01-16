<!DOCTYPE HTML>
<%@page import="com.takealot.bean.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.takealot.bean.SubCategory"%>
<%@page import="java.util.List"%>
<%@page import="com.takealot.bean.Category"%>
<html lang="en">

<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Jain General Store</title>
<%@ include file="header3.jsp" %>
<jsp:include page="/DisplaySubCategory"/>
<jsp:include page="/FetchCategory"/>
<%-- <%List<Category> categoryList = (List)request.getAttribute("categoryDetails"); %> --%>
<%-- 	<%List<SubCategory> subCategoryList = new ArrayList<SubCategory>(); %> --%>
<%-- 		<%subCategoryList = (List)request.getAttribute("subCategoryDetails"); %> --%>

<script>
	var flag = true;
	var nPattern = /^([0-9]+)$/;
	var found = 0;
	$(document).ready(function(){
		
// 		$("#sclbl").hide();
// 		$("#scname1").hide();
		$("#caname").change(function(){
			
			
			var val = $(this).val();
			alert(val);
			<%for(SubCategory obj : subCategoryList){%>
				
			$("#scname1 option[value='<%=obj.getSubCategoryId()%>']").remove();
		
				if(val == "<%=obj.getCategoryId()%>" )
					{
						found = 1;
						$("#scname1").show();
						$("#sclbl").show();
						
						$("#scname1").append(`<option value="<%=obj.getSubCategoryId()%>" selected><%=obj.getSubCategoryName()%></option>`);
					}
// 				if(found==0)
// 					{
// 					$("#scname1").hide();
// 					$("#sclbl").hide();
// 					found =0;
					
// 					}
				
			<%}%>
			
		});
	});
	function checkPname(){
		var pname = document.myform.pname.value;
		pname = pname.trim();
		if(pname==""){
			document.getElementById("pnamespan").innerHTML="Please enter your product name!";
			flag= false;
		}
		else{	
				document.getElementById("pnamespan").innerHTML="";
			}
		}

	function checkPrice(){
		var price = document.myform.price.value;
		price = price.trim();
		if (price == "") {
			document.getElementById("pricespan").innerHTML = "Please enter price!";
			flag =  false;
		}
		else{
				if(!(nPattern.test(price))){
					document.getElementById("pricespan").innerHTML = "Invalid price!";
					flag =  false;
				}
				else if(price < 1){
					document.getElementById("pricespan").innerHTML = "Invalid price!";
					flag =  false;		
				}
				else
					document.getElementById("pricespan").innerHTML="";
			}
		}
	
	function checkDiscount(){
		var discount = document.myform.discount.value;
		discount = discount.trim();
		if (discount == "") {
			document.getElementById("discountspan").innerHTML = "Please enter discount!";
			flag =  false;
		}
		else{
			if(!(nPattern.test(discount))){
				document.getElementById("discountspan").innerHTML = "Invalid discount!";
				flag =  false;
			}
			else if (discount < 0 || discount > 100) {
				document.getElementById("discountspan").innerHTML = "Invalid discount!";
				flag =  false;
			}
			else
				document.getElementById("discountspan").innerHTML="";
		}
	}
	function checkDes(){
		var des = document.myform.des.value;
		des= des.trim();
		if (des == "") {
			document.getElementById("desspan").innerHTML = "Please enter prouct description!";
			flag =  false;
		}
		else{
				document.getElementById("desspan").innerHTML="";
		}
	}
	
	function checkValidation(){	
		flag=true;
		checkPname();
		checkPrice();
		checkDis();
		checkDiscount();
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




<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
<%Product product = (Product)request.getAttribute("productDetail");  %>
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
	
	
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Edit product</h4></header>
		<form name="myform" action="EditProduct" method="POST" enctype="multipart/form-data">
				<div class="form-row">
					<div class="col form-group">
						<label>Product name<span>*</span></label>
						<input type="hidden" name="pimage1id" value="<%=product.getPimage1()%>">
						<input type="hidden" name="pimage2id" value="<%=product.getPimage2()%>">
						<input type="hidden" name="pimage3id" value="<%=product.getPimage3()%>">
						<input type="hidden" name="id" value="<%=product.getProductId()%>"/>
					  	<input type="text" class="form-control" placeholder="" name="pname" onblur="checkPname()" value="<%=product.getProductName()%>">
					  	<span id="pnamespan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
								
				<div class="form-row">
					<div class="col form-group">
						<label>Product MRP<span>*</span></label>
						<input type="hidden" name="status" value="1"/>
						<input type="text" class="form-control" placeholder="" name="pMRP" onblur="checkPrice()" value="<%=product.getProductMRP()%>">
						<span id="pricespan"></span>
					</div> <!-- form-group end.// -->
					
					<div class="col form-group">
						<label>Product discount<span>*</span></label>
						<input type="text" class="form-control" placeholder="" name="pdiscount" onblur="checkDiscount()" value="<%=product.getProductDiscount()%>">
						<span id="discountspan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				

				<div class="col form-group">
      	 <label>Select category</label>
      	  <select id ="caname" class="mr-2 form-control"  name="cname" title="--Select Category--" placeholder="--Select Category--">
<!--       	  	<option value="-1" selected>--Please Select--</option> -->
      	  	<%for(Category obj : categoryList) {%>
					<%if(obj.getCategoryId()==product.getCategoryId()) {%>
						<option value="<%=obj.getCategoryId()%>"  selected><%=obj.getCategoryName()%></option>
					<%} %>
					<%if(!(obj.getCategoryId()==product.getCategoryId())) {%>
					<option value="<%=obj.getCategoryId()%>"><%=obj.getCategoryName()%></option>
					<%} %>
						
				<%} %>
					
			</select>
		</div>
				
				<div class="col form-group">
      	 <label id = "sclbl">Select Sub-category</label>
      	  <select id="scname1" class="mr-2 form-control"  name="scname" title="--Select Category--" placeholder="--Select Category--">
      	  		<option value="<%=product.getSubCategoryId()%>"><%=product.getSubCategoryName() %></option>"
      	  	</select>
		</div>
				  
				  <div class="col form-group">
						<label>Product Stock<span>*</span></label>
					  	<input type="text" class="form-control" placeholder="" name="pstock" value="<%=product.getProductStock()%>">
					  	<span id="pnamespan"></span>
					</div> <!-- form-group end.// -->      				
				<div class="form-group">
					<input type="hidden" name="pstatus" value="<%=product.getProductStatus() %>"/>
					<label>Product description<span>*</span></label>
            		<textarea  name="pdiscription" class="form-control" rows="5" cols="35" onblur="checkDes()" value="<%=product.getProductDiscription()%>"><%=product.getProductDiscription()%></textarea>
            		<span id="desspan"></span>
            	</div>

				<div class="form-group">
					<label>Product image 1<span>*</span></label><br>
					<img height="130px" width="130px" src="data:image/png;base64,<%=product.getProductImage1String()%>">
					<input type="file" name = "productImage1"></input>
				</div>
				<div class="form-group">
					<label>Product image 2</label><br>
					<img height="130px" width="130px" src="data:image/png;base64,<%=product.getProductImage2String()%>">
					<input type="file" name = "productImage2"></input>
				</div>
				<div class="form-group">
					<label>Product image 3</label><br>
					<img height="130px" width="130px" src="data:image/png;base64,<%=product.getProductImage3String()%>">
					<input type="file" name = "productImage3"></input>
				</div> 
				</br>
			    <div class="form-group">
			          <button type="submit" class="btn btn-primary btn-block" name="submit" onclick="return checkValidation()"> Add  </button>
			    </div> <!-- form-group// --> 
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<%-- <%@ include file="Footer.jsp" %> --%>

</body>
<script>
	document.myform.pname.focus();
</script>
<!-- Mirrored from bootstrap-ecommerce.com/templates/alistyle-html/page-user-register.html by HTTrack Website Copier/3.x [XR&CO'2017], Mon, 14 Dec 2020 13:09:00 GMT -->
</html>
