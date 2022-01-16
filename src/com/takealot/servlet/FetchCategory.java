package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Category;
import com.takealot.service.CategoryService;
import com.takealot.service.impl.CategoryServiceImpl;

/**
 * Servlet implementation class FetchCategory
 */
public class FetchCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CategoryService categoryService = new CategoryServiceImpl();
    public FetchCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Category> categoryList = new ArrayList<Category>();
		categoryList = categoryService.fetchCategoryDetails();
		request.setAttribute("categoryDetails", categoryList);
		for(Category obj : categoryList)
		{
			System.out.println(obj.getCategoryId()+" "+obj.getCategoryName()+" "+obj.getStatus());
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
