package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.Cart;
import com.takealot.dao.CartDao;

public class CartDaoImpl implements CartDao {

	@Override
	public int insertToCart(Connection connection, int productId, int userId) throws Exception {
		// TODO Auto-generated method stub
		String insertQuery = "insert into cart_table(user_id,product_id) values(?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
			pstat.setInt(1, userId);
			pstat.setInt(2, productId);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<Cart> selectCartDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from cart_table";
		List<Cart> cartList = new ArrayList<Cart>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Cart obj = new Cart();
				obj.setCartId(rs.getInt(1));
				obj.setUserId(rs.getInt(2));
				obj.setProductId(rs.getInt(3));
				cartList.add(obj);
			}
			rs.close();
			return cartList;
		}
		
		
	}

	@Override
	public int deleteCartProduct(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "delete from cart_table where cart_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int deleteCartProductUsingProductId(Connection connection, int pid)throws Exception {
		// TODO Auto-generated method stub
		String query  = "delete from cart_table where product_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, pid);
			return pstat.executeUpdate();
		}
		
	}

}
