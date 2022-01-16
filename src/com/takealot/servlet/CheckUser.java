package com.takealot.servlet;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.ValidateUser;
//import com.takealot.service.CustomerService;
import com.takealot.service.UserService;
//import com.takealot.service.impl.CustomerServiceImpl;
import com.takealot.service.impl.UserServiceImpl;

/**
 * Servlet implementation class CheckUser
 */
public class CheckUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService customerService = new UserServiceImpl();
	
    public CheckUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<ValidateUser> userlist=new ArrayList<ValidateUser>();
		userlist=customerService.fetchCustomerUnamePassword();
		if(userlist!=null)
		{
			request.setAttribute("ulist", userlist);
			for(ValidateUser obj:userlist)
			{
				System.out.println(obj.getPassword()+" "+obj.getUsername());
			}
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
