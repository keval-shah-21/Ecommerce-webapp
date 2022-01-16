package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Order;
import com.takealot.service.OrderService;
import com.takealot.service.impl.OrderServiceImpl;

/**
 * Servlet implementation class AddCartOrderDetail
 */
public class AddCartOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public AddCartOrderDetail() {
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
		
		/*System.out.println("User Id : "+userId);
		System.out.println("Product Ids : "+productId);
		System.out.println("Oreder Id : "+orderId);
		System.out.println("Payment Mode : "+paymentMode);
		System.out.println("Order Amount : "+orderAmount);
		System.out.println("Address : "+address);
		System.out.println("Phoen No : "+phoneNo);
		System.out.println("Product Quantitys : "+productQuantitys);
		System.out.println("Order Quantitys : "+orderQuantity);
		System.out.println("Product prices : "+productPrices);*/
		Order obj = new Order();
		obj.setUserId(Integer.parseInt(userId));
		obj.setAddress(address);
		obj.setOrderId(orderId);
		obj.setPhoneNo(phoneNo);
		obj.setOrderStatus("Placed");
		obj.setPaymentStatus("Pending");
		obj.setOrderQuantity(orderQuantity);
		obj.setPaymentMode(paymentMode);
		obj.setProductIds(productIds);
		obj.setProductQuantitys(productQuantitys);
		obj.setProductPrices(productPrices);
		String message = orderService.addcartOrderDetail(obj);
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
