package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.ProductReview;

public interface ProductReviewDao {

	int insertProductReview(Connection connection, ProductReview obj)throws Exception;

	List<ProductReview> selectProductReview(Connection connection)throws Exception;

	int deleteProductReview(Connection connection,int id)throws Exception;

}
