package com.takealot.service;

import java.util.List;

import com.takealot.bean.Category;

public interface CategoryService {

	String addCategoryDetails(Category category);

	List<Category> fetchCategoryDetails();

	String removeCategory(int id);

	String editCategory(Category category);

	Category selectCategory(int id);

	String removeSubcategory(int id);

	List<Integer> fetchSubcategoryIds(int id);

	String removeProduct(List<Integer> subCategoryIds);

	List<Category> fetchAllCategoryDetail();

	String unblockCategory(int id);
	
}
