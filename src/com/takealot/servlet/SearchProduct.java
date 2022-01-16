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
import com.takealot.service.SubCategoryService;
import com.takealot.service.impl.ProductServiceImpl;
import com.takealot.service.impl.SubCategoryServiceImpl;

/**
 * Servlet implementation class SearchProduct
 */
public class SearchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	SubCategoryService subcategoryService = new SubCategoryServiceImpl();
	ProductService productService = new ProductServiceImpl();
    public SearchProduct() {
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
		String str = request.getParameter("searchproduct");
		System.out.println("Product Name :  "+str);
		int productId = productService.fetchProductName(str);
		System.out.println("Product id: "+productId);
		if(productId!=0)
		{
			Product product = productService.fetchParticularProductDetail(productId);
			request.setAttribute("searchitem", str);
			request.setAttribute("productBean", product);
			RequestDispatcher dispatcher = request.getRequestDispatcher("page-detail-product.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			System.out.println("Inside else");
			int subcategoryId = subcategoryService.fetchSubcategoryId(str);
			System.out.println("Subcategory Id : "+subcategoryId);
			List<Product> productList = new ArrayList<Product>();
			productList = productService.fetchSubcategoryProduct(subcategoryId);
			request.setAttribute("searchitem", str);
			request.setAttribute("productSubcatgoryDetails", productList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("display-subcategory-product.jsp");
			dispatcher.forward(request, response);
		}
	}

}
