package com.takealot.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.User;
//import com.takealot.bean.Customer;
import com.takealot.util.GenerateOtp;
import com.takealot.util.SendEmail;

/**
 * Servlet implementation class OTPServlet
 */
public class OTPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OTPServlet() {
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email").toLowerCase();
		String password=request.getParameter("cpassword");
		String contactNo=request.getParameter("phoneno");
		//System.out.println(fname +" "+lname+ " "+email+" "+password+" "+contactNo);
		User user = new User();
		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setPassword(password);
		user.setContact(contactNo);
		user.setRole("customer");
		user.setStatus(0);
		//System.out.println(customer.getFname()+" "+customer.getLname()+" "+customer.getEmail()+" "+customer.getPassword()+" "+customer.getContact());
		
		String otp = GenerateOtp.getOTP();
		request.setAttribute("OTP", otp);
	//	String composeEmail = "Your registration OTP is : " + otp;
		String composeMail="Hey,\n"
				+"Your recently requsted to register in our system \n\n"
				+"Your User Name : "+email+"\n"
				+"Your OTP Is : "+otp+" \n\n"
				+"Thanks,\n"
				+"Jain General Store";
		SendEmail.sendmail(email, composeMail);
		request.setAttribute("customerDetail", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("page-user-otp.jsp");
		dispatcher.forward(request, response);
	}

}
