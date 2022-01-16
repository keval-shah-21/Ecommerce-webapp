package com.takealot.service;

import java.util.List;

import com.takealot.bean.Cart;

public interface CartService {

	int addToCart(int productId, int userId);

	List<Cart> fetchCartDetails();

	String removeCartProduct(int id);

	String removeCartProductUsingproductId(int pid);

}
