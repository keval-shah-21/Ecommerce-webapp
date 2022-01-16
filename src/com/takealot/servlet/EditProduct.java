package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class EditProduct
 */
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService  = new ProductServiceImpl(); 
    public EditProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int id  = Integer.parseInt(request.getParameter("id"));
		Product product  = productService.fetchParticularProductDetail(id);
//		System.out.println(product);
		System.out.println(product.getProductId());
//		System.out.println("subcategory Name :"+product.getSubCategoryName());
		request.setAttribute("productDetail", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-product.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		Product product = new Product();
		int productId = Integer.parseInt(request.getParameter("id"));
		System.out.println("Product id : "+productId);
		String productName = request.getParameter("pname");
		int productMRP = Integer.parseInt(request.getParameter("pMRP"));
		int productDiscount = Integer.parseInt(request.getParameter("pdiscount"));
		int subCategoryId = Integer.parseInt(request.getParameter("scname"));
		int productStock = Integer.parseInt(request.getParameter("pstock"));
		String productDiscription = request.getParameter("pdiscription");
		int productStatus = Integer.parseInt(request.getParameter("pstatus"));
		String pimage1  = request.getParameter("pimage1id");
		String pimage2 = request.getParameter("pimage2id");
		String pimage3  = request.getParameter("pimage3id");
		int pimage1id=0,pimage2id=0,pimage3id=0;
		if(pimage1!=null)
		{
			pimage1id = Integer.parseInt(pimage1);
		}
		if(pimage2!=null)
		{
			pimage2id = Integer.parseInt(pimage2);
		}
		if(pimage3!=null)
		{
			pimage3id = Integer.parseInt(pimage3);
		}
		
		Part part1 = request.getPart("productImage1");
		Part part2 = request.getPart("productImage2");
		Part part3 = request.getPart("productImage3");
		if(part1!=null && part1.getSize()!=0) {
			
			System.out.println("part1 Not NUll..");
				product.setProductImage1Stream(part1.getInputStream());
		}
		if(part2!=null && part2.getSize()!=0) {
			product.setProductImage2Stream(part2.getInputStream());
		}
		if(part3!=null && part3.getSize()!=0) {
			product.setProductImage3Stream(part3.getInputStream());
		}
		int productPrice;
		if(productDiscount!=0) {
			
			productPrice = productMRP - ((productMRP*productDiscount)/100);
		}
		else
		{
			productPrice  = productMRP;
		}
		product.setPimage1(pimage1id);
		product.setPimage2(pimage2id);
		product.setPimage3(pimage3id);
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductMRP(productMRP);
		product.setProductDiscount(productDiscount);
		product.setProductPrice(productPrice);
		product.setProductDiscription(productDiscription);
		product.setSubCategoryId(subCategoryId);
		product.setProductStatus(productStatus);
		System.out.println(product);
		System.out.println("ProductImage Id : "+pimage1id+" "+pimage2id+" "+pimage3);
		String message = productService.editProductDetails(product);
//		System.out.println(message);
		response.sendRedirect("display-product.jsp");
	}

}
