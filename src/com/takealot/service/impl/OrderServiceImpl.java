package com.takealot.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.takealot.bean.Order;
import com.takealot.dao.OrderDao;
import com.takealot.dao.impl.OrderDaoImpl;
import com.takealot.service.OrderService;

public class OrderServiceImpl implements OrderService {
	
	OrderDao orderDao = new OrderDaoImpl();
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
	public String addOrderDetail(Order obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.insertOrderDetail(connection,obj);
			int j = orderDao.insertInOrderDetailTable(connection,obj);
			if(i>0 && j>0)
			{
				return "Order detail insert successfully...";
			}
			else
			{
				return "Order detail Not insert successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String addMoreOrderDetail(Order obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.insertMoreOrderDetail(connection,obj);
			if(i>0)
			{
				return "More Order detail insert successfully...";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String addcartOrderDetail(Order obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.insertOrderDetail(connection,obj);
			int arr[] = orderDao.insertCartDetailInOrderDetailTable(connection,obj);
			if(i>0 && arr.length>0)
			{
				return "Cart Order detail Inserted...";
			}
			else
			{
				return "Cart order detail not inserted...";
			}
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Order> fetchOrderDetail() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return orderDao.selectOrderDetail(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Order> fetchOrderDetailFromOrderDetailTable() {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return orderDao.selectOrderDeatailFromOrderDetailTable(connection);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String changeOrderStatus(String orderId, String status) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.updateOrderStatus(connection,orderId,status);
			if(i>0)
			{
				return "Order Status Updated Successfull...";
			}
			else
			{
				return "Order Status Not Updated Successfull...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String addCodOrderDetail(Order obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.insertCodOrderDetail(connection,obj);
			int j = orderDao.insertInOrderDetailTable(connection,obj);
			if(i>0 && j>0)
			{
				return "Order detail insert successfully...";
			}
			else
			{
				return "Order detail Not insert successfully...";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public String addCodCartOrderDetail(Order obj) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			int i = orderDao.insertCodOrderDetail(connection,obj);
			int arr[] = orderDao.insertCartDetailInOrderDetailTable(connection,obj);
			if(i>0 && arr.length>0)
			{
				return "Cart Order detail Inserted...";
			}
			else
			{
				return "Cart order detail not inserted...";
			}
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Order> fetchReportOrderDetail(String startDate, String endDate) {
		// TODO Auto-generated method stub
		try(Connection connection = getConnection())
		{
			return orderDao.selectReportOrderDetail(connection,startDate,endDate);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
