package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.SubCategory;
import com.takealot.dao.SubCategoryDao;

public class SubCategoryDaoImpl implements SubCategoryDao {

	@Override
	public int selectCategoryId(Connection connection, String categoryName)throws Exception {
		// TODO Auto-generated method stub
		String query ="select category_id from category_table where category_name = ?";
		int id=0;
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, categoryName);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				id = rs.getInt(1);
			}
			rs.close();
			return id;
			
		}
		
	}

	@Override
	public int insertSubCategory(Connection connection, SubCategory subCategory) throws Exception {
		// TODO Auto-generated method stub
		String insertQuery = "insert into subcategory_table(subcategory_name,subcategory_status,category_id) values(?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
			pstat.setString(1,subCategory.getSubCategoryName());
			pstat.setInt(2, subCategory.getSubCategoryStatus());
			pstat.setInt(3, subCategory.getCategoryId());
			return pstat.executeUpdate();
		}
		
		
	}

	@Override
	public int deleteSubCategory(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "update subcategory_table set subcategory_status=? where subcategory_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, -1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<SubCategory> selectSubCategoryDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<SubCategory> subCategoryData = new ArrayList<SubCategory>();
		try(Statement  stat = connection.createStatement();
					ResultSet rs = stat.executeQuery("select * from subcategory_table inner join category_table on category_table.category_id = subcategory_table.category_id where subcategory_status!=-1"))
		{
			
			while(rs.next())
			{
				//System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getString(6));
				SubCategory subCategory = new SubCategory();
				subCategory.setSubCategoryId(rs.getInt(1));
				subCategory.setSubCategoryName(rs.getString(2));
				subCategory.setSubCategoryStatus(rs.getInt(3));
				subCategory.setCategoryId(rs.getInt(4));
				subCategory.setCategoryName(rs.getNString(6));
				subCategoryData.add(subCategory);
				
			}
			rs.close();
		}
		
		return subCategoryData;
	}

	@Override
	public SubCategory selectParticularSubCategoryDetails(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from subcategory_table where subcategory_id =?";
		SubCategory obj = new SubCategory();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, id);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				obj.setSubCategoryId(rs.getInt(1));
				obj.setSubCategoryName(rs.getString(2));
				obj.setSubCategoryStatus(rs.getInt(3));
				obj.setCategoryId(rs.getInt(4));
			}
			rs.close();
			return obj;
		}
		
	}

	@Override
	public String selectCategoryName(Connection connection, int categoryId) throws Exception {
		// TODO Auto-generated method stub
		String query = "select category_name from category_table where category_id=?";
		String categoryName="";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, categoryId);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				categoryName = rs.getString(1);
			}
			return categoryName;
			
		}
		
		
	}

	@Override
	public int updateSubCategoryDetails(Connection connection, SubCategory subCategory) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update subcategory_table set subcategory_name = ?, subcategory_status=?, category_id=? where subcategory_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, subCategory.getSubCategoryName());
			pstat.setInt(2, subCategory.getSubCategoryStatus());
			pstat.setInt(3, subCategory.getCategoryId());
			pstat.setInt(4, subCategory.getSubCategoryId());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int selectSubcategoryId(Connection connection, String str) throws Exception {
		// TODO Auto-generated method stub
		String query  = "select subcategory_id from subcategory_table where subcategory_name=?";
		int id = 0;
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1,str);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				id = rs.getInt(1);			
			}
			rs.close();
			return id;
		}
		
	}

	@Override
	public int deleteProduct(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String query = "update product_table set product_status=? where subcategory_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			pstat.setInt(2,id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public List<SubCategory> selectAllSubcategoryDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<SubCategory> subCategoryData = new ArrayList<SubCategory>();
		try(Statement  stat = connection.createStatement();
					ResultSet rs = stat.executeQuery("select * from subcategory_table inner join category_table on category_table.category_id = subcategory_table.category_id "))
		{
			while(rs.next())
			{
				//System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getString(6));
				SubCategory subCategory = new SubCategory();
				subCategory.setSubCategoryId(rs.getInt(1));
				subCategory.setSubCategoryName(rs.getString(2));
				subCategory.setSubCategoryStatus(rs.getInt(3));
				subCategory.setCategoryId(rs.getInt(4));
				subCategory.setCategoryName(rs.getNString(6));
				subCategoryData.add(subCategory);
				
			}
			rs.close();
			return subCategoryData;
		}
		
		

	}

	@Override
	public int unblockingSubcategory(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery = "update subcategory_table set subcategory_status=? where subcategory_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery))
		{
			pstat.setInt(1, 1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
	}

}
