package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Cart;
import com.takealot.service.CartService;
import com.takealot.service.impl.CartServiceImpl;

/**
 * Servlet implementation class FetchCartDetail
 */
public class FetchCartDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CartService cartService = new CartServiceImpl();
    public FetchCartDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List< Cart> cartList = new ArrayList<Cart>();
		cartList = cartService.fetchCartDetails();
		request.setAttribute("cartDetails", cartList);
		for(Cart obj : cartList)
		{
			System.out.println(obj.getCartId()+" "+obj.getUserId()+" "+obj.getProductId());
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
