package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.SubCategory;
import com.takealot.dao.SubCategoryDao;
import com.takealot.dao.impl.SubCategoryDaoImpl;
import com.takealot.service.SubCategoryService;

public class SubCategoryServiceImpl implements SubCategoryService {

	
	SubCategoryDao subCategoryDao = new SubCategoryDaoImpl();
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
	public int fetchCategoryId(String categoryName) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectCategoryId(connection,categoryName);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public String addSubCategory(SubCategory subCategory) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = subCategoryDao.insertSubCategory(connection,subCategory);
			if(i!=0)
			{
				return "Sub-Category Added...";
			}
			else
			{
				return "Sub-Category not Addedd..";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String removeSubCategory(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = subCategoryDao.deleteSubCategory(connection,id);
			if(i!=0)
			{
				return "Sub-Category Deleted...";
			}
			else
			{
				return "Sub-Category Not Deleted...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<SubCategory> fetchSubCategoryDetails() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectSubCategoryDetails(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public SubCategory fetchParticularSubCategoryDetails(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectParticularSubCategoryDetails(connection,id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String fetchCategoryName(int categoryId) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectCategoryName(connection,categoryId);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String editSubCategory(SubCategory subCategory) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = subCategoryDao.updateSubCategoryDetails(connection,subCategory);
			if(i!=0)
			{
				return "Sub-Category Updated...";
			}
			else
			{
				return null;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return null;
	}
	@Override
	public int fetchSubcategoryId(String str) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectSubcategoryId(connection,str);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public String removeproduct(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = subCategoryDao.deleteProduct(connection,id);
			if(i>0)
			{
				return "Product Deleted...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<SubCategory> fetchAllSubcategoryDetail() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return subCategoryDao.selectAllSubcategoryDetail(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public String unblockSubcategory(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = subCategoryDao.unblockingSubcategory(connection,id);
			if(i>0)
			{
				return "Subcategory unblock Successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
