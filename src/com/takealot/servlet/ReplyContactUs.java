package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.ContactUs;
import com.takealot.service.ContactUsService;
import com.takealot.service.impl.ContactUsServiceImpl;
import com.takealot.util.SendEmail;

/**
 * Servlet implementation class ReplyContactUs
 */
public class ReplyContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ContactUsService contactusService = new ContactUsServiceImpl();
    public ReplyContactUs() {
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
		System.out.println(id);
		ContactUs obj = contactusService.fetchParticularContactusDetail(id);
		request.setAttribute("contactusDetail", obj);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reply-contact-us.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int id = Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String replymessage = request.getParameter("replymessage");
		
		//String sendingStr = "Question). "+message+"\n"+"  Answer). "+replymessage;
		String composeMail="Hey,\n"
				+"Your Contact Us Question Reply\n\n"
				+"Your Question Is : "+message+"\n\n"
				+"Your Answer Is : "+replymessage+" \n\n"
				+"Thanks,\n"
				+"Jain General Store";
		SendEmail.sendmail(email,composeMail);
		String msg = contactusService.editContactusStatus(id);
		response.sendRedirect("dispaly-contact-us.jsp");
	}

}
