package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.SubCategory;
import com.takealot.service.SubCategoryService;
import com.takealot.service.impl.SubCategoryServiceImpl;

/**
 * Servlet implementation class FetchAllSubcategory
 */
public class FetchAllSubcategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	SubCategoryService subcategoryService = new SubCategoryServiceImpl();
    public FetchAllSubcategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		List<SubCategory> allSubcategoryList = new ArrayList<SubCategory>();
		allSubcategoryList = subcategoryService.fetchAllSubcategoryDetail();
		request.setAttribute("allSubcategory", allSubcategoryList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
