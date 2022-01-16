package com.takealot.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.takealot.bean.Product;
import com.takealot.service.ProductService;
import com.takealot.service.impl.ProductServiceImpl;
import com.takealot.util.SendEmail;

/**
 * Servlet implementation class DisplayProduct
 */
public class DisplayProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ProductService productService = new ProductServiceImpl();
    public DisplayProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		System.out.println("inside servlet...");
//		List<Product> productList = new ArrayList<Product>();
//		productList  = productService.fetchProductDetails();
//		for(Product obj : productList) {
//			System.out.println("Inside Loop");
//			System.out.println(obj.getProductName()+" "+obj.getProductImage1String()+obj.getProductImage2String()+" "+obj.getProductImage3String());
//		}
		String email="solankivatsal027@gmail.com";
		String str="Hey,\n"
				+"Thank You! for registered in our system\n\n"
				+"Thanks,\n"
				+"Jain General Store";
		SendEmail.sendmail(email, str);
				
				
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("product Servlet Called...");
		doGet(request, response);
	}

}
