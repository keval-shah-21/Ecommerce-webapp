package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.Category;
import com.takealot.dao.CategoryDao;
import com.takealot.dao.impl.CategoryDaoImpl;
import com.takealot.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	CategoryDao categoryDao = new CategoryDaoImpl();
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e1)
		{
			e1.printStackTrace();
		}
		try
		{
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takealot", "root", "admin");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}
	@Override
	public String addCategoryDetails(Category category) {
		try(Connection connection = getConnection())
		{
			int i = categoryDao.insertCategoryDetails(connection,category);
			if(i!=0)
			{
				return "Added Successfully...";
			}
			else
			{
				return "Added Not Successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<Category> fetchCategoryDetails() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return categoryDao.selectCategoryDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String removeCategory(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = categoryDao.deleteCategory(connection,id);
			if(i!=0)
			{
				return "Deleted...";
			}
			else
			{
				return " Not Deleted...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String editCategory(Category category) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = categoryDao.updateCategory(connection,category);
			if(i!=0)
			{
				return "Updated..";
			}
			else
			{
				return "Not Updated..";
			}
		}
		catch(Exception e)
		{
			
		}
		return null;
	}
	@Override
	public Category selectCategory(int id) {
		// TODO Auto-generated method stub
		
		try(Connection connection = getConnection())
		{
			return categoryDao.fetchCategoryDetails(connection,id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String removeSubcategory(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = categoryDao.deleteSubcategory(connection,id);
			if(i>0)
			{
				return "Subcategory Deleted..";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<Integer> fetchSubcategoryIds(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return categoryDao.selectSubCategoryIds(connection,id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String removeProduct(List<Integer> subCategoryIds) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i[] = categoryDao.removeProduct(connection,subCategoryIds);
			if(i.length>0)
			{
				return "product Deleted Successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<Category> fetchAllCategoryDetail() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return categoryDao.selectAllCategoryDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String unblockCategory(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = categoryDao.unblockingCategory(connection,id);
			if(i>0)
			{
				return "Category Unblocked successfull....";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
