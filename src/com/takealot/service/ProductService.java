package com.takealot.service;

import java.util.List;

import com.takealot.bean.Product;

public interface ProductService {

	String addproductDetail(Product product);

	List<Product> fetchProductDetails();

	String removeProductDetail(int id);

	Product fetchParticularProductDetail(int id);

	String editProductDetails(Product product);

	List<Product> fetchSubcategoryProduct(int subcategoryId);

	int fetchProductName(String str);

	List<Product> fetchLowTOHighPriceProduct();

	List<Product> fetchHighToLowPriceProduct();

	List<Product> fetchAToZProductDetail();

	List<Product> fetchZToAProductDetail();

	List<Product> fetchNewArrivalProduct();

	List<Product> fetchRandomProductDetail();

	List<Product> fetchProductPriceBetween10To50();

	List<Product> fetchProductPriceBetween50To100();

	String changeProductQuantity(int pid, int productQuantity);

	List<Product> fetchAllproductDetail();

	String unblockProduct(int id);

}
