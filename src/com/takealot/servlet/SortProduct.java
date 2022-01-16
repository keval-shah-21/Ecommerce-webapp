package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class SortProduct
 */
public class SortProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService = new ProductServiceImpl();
    public SortProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("id");
		System.out.println("Sorting Servlet :"+id);
		List<Product> productList = new ArrayList<Product>();
		if(id==null)
		{
			productList = productService.fetchLowTOHighPriceProduct();
			request.setAttribute("productDetail", productList);
			request.setAttribute("sortname", "lowtohigh");
			RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			int sortid = Integer.parseInt(id);
			if(sortid==1)
			{
				productList = productService.fetchLowTOHighPriceProduct();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "lowtohigh");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
			}
			else if(sortid==2)
			{
				productList = productService.fetchHighToLowPriceProduct();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "hightolow");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
				
			}
			else if(sortid==3)
			{
				productList = productService.fetchAToZProductDetail();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "atoz");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
			}
			else if(sortid==4)
			{
				productList = productService.fetchZToAProductDetail();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "ztoa");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
			}
			else if(sortid==5)
			{
				productList =  productService.fetchProductPriceBetween10To50();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "10to50");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				productList =  productService.fetchProductPriceBetween50To100();
				request.setAttribute("productDetail", productList);
				request.setAttribute("sortname", "50to100");
				RequestDispatcher dispatcher = request.getRequestDispatcher("page-sort.jsp");
				dispatcher.forward(request, response);
			}
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
