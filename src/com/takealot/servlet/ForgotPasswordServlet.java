package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.service.UserService;
import com.takealot.service.impl.UserServiceImpl;
import com.takealot.util.GenerateOtp;
import com.takealot.util.SendEmail;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService userService = new UserServiceImpl();
    public ForgotPasswordServlet() {
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
		String email = request.getParameter("email");
		String message = userService.checkUserEmail(email);
		if(message.equalsIgnoreCase("Invalid"))
		{
			request.setAttribute("message", "Not Register Email Address!!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("page-user-forgot.jsp");
			dispatcher.forward(request, response);
			
		}
		else
		{
			String OTP = GenerateOtp.getOTP();
			//String composeMail = "Your Forgot Password Otp Is : "+OTP;
			String composeMail="Hey,\n"
					+"Your recently requsted to get password for your account\n\n"
					+"Your User Name : "+email+"\n"
					+"Your OTP Is : "+OTP+" \n\n"
					+"Thanks,\n"
					+"Jain General Store";
			SendEmail.sendmail(email, composeMail);
			request.setAttribute("emailAddress", email);
			request.setAttribute("password", message);
			request.setAttribute("Otp",OTP);
			RequestDispatcher dispatcher = request.getRequestDispatcher("forgot-password-otp.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
