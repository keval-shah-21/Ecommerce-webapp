package com.takealot.servlet;

import java.io.IOException;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.takealot.bean.Customer;
import com.takealot.bean.User;
//import com.takealot.service.CustomerService;
import com.takealot.service.UserService;
//import com.takealot.service.impl.CustomerServiceImpl;
import com.takealot.service.impl.UserServiceImpl;

/**
 * Servlet implementation class DisplayCustomer
 */
public class DisplayUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService customerService = new UserServiceImpl();
    public DisplayUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<User> userList = new ArrayList<User>();
		userList = customerService.fetchCustomerDetails();
		for(User obj:userList)
		{
			System.out.println(obj.getCustomerId()+" "+obj.getFname()+" "+obj.getLname()+" "+obj.getEmail()+" "+obj.getPassword()+" "+obj.getAddress1()+" "+obj.getAddress2()+" "+obj.getContact()+" "+obj.getRole()+" "+obj.getStatus());
		}
		request.setAttribute("userData", userList);
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("displayuser.jsp");
		dispatcher.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
