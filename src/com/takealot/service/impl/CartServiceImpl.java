package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.Cart;
import com.takealot.dao.CartDao;
import com.takealot.dao.impl.CartDaoImpl;
import com.takealot.service.CartService;

public class CartServiceImpl implements CartService {
	
	CartDao cartDao = new CartDaoImpl();
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
	public int addToCart(int productId, int userId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = cartDao.insertToCart(connection,productId,userId);
			return i;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}


	@Override
	public List<Cart> fetchCartDetails() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return cartDao.selectCartDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public String removeCartProduct(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = cartDao.deleteCartProduct(connection,id);
			if(i>0)
			{
				return "Cart Product Delete..";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public String removeCartProductUsingproductId(int pid) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = cartDao.deleteCartProductUsingProductId(connection,pid);
			if(i>0)
			{
				return "Cart Product Delete..";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;

	}

}
