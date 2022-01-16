package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Category;
import com.takealot.service.CategoryService;
import com.takealot.service.impl.CategoryServiceImpl;

/**
 * Servlet implementation class EditCategory
 */
public class EditCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CategoryService categoryService = new CategoryServiceImpl();
    public EditCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//String name = request.getParameter("name");
		
		int id = Integer.parseInt(request.getParameter("id"));
		Category category = new Category();
		category = categoryService.selectCategory(id);
		System.out.println(category.getCategoryId()+" "+category.getCategoryName()+" "+category.getStatus());
		request.setAttribute("categoryDetail", category);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-category.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String name = request.getParameter("cname");
		int id = Integer.parseInt(request.getParameter("cid"));
		int status = Integer.parseInt(request.getParameter("cstatus"));
		Category category = new Category();
		category.setCategoryId(id);
		category.setCategoryName(name);
		category.setStatus(status);
		String message = categoryService.editCategory(category);
		System.out.println(message);
		response.sendRedirect("DisplayCategory");
		
	}

}
