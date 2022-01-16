package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.Wishlist;

public interface WishlistDao {

	int insertWishlistDetail(Connection connection, int productId, int userId)throws Exception;

	List<Wishlist> selectWishlistDetails(Connection connection)throws Exception;

	int deleteWishlistProduct(Connection connection, int id)throws Exception;

	int deleteWishlistProductUsingProductId(Connection connection, int pid)throws Exception;

}
