package com.takealot.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.takealot.bean.Order;
import com.takealot.dao.OrderDao;

public class OrderDaoImpl implements OrderDao {

	@Override
	public int insertOrderDetail(Connection connection, Order obj) throws Exception {
		// TODO Auto-generated method stub
//		String insertQuery = "insert into order_master_table(order_master_id,order_status,order_amount,product_id,user_id,order_address,payment_mode,payment_status,phoneno,product_quantity) values(?,?,?,?,?,?,?,?,?,?)";
		String insertQuery = "insert into order_table(order_id,user_id,order_status,order_quantity,order_address,payment_mode,phoneno,payment_status) values(?,?,?,?,?,?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
//			pstat.setString(1, obj.getOrderId());
//			pstat.setString(2, obj.getOrderStatus());
//			pstat.setInt(3, obj.getOrderAmount());
//			pstat.setInt(4, obj.getProductId());
//			pstat.setInt(5, obj.getUserId());
//			pstat.setString(6, obj.getAddress());
//			pstat.setString(7, obj.getPaymentMode());
//			pstat.setString(8, obj.getPaymentStatus());
//			pstat.setString(9, obj.getPhoneNo());
//			pstat.setInt(10, obj.getProductQuantity());
			
			pstat.setString(1, obj.getOrderId());
			pstat.setInt(2, obj.getUserId());
			pstat.setString(3, obj.getOrderStatus());
			pstat.setInt(4, obj.getOrderQuantity());
			pstat.setString(5, obj.getAddress());
			pstat.setString(6, obj.getPaymentMode());
			pstat.setString(7, obj.getPhoneNo());
			pstat.setString(8, obj.getPaymentStatus());
			
			
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int insertMoreOrderDetail(Connection connection, Order obj) throws Exception {
		// TODO Auto-generated method stub
		String query = "update order_table set order_date=?, order_amount=?, payment_status=? where order_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, obj.getOrderDate());
			pstat.setNString(2, obj.getOrderAmount());
			pstat.setString(3, obj.getPaymentStatus());
			pstat.setString(4, obj.getOrderId());
			return pstat.executeUpdate();
		}

	}

	@Override
	public int insertInOrderDetailTable(Connection connection, Order obj) throws Exception {
		// TODO Auto-generated method stub
		String query = "insert into order_detail_table(order_id,product_id,product_price,product_quantity,total_amount) values(?,?,?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, obj.getOrderId());
			pstat.setInt(2, obj.getProductId());
			pstat.setInt(3, obj.getProductAmount());
			pstat.setInt(4,obj.getProductQuantity());
			pstat.setInt(5, obj.getTotalAmount());
			return pstat.executeUpdate();
		}
		
		
	}

	@Override
	public int[] insertCartDetailInOrderDetailTable(Connection connection, Order obj) throws Exception {
		// TODO Auto-generated method stub
		String query = "insert into order_detail_table(order_id,product_id,product_price,product_quantity,total_amount) values(?,?,?,?,?)";
		String productId[] = obj.getProductIds().split(" ");
		String productAmount[] = obj.getProductPrices().split(" ");
		String productQuantity[] = obj.getProductQuantitys().split(" ");
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			for(int i=0;i<productId.length;i++)
			{
				int productid = Integer.parseInt(productId[i]);
				int productamount = Integer.parseInt(productAmount[i]);
				int productquantity = Integer.parseInt(productQuantity[i]);
				int totalamount = productamount * productquantity;
				pstat.setString(1, obj.getOrderId());
				pstat.setInt(2, productid);
				pstat.setInt(3, productamount);
				pstat.setInt(4, productquantity);
				pstat.setInt(5, totalamount);
				pstat.addBatch();
			}
			return pstat.executeBatch();
			
		}
		
	}

	@Override
	public List<Order> selectOrderDetail(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from order_table where order_status!=?";
		List<Order> orderList = new ArrayList<Order>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, "Delivered");
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Order obj = new Order();
				obj.setOrderId(rs.getString(1));
				obj.setOrderDate(rs.getString(2));
				obj.setUserId(rs.getInt(3));
				obj.setOrderAmount(rs.getString(4));
				obj.setOrderStatus(rs.getString(5));
				obj.setOrderQuantity(rs.getInt(6));
				obj.setAddress(rs.getString(7));
				obj.setPaymentMode(rs.getString(8));
				obj.setPhoneNo(rs.getString(9));
				obj.setPaymentStatus(rs.getString(10));
				orderList.add(obj);
			}
			rs.close();
			return orderList;
			
		}
	
		
	}

	@Override
	public List<Order> selectOrderDeatailFromOrderDetailTable(Connection connection) throws Exception {
		// TODO Auto-generated method stub
		String query = "select * from order_detail_table";
		List<Order> orderDetailList = new ArrayList<Order>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Order obj = new Order();
				obj.setOrderDetailId(rs.getInt(1));
				obj.setOrderId(rs.getString(2));
				obj.setProductId(rs.getInt(3));
				obj.setProductPrice(rs.getInt(4));
				obj.setProductQuantity(rs.getInt(5));
				obj.setTotalAmount(rs.getInt(6));
				orderDetailList.add(obj);
				
			}
			rs.close();
			return orderDetailList;
			
			
		}
		
	}

	@Override
	public int updateOrderStatus(Connection connection, String orderId, String status) throws Exception {
		// TODO Auto-generated method stub
		String query = "update order_table set order_status=? where order_id=?";
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, status);
			pstat.setString(2, orderId);
			return pstat.executeUpdate();
		}
		
	}

	@Override
	public int insertCodOrderDetail(Connection connection, Order obj) throws Exception {
		// TODO Auto-generated method stub
		String insertQuery = "insert into order_table(order_id,order_date,user_id,order_amount,order_status,order_quantity,order_address,payment_mode,phoneno,payment_status) values(?,?,?,?,?,?,?,?,?,?)";
		try(PreparedStatement pstat = connection.prepareStatement(insertQuery))
		{
			pstat.setString(1, obj.getOrderId());
			pstat.setString(2, obj.getOrderDate());
			pstat.setInt(3, obj.getUserId());
			pstat.setString(4, obj.getOrderAmount());
			pstat.setString(5, obj.getOrderStatus());
			pstat.setInt(6, obj.getOrderQuantity());
			pstat.setString(7, obj.getAddress());
			pstat.setString(8, obj.getPaymentMode());
			pstat.setString(9, obj.getPhoneNo());
			pstat.setString(10, obj.getPaymentStatus());
			
			return pstat.executeUpdate();
			
		}
		
	}

	@Override
	public List<Order> selectReportOrderDetail(Connection connection, String startDate, String endDate)throws Exception {
		// TODO Auto-generated method stub
		String query = "select order_date,order_amount,user_id from order_table where order_date between ? and ? ";
		List<Order> orderList = new ArrayList<Order>();
		try(PreparedStatement pstat = connection.prepareStatement(query))
		{
			pstat.setString(1, startDate);
			pstat.setString(2, endDate);
			ResultSet rs = pstat.executeQuery();
			while(rs.next())
			{
				Order obj = new Order();
				obj.setOrderDate(rs.getString(1));
				obj.setOrderAmount(rs.getString(2));
				obj.setUserId(rs.getInt(3));
				orderList.add(obj);
			}
			rs.close();
			return orderList;
		}
		
	}

}
