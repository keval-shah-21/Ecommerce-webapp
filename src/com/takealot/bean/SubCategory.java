package com.takealot.bean;

public class SubCategory {
	
	private int subCategoryId;
	private int CategoryId;
	private String subCategoryName;
	private int SubCategoryStatus;
	private String categoryName;
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public int getSubCategoryStatus() {
		return SubCategoryStatus;
	}
	public void setSubCategoryStatus(int subCategoryStatus) {
		SubCategoryStatus = subCategoryStatus;
	}

}
