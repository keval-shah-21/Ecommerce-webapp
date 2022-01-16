package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class SubcategoryProduct
 */
public class SubcategoryProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService = new ProductServiceImpl();
    public SubcategoryProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Called...");
		int subcategoryId = Integer.parseInt(request.getParameter("id"));
		List<Product> productList = new ArrayList<Product>();
		productList = productService.fetchSubcategoryProduct(subcategoryId);
//		System.out.println(productList);
		for(Product obj : productList)
		{
			System.out.println("Subcategory Name : "+obj.getSubCategoryName());
		}
		request.setAttribute("productSubcatgoryDetails", productList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("display-subcategory-product.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
