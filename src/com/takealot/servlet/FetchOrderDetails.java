package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Order;
import com.takealot.service.OrderService;
import com.takealot.service.impl.OrderServiceImpl;

/**
 * Servlet implementation class FetchOrderDetails
 */
public class FetchOrderDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public FetchOrderDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Order> orderList = new ArrayList<Order>();
		orderList  = orderService.fetchOrderDetail();
		List<Order> orderDetailList = new ArrayList<Order>();
		orderDetailList = orderService.fetchOrderDetailFromOrderDetailTable();
		request.setAttribute("orderlist", orderList);
		request.setAttribute("orderdetaillist",orderDetailList);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
