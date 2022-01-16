package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.takealot.bean.User;
import com.takealot.service.WishlistService;
import com.takealot.service.impl.WishlistServiceImpl;

/**
 * Servlet implementation class AddWishlist
 */
public class AddWishlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	WishlistService wishlistService = new WishlistServiceImpl();
    public AddWishlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int productId = Integer.parseInt(request.getParameter("id"));
		int userId=0;
		HttpSession httpSession = request.getSession(false);
		if(httpSession!=null)
		{
			User obj =new User();
			obj = (User)httpSession.getAttribute("loginBean");
			userId = obj.getCustomerId();
			
		}
		int ans = wishlistService.addWishlist(productId,userId);
		System.out.println("Answer Is : "+ans);
		if(ans==0)
		{
			response.getWriter().append("false");
		}
		else
		{
			response.getWriter().append("true");
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
