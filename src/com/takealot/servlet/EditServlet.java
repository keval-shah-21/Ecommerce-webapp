package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.takealot.bean.User;
import com.takealot.service.UserService;
import com.takealot.service.impl.UserServiceImpl;

/**
 * Servlet implementation class EditServlet
 */
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService userService = new UserServiceImpl();
    public EditServlet() {
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
		//doGet(request, response);
		int userId=0;
		HttpSession httpSession = request.getSession(false);
		if(httpSession!=null)
		{
			User obj =new User();
			obj = (User)httpSession.getAttribute("loginBean");
			userId = obj.getCustomerId();
			
		}
		System.out.println("User Id :"+userId);
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phoneNo = request.getParameter("phoneno");
		String address1 = request.getParameter("add1");
		String email = request.getParameter("emailid");
		Part part = request.getPart("profilePhoto");
		
		System.out.println(email);
		System.out.println(address1);
		System.out.println(phoneNo);
		String address2 = request.getParameter("add2");
		User user = new User();
		if(null!=part)
		{
			user.setUserProfilepicStream(part.getInputStream());
		}
		user.setCustomerId(userId);
		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setContact(phoneNo);
		user.setAddress1(address1);
		user.setAddress2(address2);
		//System.out.println(user.getAddress1());
		String message = userService.editUser(user,userId);
		User userobj = userService.fetchUserDetails(userId);
		System.out.println(message);
		if(message.equalsIgnoreCase("User Updated..."))
		{
			System.out.println("inside If :" +userobj);
			HttpSession httpSession1 = request.getSession(false);
			httpSession1.setAttribute("loginBean", userobj);
		
			
		}
		response.sendRedirect("edit-profile.jsp");
	}

}
