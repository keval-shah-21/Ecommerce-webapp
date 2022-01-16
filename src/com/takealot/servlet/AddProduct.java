package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class AddProduct
 */
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService = new ProductServiceImpl();
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		Product product = new Product();
		String productName = request.getParameter("pname");
		System.out.println("Product name : "+productName);
		String productMrp = request.getParameter("pMRP");
		System.out.println("Product MRP :" +productMrp);
		int productMRP = Integer.parseInt(productMrp);
		int productDiscount  = Integer.parseInt(request.getParameter("discount"));
		int categoryId = Integer.parseInt(request.getParameter("cname"));
		int subCategoryId = Integer.parseInt(request.getParameter("scname"));
		int productStatus = Integer.parseInt(request.getParameter("status"));	
		String productDiscription = request.getParameter("pdescription");
		int productStock  = Integer.parseInt(request.getParameter("pstock"));
		Part part1 = request.getPart("productImage1");
		Part part2 = request.getPart("productImage2");
		Part part3 = request.getPart("productImage3");
		if(null!=part1) {
			
			product.setProductImage1Stream(part1.getInputStream());
		}
		if(null!=part2) {
			
			product.setProductImage2Stream(part2.getInputStream());
		}
		if(null!=part3) {
	
			product.setProductImage3Stream(part3.getInputStream());
		}	
		
		//System.out.println(productName+" "+productMRP+" "+productDiscount+" "+categoryId+" "+subCategoryId);
		int price;
		if(productDiscount!=0) {
			price = productMRP - ((productMRP*productDiscount)/100);
		}
		else
		{
			price = productMRP;
		}
		System.out.println(price);
		product.setProductName(productName);
		product.setProductMRP(productMRP);
		product.setProductDiscount(productDiscount);
		product.setCategoryId(categoryId);
		product.setSubCategoryId(subCategoryId);
		product.setProductStatus(productStatus);
		product.setProductDiscription(productDiscription);
		product.setProductStock(productStock);
		product.setProductPrice(price);
		
		System.out.println(product.getSubCategoryId()+" "+product.getCategoryId()+" "+product.getProductDiscount()+" "+product.getProductDiscription()+" "+product.getProductMRP()+" "+product.getProductName()+" "+product.getProductPrice()+" "+product.getProductStatus()+" "+product.getProductStock());
		String message = productService.addproductDetail(product);
		System.out.println(message);
		response.sendRedirect("display-product.jsp");
	}

}
