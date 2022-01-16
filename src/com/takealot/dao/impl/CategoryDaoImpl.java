package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.Category;
import com.takealot.dao.CategoryDao;

public class CategoryDaoImpl implements CategoryDao {

	@Override
	public int insertCategoryDetails(Connection connection, Category category)throws Exception {
		// TODO Auto-generated method stub
		String addquery = "insert into category_table(category_name,category_status) values(?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(addquery))
		{
			pstat.setString(1, category.getCategoryName());
			pstat.setInt(2,category.getStatus());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<Category> selectCategoryDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<Category> categoryList = new ArrayList<Category>();
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery("select * from category_table where category_status!=-1"))
		{
			while(rs.next())
			{
				Category obj = new Category();
				obj.setCategoryId(rs.getInt(1));
				obj.setCategoryName(rs.getString(2));
				categoryList.add(obj);
			}
			return categoryList;
		}
	}

	@Override
	public int deleteCategory(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "update category_table set category_status=? where category_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, -1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int updateCategory(Connection connection, Category category) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update category_table set category_name=? where category_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, category.getCategoryName());
			pstat.setInt(2, category.getCategoryId());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public Category fetchCategoryDetails(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
			String query = "select * from category_table where category_id=?";
			try(PreparedStatement pstat = connection.prepareStatement(query))
			{
				pstat.setInt(1, id);
				ResultSet rs = pstat.executeQuery();
				Category obj = new Category();
				while(rs.next())
				{
					obj.setCategoryId(rs.getInt(1));
					obj.setCategoryName(rs.getString(2));
					obj.setStatus(rs.getInt(3));
				}
				return obj;
				
			}
		
	}

	@Override
	public int deleteSubcategory(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteqyery  = "update subcategory_table set subcategory_status=? where category_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteqyery))
		{
			pstat.setInt(1, -1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<Integer> selectSubCategoryIds(Connection connection,int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "select subcategory_id from subcategory_table where category_id=?";
		List<Integer> subcategoryIds = new ArrayList<Integer>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, id);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				subcategoryIds.add(rs.getInt(1));
			}
			rs.close();
			return subcategoryIds;
		}
	
		
	}

	@Override
	public int[] removeProduct(Connection connection, List<Integer> subCategoryIds) throws Exception {
		// TODO Auto-generated method stub
		String query = "update product_table set product_status=? where subcategory_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			for(int i : subCategoryIds)
			{
				pstat.setInt(1, -1);
				pstat.setInt(2, i);
				pstat.addBatch();
			}
			return pstat.executeBatch();
		}
		
	}

	@Override
	public List<Category> selectAllCategoryDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<Category> categoryList = new ArrayList<Category>();
		try(Statement stat = connection.createStatement();
				ResultSet rs = stat.executeQuery("select * from category_table"))
		{
			while(rs.next())
			{
				Category obj = new Category();
				obj.setCategoryId(rs.getInt(1));
				obj.setCategoryName(rs.getString(2));
				obj.setStatus(rs.getInt(3));
				categoryList.add(obj);
			}
			return categoryList;
		}
		
	}

	@Override
	public int unblockingCategory(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "update category_table set category_status=? where category_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, 1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
	}

}
