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
 * Servlet implementation class AddMoreOrderDetail
 */
public class AddMoreOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public AddMoreOrderDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String data = request.getParameter("data");
		System.out.println(data);
		String s[] = data.split(",");
		String s1[] = s[5].split("=");
		String orderId = s1[1];
		String s3[] =s[10].split("=");
		String orderAmount =s3[1];
		String s4[] = s[11].split("=");
		String s6[] =s4[1].split(" ");
		String date = s6[0];
		String s5[] = s[9].split("=");
		String status = s5[1];
		
		System.out.println(orderId+" "+orderAmount+" "+date+" "+status);
		
		Order obj = new Order();
		obj.setOrderId(orderId);
		obj.setPaymentStatus(status);
		obj.setOrderDate(date);
		obj.setOrderAmount(orderAmount);
		
		String msg = orderService.addMoreOrderDetail(obj);
		System.out.println(msg);
		
		if(msg!=null)
		{
			response.getWriter().append("true");
		}
		else
		{
			response.getWriter().append("false");
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
