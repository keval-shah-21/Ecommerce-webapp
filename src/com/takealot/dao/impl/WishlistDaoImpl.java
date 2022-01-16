package com.takealot.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.Wishlist;

import com.takealot.dao.WishlistDao;

public class WishlistDaoImpl implements WishlistDao {

	@Override
	public int insertWishlistDetail(Connection connection, int productId, int userId) throws Exception {
		// TODO Auto-generated method stub
		String insertQuery  = "insert into wishlist_table(user_id,product_id) values(?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
			pstat.setInt(1, userId);
			pstat.setInt(2,productId);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<Wishlist> selectWishlistDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<Wishlist> wishlistDetails = new ArrayList<Wishlist>();
		String query = "select * from wishlist_table ";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Wishlist obj = new Wishlist();
				obj.setWishlistId(rs.getInt(1));
				obj.setUserId(rs.getInt(2));
				obj.setProductId(rs.getInt(3));
				wishlistDetails.add(obj);
			}
			
			rs.close();
			return wishlistDetails;
		}
		
	}

	@Override
	public int deleteWishlistProduct(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "delete from wishlist_table where wishlist_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, id);
			return pstat.executeUpdate();

		}
		
	}

	@Override
	public int deleteWishlistProductUsingProductId(Connection connection, int pid) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "delete from wishlist_table where product_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, pid);
			return pstat.executeUpdate();

		}

		
	}

}
