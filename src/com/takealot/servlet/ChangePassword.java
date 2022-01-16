package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.takealot.bean.User;
import com.takealot.service.UserService;
import com.takealot.service.impl.UserServiceImpl;

/**
 * Servlet implementation class ChangePassword
 */
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService userService = new UserServiceImpl();
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();
		HttpSession httpSession = request.getSession(false);
		if(httpSession!=null)
		{
			 user = (User)httpSession.getAttribute("loginBean");
		}
		String oldPassword = request.getParameter("opassword");
		String newPassword = request.getParameter("npassword");
		int userId = user.getCustomerId();
		System.out.println(userId);
		String message = userService.checkOldPassword(oldPassword,userId);
		System.out.println(message);
		if(message.equals("valid"))
		{
			String message1 = userService.editPassword(userId,newPassword);
			System.out.println(message1);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			request.setAttribute("message", "Old password is invalid!!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-change-password.jsp");
			dispatcher.forward(request, response);
		}

		
	}

}
