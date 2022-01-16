package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartPaymentServlet
 */
public class CartPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartPaymentServlet() {
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
		String productQuantitys =  request.getParameter("productquantitys");
		String productPrices = request.getParameter("productprices");
		String orderQuantity = request.getParameter("orderquantity");
		String orderAmount = request.getParameter("productPrice");
		String userId = request.getParameter("userid");
		String paymentMethod = request.getParameter("payment");
		String address = request.getParameter("add1");
		String phoneNo = request.getParameter("phone");
		
		/*System.out.println("Product Ids : "+productIds);
		System.out.println("product quantity :  "+productQuantitys);
		System.out.println("Product prices : "+productPrices);
		System.out.println("order Quantity : "+orderQuantity);
		System.out.println("Order Amount : "+orderAmount);
		System.out.println("User Id : "+userId);
		System.out.println("Payment Mode : "+paymentMethod);
		System.out.println("Address L "+address);
		System.out.println("Phone  No : "+phoneNo);*/
		
		request.setAttribute("productids", productIds);
		request.setAttribute("productprices", productPrices);
		request.setAttribute("productquantitys", productQuantitys);
		request.setAttribute("orderamount", orderAmount);
		request.setAttribute("userid", userId);
		request.setAttribute("orderquantitys", orderQuantity);
		request.setAttribute("paymentmethod", paymentMethod);
		request.setAttribute("address", address);
		request.setAttribute("phoneNo", phoneNo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart-paynow.jsp");
		dispatcher.forward(request, response);
	}

}
