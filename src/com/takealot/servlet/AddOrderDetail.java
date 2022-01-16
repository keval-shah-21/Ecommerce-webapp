package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Order;
import com.takealot.service.OrderService;
import com.takealot.service.ProductService;
import com.takealot.service.impl.OrderServiceImpl;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class AddOrderDetail
 */
public class AddOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService = new ProductServiceImpl();
	OrderService orderService = new OrderServiceImpl();
    public AddOrderDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String userId= request.getParameter("userId");
		String productId = request.getParameter("productId");
		String orderId = request.getParameter("orderId");
		String paymentMode = request.getParameter("paymentMode");
		int productAmount = Integer.parseInt(request.getParameter("orderAmount"));
		String address = request.getParameter("address");
		String phoneNo = request.getParameter("phoneNo");
		int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
		int orderQuantity = Integer.parseInt(request.getParameter("orderQuantity"));
		int totalAmount = productAmount * productQuantity;
		Order obj = new Order();
		obj.setUserId(Integer.parseInt(userId));
		obj.setProductId(Integer.parseInt(productId));
		obj.setOrderId(orderId);
		obj.setPaymentMode(paymentMode);
		obj.setProductAmount(productAmount);
		obj.setAddress(address);
		obj.setPhoneNo(phoneNo);
		obj.setOrderStatus("Placed");
		obj.setPaymentStatus("Pending");
		obj.setProductQuantity(productQuantity);
		obj.setOrderQuantity(orderQuantity);
		obj.setTotalAmount(totalAmount);
		System.out.println(userId+" "+productId+" "+orderId+" "+paymentMode+" "+address+" "+phoneNo);
	
		String msg = orderService.addOrderDetail(obj);
		System.out.println("Order Updated : "+msg);
		 
		int pid = Integer.parseInt(productId);
		String message = productService.changeProductQuantity(pid,productQuantity);
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
