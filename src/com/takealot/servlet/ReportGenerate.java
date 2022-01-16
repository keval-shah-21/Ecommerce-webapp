package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Order;
import com.takealot.service.OrderService;
import com.takealot.service.impl.OrderServiceImpl;

/**
 * Servlet implementation class ReportGenerate
 */
public class ReportGenerate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	OrderService orderService = new OrderServiceImpl();
    public ReportGenerate() {
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
		request.setAttribute("reportorderdetail", orderList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin-report.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String startDate = request.getParameter("sdate");
		String endDate = request.getParameter("edate");
		System.out.println("Starting Date : "+startDate);
		System.out.println("Ending Date : "+endDate);
			List<Order> orderList = new ArrayList<Order>();
			orderList  = orderService.fetchReportOrderDetail(startDate,endDate);
			request.setAttribute("reportorderdetail", orderList);
			request.setAttribute("sdate", startDate);
			request.setAttribute("edate", endDate);
			for(Order obj : orderList)
			{
				System.out.println("Date : "+obj.getOrderDate());
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-report.jsp");
			dispatcher.forward(request, response);
		
	}

}
