package com.takealot.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.SubCategory;
import com.takealot.service.SubCategoryService;
import com.takealot.service.impl.SubCategoryServiceImpl;

/**
 * Servlet implementation class EditSubCategory
 */
public class EditSubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	SubCategoryService subCategoryService = new SubCategoryServiceImpl(); 
    public EditSubCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int id = Integer.parseInt(request.getParameter("id"));
		//int categoryId = subCategoryService.fetchCategoryId(id);
		//String categoryName = subCategoryService.fetchCategoryName();
		SubCategory subCategory = new SubCategory();
		subCategory = subCategoryService.fetchParticularSubCategoryDetails(id);
		System.out.println(subCategory.getCategoryId()+" "+subCategory.getSubCategoryId()+" "+subCategory.getSubCategoryName()+" "+subCategory.getSubCategoryStatus());
		String categoryName = subCategoryService.fetchCategoryName(subCategory.getCategoryId());
		System.out.println(categoryName);
		subCategory.setCategoryName(categoryName);
		request.setAttribute("subCategoryDetail", subCategory);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-subcategory.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String categoryName = request.getParameter("cname");
		String subCategoryName = request.getParameter("scname");
		int id = Integer.parseInt(request.getParameter("id"));
		int categoryId = subCategoryService.fetchCategoryId(categoryName);
		System.out.println("Category Id : "+categoryId);
		SubCategory subCategory = new SubCategory();
		subCategory.setSubCategoryId(id);
		subCategory.setCategoryId(categoryId);
		subCategory.setSubCategoryName(subCategoryName);
		subCategory.setSubCategoryStatus(1);
		String message = subCategoryService.editSubCategory(subCategory);
		System.out.println(message);
		response.sendRedirect("DisplaySubCategory");
		/*if(message!=null)
		{
			request.setAttribute("subCategoryDetail",subCategory);
			RequestDispatcher dispatcher = request.getRequestDispatcher("edit-subcategory.jsp");
			dispatcher.forward(request, response);
		}*/
		
	}

}
