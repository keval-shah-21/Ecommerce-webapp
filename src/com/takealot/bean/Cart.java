package com.takealot.bean;

import java.io.InputStream;

public class Cart {

	private int cartId;
	private int userId;
	private int productId;
	private String productName;
	private int productPrice;
	private int productMRP;
	private int productDiscount;
	private String productDiscription;
	
	private int subCategoryId;
	
	
	private int productStock;
	private InputStream productImage1Stream;
	private String productImage1String;
	private InputStream productImage2Stream;
	private String productImage2String;
	private InputStream productImage3Stream;
	private String productImage3String;
	private int productStatus;
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
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
	public int getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(int productStatus) {
		this.productStatus = productStatus;
	}
	

}
