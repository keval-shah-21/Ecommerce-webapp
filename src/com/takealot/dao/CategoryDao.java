package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.Category;

public interface CategoryDao {

	int insertCategoryDetails(Connection connection, Category category)throws Exception;

	List<Category> selectCategoryDetails(Connection connection)throws Exception;

	int deleteCategory(Connection connection, int id)throws Exception;

	int updateCategory(Connection connection, Category category)throws Exception;

	Category fetchCategoryDetails(Connection connection, int id)throws Exception;

	int deleteSubcategory(Connection connection, int id)throws Exception;

	List<Integer> selectSubCategoryIds(Connection connection,int id)throws Exception;

	int[] removeProduct(Connection connection, List<Integer> subCategoryIds)throws Exception;

	List<Category> selectAllCategoryDetails(Connection connection)throws Exception;

	int unblockingCategory(Connection connection, int id)throws Exception;

}
