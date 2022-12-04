package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Order;

public interface OrderService 
{
	public Order addOrder(Order order);
	public void deleteOrder(int id);
	public List<Order> viewCustomerOrders(int cid);
	public List<Order> viewSellerOrders(int sid);
	public List<Order> viewAllOrders();
	public Order changeStatus(int id,String status);
	public Order viewOrder(int id);
}
