package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentServlet
 */
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
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
		String userId = request.getParameter("userId");
		String userFname = request.getParameter("userfname");
		String userLname = request.getParameter("userlname");
		String productId = request.getParameter("productId");
		String productName = request.getParameter("productName");
		String productDiscription = request.getParameter("productDiscription");
		String productPrice = request.getParameter("productPrice");
		String paymentMethod = request.getParameter("payment");
		String address = request.getParameter("add1");
		String phoneNo = request.getParameter("phone");
		String orderQuantity  = request.getParameter("orderquantity");
		System.out.println("order quantity in payment servlet : "+orderQuantity);
		System.out.println(userId+" "+userFname+" "+userLname+" "+productDiscription+" "+productId+" "+productName+" "+productPrice+" "+paymentMethod+" "+phoneNo+" "+address);
		
		request.setAttribute("userId", userId);
		request.setAttribute("userFname", userFname);
		request.setAttribute("userLname", userLname);
		request.setAttribute("productId", productId);
		request.setAttribute("productName", productName);
		
		request.setAttribute("productDiscription", productDiscription);
		request.setAttribute("productPrice", productPrice);
		request.setAttribute("paymentmethod", paymentMethod);
		request.setAttribute("address", address);
		request.setAttribute("phoneNo", phoneNo);
		request.setAttribute("orderquantity", orderQuantity);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("paynow.jsp");
		dispatcher.forward(request, response);

	}

}
