package com.takealot.service;

import java.util.List;

import com.takealot.bean.SubCategory;

public interface SubCategoryService {

	int fetchCategoryId(String categoryName);

	String addSubCategory(SubCategory subCategory);

	String removeSubCategory(int id);

	List<SubCategory> fetchSubCategoryDetails();

	SubCategory fetchParticularSubCategoryDetails(int id);

	String fetchCategoryName(int categoryId);

	String editSubCategory(SubCategory subCategory);

	int fetchSubcategoryId(String str);

	String removeproduct(int id);

	List<SubCategory> fetchAllSubcategoryDetail();

	String unblockSubcategory(int id);

}
