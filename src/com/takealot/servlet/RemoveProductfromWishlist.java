package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.WishlistService;
import com.takealot.service.impl.ProductServiceImpl;
import com.takealot.service.impl.WishlistServiceImpl;

/**
 * Servlet implementation class RemoveProductfromWishlist
 */
public class RemoveProductfromWishlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	WishlistService wishlistService = new WishlistServiceImpl();
	ProductService productService = new ProductServiceImpl();
    public RemoveProductfromWishlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String productId = request.getParameter("id");
		int pid = Integer.parseInt(productId);
		String message = wishlistService.removeWishlistProductUsingProductId(pid);
		System.out.println(message);
		if(message==null)
		{
			response.getWriter().append("false");
		}
		else
		{
			response.getWriter().append("true");
		}
		//		Product product = productService.fetchParticularProductDetail(pid);
//		request.setAttribute("productBean", product);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("page-detail-product.jsp");
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
