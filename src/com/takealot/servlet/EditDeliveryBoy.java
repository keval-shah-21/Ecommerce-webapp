package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.User;
import com.takealot.service.UserService;
import com.takealot.service.impl.UserServiceImpl;

/**
 * Servlet implementation class EditDeliveryBoy
 */
public class EditDeliveryBoy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService userService = new UserServiceImpl();
    public EditDeliveryBoy() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int id = Integer.parseInt(request.getParameter("id"));
		User user = userService.fetchUserDetails(id);
		request.setAttribute("deliveryBoyDetail", user);
		System.out.println(user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-delivery-boy.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int salary=0;
		int id = Integer.parseInt(request.getParameter("id"));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("rpassword");
		System.out.println(password);
		String contactNo = request.getParameter("phoneno");
		String address = request.getParameter("add1");
		String sal =request.getParameter("salary");
		String role = request.getParameter("role");
		int status =Integer.parseInt( request.getParameter("status"));
		if(sal!=null)
		{
			salary=Integer.parseInt(sal);
		}
		System.out.println(fname+" "+lname+ " "+email+ " "+password+" "+contactNo+" "+address+" "+salary+" "+role+" "+status);
		
		User user=new User();
		user.setCustomerId(id);
		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setContact(contactNo);
		user.setPassword(password);
		user.setAddress1(address);
		user.setSalary(salary);
		user.setStatus(status);
		user.setRole(role);
		String message=null;
		message = userService.editDeliveryBoy(user);
		if(message!=null)
		{
			System.out.println("Updated...");
			response.sendRedirect("display-delivery-boy.jsp");
		}
		else
		{
			System.out.println("Not Updated...");
		}
	}

}
