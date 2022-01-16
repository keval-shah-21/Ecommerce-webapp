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
 * Servlet implementation class FetchAllCategory
 */
public class FetchAllCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CategoryService categoryService = new CategoryServiceImpl();
    public FetchAllCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Category> allCategoryList = new ArrayList<Category>();
		allCategoryList = categoryService.fetchAllCategoryDetail();
		for(Category obj  : allCategoryList)
		{
			System.out.println(obj.getCategoryId());
		}
		request.setAttribute("allcategory", allCategoryList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
