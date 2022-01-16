package com.takealot.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.SubCategory;
import com.takealot.service.SubCategoryService;
import com.takealot.service.impl.SubCategoryServiceImpl;

/**
 * Servlet implementation class AddSubCategory
 */
public class AddSubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	SubCategoryService subCategoryService = new SubCategoryServiceImpl();
    public AddSubCategory() {
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
		//doGet(request, response);
		String categoryName = request.getParameter("cname");
		String subCategoryName = request.getParameter("scname");
		int categoryId = subCategoryService.fetchCategoryId(categoryName);
		System.out.println("Category Id : "+categoryId);
		SubCategory subCategory = new SubCategory();
		subCategory.setCategoryId(categoryId);
		subCategory.setSubCategoryName(subCategoryName);
		subCategory.setSubCategoryStatus(1);
		String message = subCategoryService.addSubCategory(subCategory);
		System.out.println(message);
		response.sendRedirect("display-subcategory.jsp");
		
	}

}
