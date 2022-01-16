package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.Product;
import com.takealot.dao.ProductDao;
import com.takealot.dao.impl.ProductDaoImpl;
import com.takealot.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	ProductDao productDao = new ProductDaoImpl();
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e1)
		{
			e1.printStackTrace();
		}
		try
		{
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takealot", "root", "admin");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public String addproductDetail(Product product) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int generatedId = productDao.insertproductDetail(connection,product);
			System.out.println(generatedId);
			if(generatedId>0) {
				product.setProductId(generatedId);
				int[] prodcutImageSize = productDao.saveProductImages(connection ,product);
				System.out.println(prodcutImageSize.length);
			}
			return "Product Successfully Added...";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> fetchProductDetails() {
		// TODO Auto-generated method stub
		//System.out.println("Inside Service layer..");
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection()){
			productList =  productDao.selectProductDetails(connection);
			for(Product obj : productList) {
//				System.out.println("Inside Service Impl...");
//				System.out.println(obj.getProductName()+" "+obj.getProductId());
				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String removeProductDetail(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productDao.deleteProductDetail(connection,id);
			if(i!=0) {
				return "product Deleted...";
			}
		
				
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "Product Not Deleted...";
		
	}

	@Override
	public Product fetchParticularProductDetail(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection()){
			Product obj = new Product();
			obj = productDao.selectParticularProductDetail(connection,id);
			productDao.selectParticularProductImage(connection,obj);
			return obj;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String editProductDetails(Product product) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productDao.updateproductDetails(connection,product);
			int arr[] = productDao.updateProductImage(connection,product);
			return "Product updated...";
			/*if(i!=0)
			{
				return "product Updated...";
			}
			else
			{
				return "Product not updated...";
			}*/
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> fetchSubcategoryProduct(int subcategoryId) {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectSubcategoryProduct(connection,subcategoryId);
			for(Product obj : productList) {
				//System.out.println("Inside Service Impl...");
				//System.out.println(obj.getProductName()+" "+obj.getProductId());
				productDao.selectProductImage(connection,obj);
			}
			return productList;

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int fetchProductName(String str) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productDao.selectProductName(connection,str);
			return i;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Product> fetchLowTOHighPriceProduct() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList =  productDao.selectLowToHighPriceProduct(connection);
			for(Product obj : productList)
			{
				productDao.selectProductImage(connection, obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> fetchHighToLowPriceProduct() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList =  productDao.selectHighToLowPriceProduct(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Product> fetchAToZProductDetail() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectAToZProductDetail(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public List<Product> fetchZToAProductDetail() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectZToAProductDetail(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public List<Product> fetchNewArrivalProduct() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectNewArrivalProduct(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Product> fetchRandomProductDetail() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectRandomProductDetail(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return null;

	}

	@Override
	public List<Product> fetchProductPriceBetween10To50() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectProductPriceBetween10To50(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return null;

	}

	@Override
	public List<Product> fetchProductPriceBetween50To100() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection())
		{
			productList = productDao.selectProductPriceBetween50To100(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return null;

	}

	@Override
	public String changeProductQuantity(int pid, int productQuantity) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productDao.updateProductQuantity(connection,pid,productQuantity);
			if(i>0)
			{
				return "Product Quantity Updated...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> fetchAllproductDetail() {
		// TODO Auto-generated method stub
		List<Product> productList = new ArrayList<Product>();
		try(Connection connection = getConnection()){
			productList =  productDao.selectAllProductDetails(connection);
			for(Product obj : productList) {

				productDao.selectProductImage(connection,obj);
			}
			return productList;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String unblockProduct(int id) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = productDao.unBlockingProduct(connection,id);
			if(i>0)
			{
				return "Product unblockm Successfull....";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
