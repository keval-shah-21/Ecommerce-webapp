package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.Cart;

public interface CartDao {

	int insertToCart(Connection connection, int productId, int userId)throws Exception;

	List<Cart> selectCartDetails(Connection connection)throws Exception;

	int deleteCartProduct(Connection connection, int id)throws Exception;

	int deleteCartProductUsingProductId(Connection connection, int pid)throws Exception;

}
