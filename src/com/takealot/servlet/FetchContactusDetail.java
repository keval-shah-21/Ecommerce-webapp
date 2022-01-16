package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.ContactUs;
import com.takealot.service.ContactUsService;
import com.takealot.service.impl.ContactUsServiceImpl;

/**
 * Servlet implementation class FetchContactusDetail
 */
public class FetchContactusDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ContactUsService contactusService = new ContactUsServiceImpl();
    public FetchContactusDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<ContactUs> contactusList = new ArrayList<ContactUs>();
		contactusList = contactusService.fetchContactusDetail();
		request.setAttribute("contactusDetail", contactusList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
