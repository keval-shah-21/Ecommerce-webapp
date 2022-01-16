package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.ProductReview;
import com.takealot.dao.ProductReviewDao;
import com.takealot.dao.impl.ProductReviewDaoImpl;
import com.takealot.service.ProductReviewService;

public class ProductReviewServiceImpl implements ProductReviewService {
	
	ProductReviewDao productReviewDao = new ProductReviewDaoImpl();
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e1)
		{
			e1.printStackTrace();
		}
		try
		{
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takealot", "root", "admin");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public int addProductReview(ProductReview obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return productReviewDao.insertProductReview(connection,obj);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<ProductReview> fetchProductReview() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return productReviewDao.selectProductReview(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String removeProductReview(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productReviewDao.deleteProductReview(connection,id);
			if(i>0)
			{
				return "Product recview deleted successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
