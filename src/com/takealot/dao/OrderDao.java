package com.takealot.dao;

import java.sql.Connection;
import java.util.List;

import com.takealot.bean.Order;

public interface OrderDao {

	int insertOrderDetail(Connection connection, Order obj)throws Exception;

	int insertMoreOrderDetail(Connection connection, Order obj)throws Exception;

	int insertInOrderDetailTable(Connection connection, Order obj)throws Exception;

	int[] insertCartDetailInOrderDetailTable(Connection connection, Order obj)throws Exception;

	List<Order> selectOrderDetail(Connection connection)throws Exception;

	List<Order> selectOrderDeatailFromOrderDetailTable(Connection connection)throws Exception;

	int updateOrderStatus(Connection connection, String orderId, String status)throws Exception;

	int insertCodOrderDetail(Connection connection, Order obj)throws Exception;

	List<Order> selectReportOrderDetail(Connection connection, String startDate, String endDate)throws Exception;

}
