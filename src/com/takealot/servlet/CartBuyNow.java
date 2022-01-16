package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartBuyNow
 */
public class CartBuyNow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartBuyNow() {
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
		String productIds = request.getParameter("productids");
		String productPrices = request.getParameter("productprice");
		String productQuantitys = request.getParameter("productquantity");
		String orderAmount = request.getParameter("total");
		String userId  = request.getParameter("userid");
		String orderQuantity = request.getParameter("orderquantitys");
		
		/*System.out.println("Product Ids : "+productIds);
		System.out.println("Product Quantitys ; "+productQuantitys);
		System.out.println("Product price : "+productPrices);
		System.out.println("order amount : "+orderAmount);
		System.out.println("User Id : "+userId);
		System.out.println("Order Quantityt : "+orderQuantity);*/
		request.setAttribute("productids", productIds);
		request.setAttribute("productprices", productPrices);
		request.setAttribute("productquantitys", productQuantitys);
		request.setAttribute("orderamount", orderAmount);
		request.setAttribute("userid", userId);
		request.setAttribute("orderquantitys", orderQuantity);
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart-place-order.jsp");
		dispatcher.forward(request, response);
	}

}
