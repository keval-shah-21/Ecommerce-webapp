package com.takealot.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.takealot.bean.User;
//import com.takealot.bean.Customer;
import com.takealot.service.LoginService;
import com.takealot.service.impl.LoginServiceImpl;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	LoginService loginservice = new LoginServiceImpl();
    public LoginServlet() {
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
		
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(userName);
		System.out.println(password);
		
		
		//System.out.println(i);
		User user = loginservice.validateUser(userName,password);
		System.out.println(user);
		//System.out.println(customer.getCustomerId()+" "+customer.getFname()+" "+customer.getLname()+" "+customer.getEmail()+" "+customer.getPassword()+" "+customer.getContact()+" "+customer.getAddress1()+" "+customer.getAddress2()+" "+customer.getRole()+" "+customer.getStatus());
		
		if(user!=null)
		{
			int i = loginservice.changeStatus(userName,password);
			HttpSession httpSession = request.getSession();
			
			httpSession.setAttribute("loginBean", user);
			if(user.getRole().equalsIgnoreCase("customer"))
			{
				response.sendRedirect("welcome.jsp");
			}
			else
			{
				response.sendRedirect("dashboard.jsp");
			}
		
		}
		else
		{
			request.setAttribute("message", "Incorrect username or passsword!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("page-user-login.jsp");
			dispatcher.forward(request, response);
		}
	}
}
