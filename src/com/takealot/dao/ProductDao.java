package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.Product;

public interface ProductDao {

	int insertproductDetail(Connection connection, Product product)throws Exception;

	int[] saveProductImages(Connection connection ,Product product) throws Exception;

	List<Product> selectProductDetails(Connection connection)throws Exception;

	int deleteProductDetail(Connection connection, int id)throws Exception;

	void selectProductImage(Connection connection, Product obj)throws Exception;

	Product selectParticularProductDetail(Connection connection, int id)throws Exception;

	void selectParticularProductImage(Connection connection,Product obj)throws Exception;

	int updateproductDetails(Connection connection, Product product)throws Exception;

	int[] updateProductImage(Connection connection, Product product)throws Exception;

	List<Product> selectSubcategoryProduct(Connection connection, int subcategoryId)throws Exception;

	int selectProductName(Connection connection, String str)throws Exception;

	List<Product> selectLowToHighPriceProduct(Connection connection)throws Exception;

	List<Product> selectHighToLowPriceProduct(Connection connection)throws Exception;

	List<Product> selectAToZProductDetail(Connection connection)throws Exception;

	List<Product> selectZToAProductDetail(Connection connection)throws Exception;

	List<Product> selectNewArrivalProduct(Connection connection)throws Exception;

	List<Product> selectRandomProductDetail(Connection connection)throws Exception;

	List<Product> selectProductPriceBetween10To50(Connection connection)throws Exception;

	List<Product> selectProductPriceBetween50To100(Connection connection)throws Exception;

	int updateProductQuantity(Connection connection, int pid, int productQuantity)throws Exception;

	List<Product> selectAllProductDetails(Connection connection)throws Exception;

	int unBlockingProduct(Connection connection, int id)throws Exception;

}
