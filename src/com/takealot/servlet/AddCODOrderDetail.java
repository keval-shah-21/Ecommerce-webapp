package com.takealot.servlet;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Order;
import com.takealot.service.OrderService;
import com.takealot.service.impl.OrderServiceImpl;

/**
 * Servlet implementation class AddCODOrderDetail
 */
public class AddCODOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public AddCODOrderDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDateTime now = LocalDateTime.now();
		String orderDate  = dtf.format(now);
		System.out.println("Date : "+orderDate);
		String userId= request.getParameter("userId");
		String productId = request.getParameter("productId");
		String orderId = request.getParameter("orderId");
		String paymentMode = request.getParameter("paymentMode");
		int productAmount = Integer.parseInt(request.getParameter("orderAmount"));
		String address = request.getParameter("address");
		String phoneNo = request.getParameter("phoneNo");
		String orderAmount = productAmount+".00";
		int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
		int orderQuantity = Integer.parseInt(request.getParameter("orderQuantity"));
		int totalAmount = productAmount * productQuantity;
		Order obj = new Order();
		obj.setUserId(Integer.parseInt(userId));
		obj.setProductId(Integer.parseInt(productId));
		obj.setOrderId(orderId);
		obj.setPaymentMode("COD");
		obj.setProductAmount(productAmount);
		obj.setAddress(address);
		obj.setPhoneNo(phoneNo);
		obj.setOrderStatus("Placed");
		obj.setPaymentStatus("TXN_SUCCESS");
		obj.setProductQuantity(productQuantity);
		obj.setOrderQuantity(orderQuantity);
		obj.setTotalAmount(totalAmount);
		obj.setOrderDate(orderDate);
		obj.setOrderAmount(orderAmount);
		System.out.println(userId+" "+productId+" "+orderId+" "+paymentMode+" "+address+" "+phoneNo);
		String message = orderService.addCodOrderDetail(obj);
		System.out.println(message);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
