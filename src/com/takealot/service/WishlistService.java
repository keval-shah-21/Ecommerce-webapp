package com.takealot.service;

import java.util.List;

import com.takealot.bean.Wishlist;

public interface WishlistService {

	int addWishlist(int productId, int userId);

	List<Wishlist> fetchWishlistDetails();

	String removeWishlistProduct(int id);

	String removeWishlistProductUsingProductId(int pid);

	

}
