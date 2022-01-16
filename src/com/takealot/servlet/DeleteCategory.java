package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.service.CategoryService;
import com.takealot.service.impl.CategoryServiceImpl;

/**
 * Servlet implementation class DeleteCategory
 */
public class DeleteCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	CategoryService categoryService = new CategoryServiceImpl();
    public DeleteCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int id = Integer.parseInt((request.getParameter("id")));
		String message = categoryService.removeCategory(id);
		String message1 = categoryService.removeSubcategory(id);
		List<Integer> subCategoryIds = new ArrayList<Integer>();
		subCategoryIds = categoryService.fetchSubcategoryIds(id);
		System.out.println(message);
		System.out.println(message1);
		System.out.println(subCategoryIds.size());
		for(Integer i : subCategoryIds)
		{
			System.out.println("SubCategory ids : "+i);
		}
		String message3 = categoryService.removeProduct(subCategoryIds);
		System.out.println(message3);
		response.sendRedirect("display-category.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
