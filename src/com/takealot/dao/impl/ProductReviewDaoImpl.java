package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.ProductReview;
import com.takealot.dao.ProductReviewDao;

public class ProductReviewDaoImpl implements ProductReviewDao{

	@Override
	public int insertProductReview(Connection connection,ProductReview obj) throws Exception {
		// TODO Auto-generated method stub
		String insertQuery = "insert into product_review_table(product_id,product_review,user_id) values(?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
			pstat.setInt(1, obj.getProductId());
			pstat.setString(2, obj.getProductReview());
			pstat.setInt(3, obj.getUserId());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<ProductReview> selectProductReview(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_review_table";
		List<ProductReview> productReviewList = new ArrayList<ProductReview>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				ProductReview obj = new ProductReview();
				obj.setProductReviewId(rs.getInt(1));
				obj.setProductId(rs.getInt(2));
				obj.setProductReview(rs.getString(3));
				obj.setUserId(rs.getInt(4));
				productReviewList.add(obj);
			}
			rs.close();
			return productReviewList;
		}
		
		
	}

	@Override
	public int deleteProductReview(Connection connection,int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "delete from product_review_table where product_review_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, id);
			return pstat.executeUpdate();
			
		}
		
		
	}

}
