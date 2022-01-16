package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.Wishlist;
import com.takealot.dao.WishlistDao;
import com.takealot.dao.impl.WishlistDaoImpl;
import com.takealot.service.WishlistService;

public class WishlistServiceImpl implements WishlistService{
	
	WishlistDao wishlistDao = new WishlistDaoImpl();
	
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
	public int addWishlist(int productId, int userId) {
		// TODO Auto-generated method stub
		
		try(Connection connection = getConnection())
		{
			int i = wishlistDao.insertWishlistDetail(connection,productId,userId);
			return i;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Wishlist> fetchWishlistDetails() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return wishlistDao.selectWishlistDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String removeWishlistProduct(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = wishlistDao.deleteWishlistProduct(connection,id);
			if(i>0)
			{
				return "Wishlist Product Delete successfull...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String removeWishlistProductUsingProductId(int pid) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = wishlistDao.deleteWishlistProductUsingProductId(connection,pid);
			if(i>0)
			{
				return "Wishlist Product Delete successfull...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}

}
