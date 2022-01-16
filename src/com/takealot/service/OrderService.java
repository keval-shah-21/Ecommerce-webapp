package com.takealot.service;

import java.util.List;

import com.takealot.bean.Order;

public interface OrderService {

	String addOrderDetail(Order obj);

	String addMoreOrderDetail(Order obj);

	String addcartOrderDetail(Order obj);

	List<Order> fetchOrderDetail();

	List<Order> fetchOrderDetailFromOrderDetailTable();

	String changeOrderStatus(String orderId, String status);

	String addCodOrderDetail(Order obj);

	String addCodCartOrderDetail(Order obj);

	List<Order> fetchReportOrderDetail(String startDate, String endDate);

}
