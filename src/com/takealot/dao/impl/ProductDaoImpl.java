package com.takealot.dao.impl;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.takealot.bean.Product;
import com.takealot.dao.ProductDao;

public class ProductDaoImpl implements ProductDao {

	@Override
	public int insertproductDetail(Connection connection, Product product) throws Exception {
		// TODO Auto-generated method stub
		int i=0;
		int productId = 0;
		String insertQuery  = "insert into product_table (product_name,  product_price, product_mrp ,product_discount, product_status, product_stock, product_description,subcategory_id) values(?,?,?,?,?,?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery,Statement.RETURN_GENERATED_KEYS))
		{
			pstat.setString(1, product.getProductName());
			pstat.setInt(2, product.getProductPrice());
			pstat.setInt(3, product.getProductMRP());
			pstat.setInt(4, product.getProductDiscount());
			pstat.setInt(5,product.getProductStatus());
			pstat.setInt(6, product.getProductStock());
			pstat.setString(7, product.getProductDiscription());
			pstat.setInt(8, product.getSubCategoryId());
			i =pstat.executeUpdate();
			ResultSet rs = pstat.getGeneratedKeys();
			while(rs.next()) {
				productId = rs.getInt(1);
			}
			
		}
		return productId;
	}

	@Override
	public int[] saveProductImages(Connection connection,Product product) throws Exception {

		String insertProductImage = "insert into product_image_table(product_id,product_image) values (?,?)";
		List<InputStream> inslist = new ArrayList<InputStream>();
		if(product.getProductImage1Stream()!=null) {
			inslist.add(product.getProductImage1Stream());
		}
		if(product.getProductImage2Stream()!=null) {
			inslist.add(product.getProductImage2Stream());
		}
		if(product.getProductImage3Stream()!=null) {
			inslist.add(product.getProductImage3Stream());
		}
		
		if(inslist.size()>0) {
			
			try(PreparedStatement preparedStatement = connection.prepareStatement(insertProductImage)){
				
				for(InputStream inputStream : inslist) {
					preparedStatement.setInt(1, product.getProductId());
					preparedStatement.setBlob(2, inputStream);
					preparedStatement.addBatch();
				}
				return preparedStatement.executeBatch();
			}
			
		}
		
		return null;
	}

	@Override
	public List<Product> selectProductDetails(Connection connection) throws Exception {
		List<Product> productList = new ArrayList<Product>();
	
		// select * from subcategory_table inner join category_table on category_table.category_id = subcategory_table.category_id 
		String displayQuery  = "select * from product_table  inner join subcategory_table on product_table.subcategory_id = subcategory_table.subcategory_id inner join category_table on subcategory_table.category_id = category_table.category_id where product_status!=-1";
		System.out.println("inside dao layer..");
		System.out.println("select product function");
		try(PreparedStatement pstat = connection.prepareStatement(displayQuery)){
			
			ResultSet rs = pstat.executeQuery();
			//int cnt=0;
			while(rs.next()) {
				
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				product.setSubCategoryId(rs.getInt(9));
				//product.setSubCategoryId(rs.getInt(10));
				product.setSubCategoryName(rs.getString(11));
				product.setCategoryId(rs.getInt(14));
				product.setCategoryName(rs.getString(15));
				productList.add(product);
				//System.out.println(product);
				
				
			}
			rs.close();
			return productList;
		}
	
	}

	@Override
	public int deleteProductDetail(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		
		String deleteQuery  = "update product_table set product_status=? where product_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery)){
			pstat.setInt(1, -1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public void selectProductImage(Connection connection,Product obj) throws Exception {
		// TODO Auto-generated method stub
		
		String query  = " select * from product_image_table where product_id=?";
		
		try(PreparedStatement pstat = connection.prepareStatement(query)){
			
			pstat.setInt(1, obj.getProductId());
			ResultSet rs = pstat.executeQuery();
			while(rs.next()) {
				
				byte [] imageData =  rs.getBytes(3);
				if(imageData!=null && imageData.length>0) {
					String imageString = Base64.getEncoder().encodeToString(imageData);
					if(obj.getProductImage1String()==null) {
						
						obj.setProductImage1String(imageString);
					}
					else if(obj.getProductImage2String()==null) {
						
						obj.setProductImage2String(imageString);
					}
					else
					{
						obj.setProductImage3String(imageString);
					}
					
				}
			}
			rs.close();
		}
	}

	@Override
	public Product selectParticularProductDetail(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		//String updateQuery  = "select * from product_table where product_id=?";
		String updateQuery = "select * from product_table  inner join subcategory_table on product_table.subcategory_id = subcategory_table.subcategory_id inner join category_table on subcategory_table.category_id = category_table.category_id where product_id=?";
		Product product = new Product();
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			System.out.println("Inside Dao Layer..");
			pstat.setInt(1, id);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				product.setSubCategoryId(rs.getInt(9));
				//product.setSubCategoryId(rs.getInt(10));
				product.setSubCategoryName(rs.getString(11));
				product.setCategoryId(rs.getInt(14));
				product.setCategoryName(rs.getString(15));
			}
			rs.close();
			return product;
			
		}
		
		
	}

	@Override
	public void selectParticularProductImage(Connection connection,Product obj) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_image_table where product_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query)){
			
			pstat.setInt(1, obj.getProductId());
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				byte [] imageData =  rs.getBytes(3);
				if(imageData!=null && imageData.length>0) {
					String imageString = Base64.getEncoder().encodeToString(imageData);
					if(obj.getProductImage1String()==null) {
						
						System.out.println("Product Image Id : "+rs.getInt("product_image_id"));
						obj.setPimage1(rs.getInt("product_image_id"));
						obj.setProductImage1String(imageString);
						
					}
					else if(obj.getProductImage2String()==null) {
						System.out.println("Product Image Id : "+rs.getInt("product_image_id"));
						obj.setPimage2(rs.getInt("product_image_id"));
						obj.setProductImage2String(imageString);
					}
					else
					{
						System.out.println("Product Image Id : "+rs.getInt("product_image_id"));
						obj.setPimage3(rs.getInt("product_image_id"));
						obj.setProductImage3String(imageString);
					}
					
				}
			}
			rs.close();
		}
		
	}

	@Override
	public int updateproductDetails(Connection connection, Product product) throws Exception {
		// TODO Auto-generated method stub
		String updateQuery = "update product_table set product_name=?,product_price=?, product_mrp=?, product_discount=?, product_status=?, product_stock=?, product_description=?, subcategory_id=? where product_id = ? ";
		try(PreparedStatement pstat = connection.prepareStatement(updateQuery))
		{
			pstat.setString(1, product.getProductName());
			pstat.setInt(2, product.getProductPrice());
			pstat.setInt(3, product.getProductMRP());
			pstat.setInt(4, product.getProductDiscount());
			pstat.setInt(5, product.getProductStatus());
			pstat.setInt(6, product.getProductStock());
			pstat.setString(7, product.getProductDiscription());
			pstat.setInt(8, product.getSubCategoryId());
			pstat.setInt(9, product.getProductId());
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int[] updateProductImage(Connection connection, Product product) throws Exception {
		// TODO Auto-generated method stub
		Map< Integer, InputStream> inputStreamMap = new HashMap<Integer, InputStream>();
		String insertProductImage = "update product_image_table set product_image=COALESCE(?,product_image) where product_image_id=?";
		List<InputStream> inslist = new ArrayList<InputStream>();
		if(product.getProductImage1Stream()!=null) {
			inputStreamMap.put(product.getPimage1(), product.getProductImage1Stream());
		}
		if(product.getProductImage2Stream()!=null) {
			inslist.add(product.getProductImage2Stream());
			inputStreamMap.put(product.getPimage2(), product.getProductImage2Stream());
		}
		if(product.getProductImage3Stream()!=null) {
			inslist.add(product.getProductImage3Stream());
			inputStreamMap.put(product.getPimage3(), product.getProductImage3Stream());
		}
		
		if(inslist.size()>0) {
			
			try(PreparedStatement preparedStatement = connection.prepareStatement(insertProductImage)){
				
				
				for(Map.Entry<Integer, InputStream> entry : inputStreamMap.entrySet()){
					
					preparedStatement.setInt(2,entry.getKey());
					preparedStatement.setBlob(1, entry.getValue());
					preparedStatement.addBatch();
				}
				return preparedStatement.executeBatch();
			}
			
		}
		
		return null;

	}

	@Override
	public List<Product> selectSubcategoryProduct(Connection connection, int subcategoryId) throws Exception {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		
		// select * from subcategory_table inner join category_table on category_table.category_id = subcategory_table.category_id 
		String displayQuery  = "select * from product_table  inner join subcategory_table on product_table.subcategory_id = subcategory_table.subcategory_id inner join category_table on subcategory_table.category_id = category_table.category_id where product_status!=-1 and product_table.subcategory_id=?";
		System.out.println("inside dao layer..");
		try(PreparedStatement pstat = connection.prepareStatement(displayQuery)){
			pstat.setInt(1, subcategoryId);
			ResultSet rs = pstat.executeQuery();
			//int cnt=0;
			while(rs.next()) {
				
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				product.setSubCategoryId(rs.getInt(9));
				//product.setSubCategoryId(rs.getInt(10));
				product.setSubCategoryName(rs.getString(11));
				product.setCategoryId(rs.getInt(14));
				product.setCategoryName(rs.getString(15));
				productList.add(product);
				//System.out.println(product);
				
				
			}
			rs.close();
			return productList;
		}
	

		
		
	}

	@Override
	public int selectProductName(Connection connection, String str) throws Exception {
		// TODO Auto-generated method stub
		String query = "select product_id from product_table where product_name=? and product_status!=?";
		int productId = 0;
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			
			pstat.setString(1, str);
			pstat.setInt(2, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				productId = rs.getInt(1);
			}
			rs.close();
			return productId;
		}
		
		
	}

	@Override
	public List<Product> selectLowToHighPriceProduct(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_status!=? order by product_price asc ";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
		
	}

	@Override
	public List<Product> selectHighToLowPriceProduct(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_status!=-1 order by product_price desc ";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectAToZProductDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_status!=-1 order by product_name asc ";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectZToAProductDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table  where product_status!=-1 order by product_name desc";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectNewArrivalProduct(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_status!=? order by product_id desc limit 6 ";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectRandomProductDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_status!=? order by rand()";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectProductPriceBetween10To50(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_price between 10 and 50 and product_status!=? order by product_price asc";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public List<Product> selectProductPriceBetween50To100(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from product_table where product_price between 51 and 100 and product_status!=? order by product_price asc";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setInt(1, -1);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				productList.add(product);
			}
			rs.close();
			return productList;
		}
	}

	@Override
	public int updateProductQuantity(Connection connection, int pid, int productQuantity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product> selectAllProductDetails(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		List<Product> allProductList = new ArrayList<Product>();
		String displayQuery  = "select * from product_table  inner join subcategory_table on product_table.subcategory_id = subcategory_table.subcategory_id inner join category_table on subcategory_table.category_id = category_table.category_id";
		
		try(PreparedStatement pstat = connection.prepareStatement(displayQuery)){
			
			ResultSet rs = pstat.executeQuery();
			
			while(rs.next()) {
				
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setProductPrice(rs.getInt(3));
				product.setProductMRP(rs.getInt(4));
				product.setProductDiscount(rs.getInt(5));
				product.setProductStatus(rs.getInt(6));
				product.setProductStock(rs.getInt(7));
				product.setProductDiscription(rs.getString(8));
				product.setSubCategoryId(rs.getInt(9));
				
				product.setSubCategoryName(rs.getString(11));
				product.setCategoryId(rs.getInt(14));
				product.setCategoryName(rs.getString(15));
				allProductList.add(product);
				
				
				
			}
			rs.close();
			return allProductList;
		}
		
	}

	@Override
	public int unBlockingProduct(Connection connection, int id) throws Exception {
		// TODO Auto-generated method stub
		String deleteQuery  = "update product_table set product_status=? where product_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(deleteQuery)){
			pstat.setInt(1, 1);
			pstat.setInt(2, id);
			return pstat.executeUpdate();
		}
		
	}

}
