<!DOCTYPE HTML>
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
<%-- <%@ include file="common_plugin.jsp" %> --%>
<%-- <jsp:include page="/DisplaySubCategory"/> --%>
<%-- <jsp:include page="/FetchCategory"/> --%>
<%-- <%List<Category> categoryList = (List)request.getAttribute("categoryDetails"); %> --%>
<%-- 	<%List<SubCategory> subCategoryList = new ArrayList<SubCategory>(); %> --%>
<%-- 		<%subCategoryList = (List)request.getAttribute("subCategoryDetails"); %> --%>
<%@ include file="header3.jsp" %>
<script>
	var flag = true;
	var nPattern = /^([0-9]+)$/;
	var found = 0;
	$(document).ready(function(){
		
		$("#sclbl").hide();
		$("#scname1").hide();
		$("#caname").change(function(){
			
			
			var val = $(this).val();
			//alert(val);
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
	function checkStock(){
		var stock = document.myform.pstock.value;
		stock = stock.trim();
		if(stock==""){			
			document.getElementById("pstockspan").innerHTML="Please enter total stock of product!";
			flag= false;
		}
		else{	
				if( isNaN(stock) ){				
					document.getElementById("pstockspan").innerHTML="Invalid stock input!";
					flag = false;
				}		
				else if(stock < 0){
					document.getElementById("pstockspan").innerHTML="Invalid stock amount!";
					flag = false;
				}
				else				
					document.getElementById("pstockspan").innerHTML="";
			}
	}
	function checkMRP(){
		var price = document.myform.pMRP.value;
		price = price.trim();
		if (price == "") {
			document.getElementById("mrpspan").innerHTML = "Please enter price!";
			flag =  false;
		}
		else{
				if(!(nPattern.test(price))){
					document.getElementById("mrpspan").innerHTML = "Invalid price!";
					flag =  false;
				}
				else if(price < 1){
					document.getElementById("mrpspan").innerHTML = "Invalid price!";
					flag =  false;		
				}
				else
					document.getElementById("mrpspan").innerHTML="";
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
		var des = document.myform.pdescription.value;
		des= des.trim();
		if (des == "") {
			document.getElementById("desspan").innerHTML = "Please enter prdouct description!";
			flag =  false;
		}
		else{
				document.getElementById("desspan").innerHTML="";
		}
	}
	
	function checkValidation(){	
		flag=true;
		checkPname();
		checkMRP();
		checkDes();
		checkDiscount();
		checkStock();		
		var cate = document.querySelector('#caname').value;
		if(cate.trim() == -1){			
			flag = false;
			document.getElementById("cspan").innerHTML = "Please select category!";
		}		
		else
			document.getElementById("cspan").innerHTML = "";
		
 		var x = document.getElementById('pi1');
 		var y = document.getElementById('pi2');
 		var z = document.getElementById('pi3'); 	
 		if(x.files.length==0 && y.files.length==0 && z.files.length==0){
 			document.getElementById("imagespan").innerHTML="Please choose at least one image...";
 			flag = false;
 		}else{
 			var ok = true;
 			if(x.files.length!=0){
 				var filePath = x.value;
 	 			var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
 	           
 	       		if (!allowedExtensions.exec(filePath)) {
 	       			document.getElementById("imagespan").innerHTML="Invalid file type!";
 	             	x.value = '';
 	             	flag =  false;
 	             	ok = false;
 	         	} 	  	 	       	
 			}
 			if(y.files.length!=0){
 				var filePath = y.value;
 	 			var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
 	           
 	       		if (!allowedExtensions.exec(filePath)) {
 	       			document.getElementById("imagespan").innerHTML="Invalid file type!";
 	             	y.value = '';
 	             	flag =  false;
 	             	ok = false;
 	         	}
 			}
 			if(z.files.length!=0){
 				var filePath = z.value;
 	 			var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
 	           
 	       		if (!allowedExtensions.exec(filePath)) {
 	       			document.getElementById("imagespan").innerHTML="Invalid file type!";
 	             	z.value = '';
 	             	flag =  false;
 	             	ok = false;
 	         	}
 			}
 			if(ok == true)
       			document.getElementById("imagespan").innerHTML="";
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


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->

	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">	
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">New product</h4></header>
		<form name="myform" action="AddProduct" method="post" enctype="multipart/form-data">
				<div class="form-row">
					<div class="col form-group">
						<label>Product name<span>*</span></label>
					  	<input type="text" class="form-control" placeholder="" name="pname" onblur="checkPname()"/>
					  	<span id="pnamespan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
								
				<div class="form-row">
					<div class="col form-group">
						<label>Product MRP<span>*</span></label>
						<input type="hidden" name="status" value="1"/>
						<input type="text" class="form-control" placeholder="" name="pMRP" onblur="checkMRP()"/>
						<span id="mrpspan"></span>
					</div> <!-- form-group end.// -->
					
					<div class="col form-group">
						<label>Product discount<span>*</span></label>
						<input type="text" class="form-control" placeholder="" name="discount" onblur="checkDiscount()"/>
						<span id="discountspan"></span>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				

				<div class="col form-group">
      	 <label>Select category</label>
      	  <select id ="caname" class="mr-2 form-control"  name="cname" title="--Select Category--" placeholder="--Select Category--">
      	  	<option value="-1" selected>--Please Select--</option>
      	  	<%for(Category obj : categoryList) {%>

					<option value="<%=obj.getCategoryId()%>" ><%=obj.getCategoryName()%></option>
				<%} %>
					
			</select>
			<span id="cspan"></span>
		</div>
				
				<div class="col form-group">
      	 <label id = "sclbl">Select Sub-category</label>
      	  <select id="scname1" class="mr-2 form-control"  name="scname" title="--Select Category--" placeholder="--Select Category--">
      	  	</select>
		</div>
				  
				  <div class="col form-group">
						<label>Product Stock<span>*</span></label>
					  	<input type="text" class="form-control" placeholder="" name="pstock" onblur="checkStock()"/>
					  	<span id="pstockspan"></span>
					</div> <!-- form-group end.// -->      				
				<div class="form-group">
					<label>Product description<span>*</span></label>
            		<textarea  name="pdescription" class="form-control" rows="5" cols="35" onblur="checkDes()"></textarea>
            		<span id="desspan"></span>
            	</div>

				<div class="form-group">
					<label>Product image 1</label><br>
					<input type="file" id="pi1" name = "productImage1"></input>
				</div>
				<div class="form-group">
					<label>Product image 2</label><br>
					<input type="file" id="pi2" name = "productImage2"></input>
				</div>
				<div class="form-group">
					<label>Product image 3</label><br>
					<input type="file" id="pi3" name = "productImage3"></input>
				</div> 
				<span id="imagespan"></span>
				<br>
				<br>
			    <div class="form-group">
			          <button type="submit" class="btn btn-primary btn-block" name="submit" onclick="return checkValidation()" > Add </button>			 
			    </div> <!-- form-group// -->
			</form>
		</article> 
	</div>
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
