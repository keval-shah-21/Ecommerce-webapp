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
 * Servlet implementation class AddCODCartOrderDetail
 */
public class AddCODCartOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public AddCODCartOrderDetail() {
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
		String userId= request.getParameter("userId");
		String productIds = request.getParameter("productIds");
		String orderId = request.getParameter("orderId");
		String paymentMode = request.getParameter("paymentMode");
		int orderAmount = Integer.parseInt(request.getParameter("orderAmount"));
		String address = request.getParameter("address");
		String phoneNo = request.getParameter("phoneNo");
//		int productQuantity = Integer.parseInt(request.getParameter("productQuantitys"));
		String productQuantitys = request.getParameter("productQuantitys");
		int orderQuantity = Integer.parseInt(request.getParameter("orderQuantity"));
		String productPrices = request.getParameter("productPrices");
		String orderamount = orderAmount+".00";
		Order obj = new Order();
		obj.setOrderDate(orderDate);
		obj.setUserId(Integer.parseInt(userId));
		obj.setAddress(address);
		obj.setOrderId(orderId);
		obj.setPhoneNo(phoneNo);
		obj.setOrderStatus("Placed");
		obj.setPaymentStatus("TXN_SUCCESS");
		obj.setOrderQuantity(orderQuantity);
		obj.setPaymentMode("COD");
		obj.setProductIds(productIds);
		obj.setProductQuantitys(productQuantitys);
		obj.setProductPrices(productPrices);
		obj.setOrderAmount(orderamount);
		String message = orderService.addCodCartOrderDetail(obj);
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
