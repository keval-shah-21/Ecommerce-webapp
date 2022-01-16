package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.takealot.bean.User;

/**
 * Servlet implementation class BuyNow
 */
public class BuyNow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyNow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		
		String pprice = request.getParameter("pprice");
		String productDis = request.getParameter("pdis");
		
		String orderQuantity = request.getParameter("orderquantity");
		System.out.println("Order Quantity in buy now : "+orderQuantity);
		HttpSession httpSession1 = request.getSession(false);
		User userobj =null;
		int userId = 0;
		String userFirstName ="";
		String userLastName ="";
		if(httpSession1!=null)
		{
			userobj = (User)httpSession1.getAttribute("loginBean");
			userId = userobj.getCustomerId();
			userFirstName = userobj.getFname();
			userLastName = userobj.getLname();
		}
		System.out.println(pname+" "+pid+" "+pprice+" "+productDis+" "+userId+" "+userFirstName+" "+userLastName);
		/*request.setAttribute("productName", pname);
		request.setAttribute("productPrice", pprice);
		request.setAttribute("productId", pid);
		request.setAttribute("productDis", productDis);
		request.setAttribute("userId", userId);
		request.setAttribute("userFname", userFirstName);
		request.setAttribute("userLname", userLastName);
		request.setAttribute("orderquantity", orderQuantity);
		RequestDispatcher dispatcher = request.getRequestDispatcher("place-order.jsp");
		dispatcher.forward(request, response);*/
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		
		String pprice = request.getParameter("pprice");
		String productDis = request.getParameter("pdis");
		
		String orderQuantity = request.getParameter("orderquantity");
		System.out.println("Order Quantity in buy now : "+orderQuantity);
		
		HttpSession httpSession1 = request.getSession(false);
		User userobj =null;
		int userId = 0;
		String userFirstName ="";
		String userLastName ="";
		if(httpSession1!=null)
		{
			userobj = (User)httpSession1.getAttribute("loginBean");
			userId = userobj.getCustomerId();
			userFirstName = userobj.getFname();
			userLastName = userobj.getLname();
		}
		System.out.println(pname+" "+pid+" "+pprice+" "+productDis+" "+userId+" "+userFirstName+" "+userLastName);
		request.setAttribute("productName", pname);
		request.setAttribute("productPrice", pprice);
		request.setAttribute("productId", pid);
		request.setAttribute("productDis", productDis);
		request.setAttribute("userId", userId);
		request.setAttribute("userFname", userFirstName);
		request.setAttribute("userLname", userLastName);
		request.setAttribute("orderquantity", orderQuantity);
		RequestDispatcher dispatcher = request.getRequestDispatcher("place-order.jsp");
		dispatcher.forward(request, response);
	}

}
