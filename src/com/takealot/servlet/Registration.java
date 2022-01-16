package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.User;
//import com.takealot.bean.Customer;
//import com.takealot.service.CustomerService;
import com.takealot.service.UserService;
//import com.takealot.service.impl.CustomerServiceImpl;
import com.takealot.service.impl.UserServiceImpl;
import com.takealot.util.SendEmail;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserService customerService = new UserServiceImpl();
    public Registration() {
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
		/*String contactNo=null;
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String password=request.getParameter("cpassword");
		if(request.getParameter("phoneno")!=null)
		{
			contactNo=request.getParameter("phoneno");
		}
		Customer customer=new Customer();
		customer.setFname(fname);
		customer.setLname(lname);
		customer.setEmail(email.toLowerCase());
		customer.setContact(contactNo);
		customer.setPassword(password);
		customer.setStatus(0);
		customer.setRole("customer");
		String message=null;
		message=customerService.saveCustomerDetails(customer);
		if(message!=null)
		{
			/*SendEmail mail=new SendEmail();
			mail.sendmail(email);
			
		}*/
		//System.out.println(fname+" "+lname+" "+email+" "+contactNo+" "+password);*/
		/*Customer customer = new Customer();
		customer = (Customer)request.getAttribute("customerData");
		System.out.println(customer.getFname()+" "+customer.getLname()+" "+customer.getEmail()+" "+customer.getPassword()+customer.getContact()+" "+customer.getRole()+" "+customer.getStatus());
		*/
		int salary=0;
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("rpassword");
		System.out.println(password);
		String contactNo = request.getParameter("phoneno");
		String address = request.getParameter("add1");
		String sal =request.getParameter("salary");
		String role = request.getParameter("role");
		int status =Integer.parseInt( request.getParameter("status"));
		if(sal!=null)
		{
			salary=Integer.parseInt(sal);
		}
		System.out.println(fname+" "+lname+ " "+email+ " "+password+" "+contactNo+" "+address+" "+salary+" "+role+" "+status);
		
		User user=new User();
		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setContact(contactNo);
		user.setPassword(password);
		user.setAddress1(address);
		user.setSalary(salary);
		user.setStatus(status);
		user.setRole(role);
		String message=null;
		message=customerService.saveCustomerDetails(user);
		if(message!=null)
		{
			System.out.println("Registration Successfull...");
			String composeEmail = "Thank you! for register in our system , now you can login and buy any product which you want. ";
			SendEmail.sendmail(email,composeEmail);
			response.sendRedirect("page-user-login.jsp");
		}
		else		
		{
			System.out.println("Registration Not Successfull...");
			response.sendRedirect("register.jsp");
		}		
	}

}
