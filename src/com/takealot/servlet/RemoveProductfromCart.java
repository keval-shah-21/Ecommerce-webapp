package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.service.CartService;
import com.takealot.service.ProductService;
import com.takealot.service.impl.CartServiceImpl;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class RemoveProductfromCart
 */
public class RemoveProductfromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CartService cartService = new CartServiceImpl();
	ProductService productService = new ProductServiceImpl();
    public RemoveProductfromCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int pid = Integer.parseInt(request.getParameter("id"));
		String message = cartService.removeCartProductUsingproductId(pid);
		if(message==null)
		{
			response.getWriter().append("false");
		}
		else
		{
			response.getWriter().append("true");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
