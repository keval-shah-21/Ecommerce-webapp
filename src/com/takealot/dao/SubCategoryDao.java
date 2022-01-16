package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.SubCategory;

public interface SubCategoryDao {

	int selectCategoryId(Connection connection, String categoryName)throws Exception;

	int insertSubCategory(Connection connection, SubCategory subCategory)throws Exception;

	int deleteSubCategory(Connection connection, int id)throws Exception;

	List<SubCategory> selectSubCategoryDetails(Connection connection)throws Exception;

	SubCategory selectParticularSubCategoryDetails(Connection connection, int id)throws Exception;

	String selectCategoryName(Connection connection, int categoryId)throws Exception;

	int updateSubCategoryDetails(Connection connection, SubCategory subCategory)throws Exception;

	int selectSubcategoryId(Connection connection, String str)throws Exception;

	int deleteProduct(Connection connection, int id)throws Exception;

	List<SubCategory> selectAllSubcategoryDetail(Connection connection)throws Exception;

	int unblockingSubcategory(Connection connection, int id)throws Exception;

}
