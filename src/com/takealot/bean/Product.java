package com.takealot.bean;

import java.io.InputStream;

public class Product {

		private int productId;
		private String productName;
		private int productPrice;
		private int productMRP;
		private int productDiscount;
		private String productDiscription;
		private int categoryId;
		private int subCategoryId;
		private String categoryName;
		private String subCategoryName;
		private int productStock;
		private InputStream productImage1Stream;
		private int productStatus;
		private int pimage1;
		private int pimage2;
		private int pimage3;
		public int getPimage1() {
			return pimage1;
		}
		public void setPimage1(int pimage1) {
			this.pimage1 = pimage1;
		}
		public int getPimage2() {
			return pimage2;
		}
		public void setPimage2(int pimage2) {
			this.pimage2 = pimage2;
		}
		public int getPimage3() {
			return pimage3;
		}
		public void setPimage3(int pimage3) {
			this.pimage3 = pimage3;
		}
		public int getProductStatus() {
			return productStatus;
		}
		public void setProductStatus(int productStatus) {
			this.productStatus = productStatus;
		}
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public int getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(int productPrice) {
			this.productPrice = productPrice;
		}
		public int getProductMRP() {
			return productMRP;
		}
		public void setProductMRP(int productMRP) {
			this.productMRP = productMRP;
		}
		public int getProductDiscount() {
			return productDiscount;
		}
		public void setProductDiscount(int productDiscount) {
			this.productDiscount = productDiscount;
		}
		public String getProductDiscription() {
			return productDiscription;
		}
		public void setProductDiscription(String productDiscription) {
			this.productDiscription = productDiscription;
		}
		public int getCategoryId() {
			return categoryId;
		}
		public void setCategoryId(int categoryId) {
			this.categoryId = categoryId;
		}
		public int getSubCategoryId() {
			return subCategoryId;
		}
		public void setSubCategoryId(int subCategoryId) {
			this.subCategoryId = subCategoryId;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}
		public String getSubCategoryName() {
			return subCategoryName;
		}
		public void setSubCategoryName(String subCategoryName) {
			this.subCategoryName = subCategoryName;
		}
		public int getProductStock() {
			return productStock;
		}
		public void setProductStock(int productStock) {
			this.productStock = productStock;
		}
		public InputStream getProductImage1Stream() {
			return productImage1Stream;
		}
		public void setProductImage1Stream(InputStream productImage1Stream) {
			this.productImage1Stream = productImage1Stream;
		}
		public String getProductImage1String() {
			return productImage1String;
		}
		public void setProductImage1String(String productImage1String) {
			this.productImage1String = productImage1String;
		}
		public InputStream getProductImage2Stream() {
			return productImage2Stream;
		}
		public void setProductImage2Stream(InputStream productImage2Stream) {
			this.productImage2Stream = productImage2Stream;
		}
		public String getProductImage2String() {
			return productImage2String;
		}
		public void setProductImage2String(String productImage2String) {
			this.productImage2String = productImage2String;
		}
		public InputStream getProductImage3Stream() {
			return productImage3Stream;
		}
		public void setProductImage3Stream(InputStream productImage3Stream) {
			this.productImage3Stream = productImage3Stream;
		}
		public String getProductImage3String() {
			return productImage3String;
		}
		public void setProductImage3String(String productImage3String) {
			this.productImage3String = productImage3String;
		}
		
		@Override
		public String toString() {
			return "Product [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
					+ ", productMRP=" + productMRP + ", productDiscount=" + productDiscount + ", productDiscription="
					+ productDiscription + ", categoryId=" + categoryId + ", subCategoryId=" + subCategoryId
					+ ", categoryName=" + categoryName + ", subCategoryName=" + subCategoryName + ", productStock="
					+ productStock + ", productImage1Stream=" + productImage1Stream + ", productStatus=" + productStatus
					+ ", productImage1String=" + productImage1String + ", productImage2Stream=" + productImage2Stream
					+ ", productImage2String=" + productImage2String + ", productImage3Stream=" + productImage3Stream
					+ ", productImage3String=" + productImage3String + "]";
		}

		private String productImage1String;
		private InputStream productImage2Stream;
		private String productImage2String;
		private InputStream productImage3Stream;
		private String productImage3String;
		
}
