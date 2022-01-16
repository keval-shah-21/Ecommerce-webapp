package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.ContactUs;
import com.takealot.service.ContactUsService;
import com.takealot.service.impl.ContactUsServiceImpl;

/**
 * Servlet implementation class ContactUsServlet
 */
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ContactUsService contactUsService = new ContactUsServiceImpl();
    public ContactUsServlet() {
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
		//doGet(request, response);
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		ContactUs obj = new ContactUs();
		obj.setMessage(message);
		obj.setUserEmailId(email);
		obj.setUserFname(fname);
		obj.setUserLname(lname);
		obj.setStatus("pending");
		String message1 = contactUsService.addContactusMessage(obj);
		System.out.println(message1);
		response.sendRedirect("welcome.jsp");
	}

}
