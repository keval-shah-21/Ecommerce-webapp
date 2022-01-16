package com.takealot.service;

import java.util.List;

import com.takealot.bean.ProductReview;

public interface ProductReviewService {

	int addProductReview(ProductReview obj);

	List<ProductReview> fetchProductReview();

	String removeProductReview(int id);

}
