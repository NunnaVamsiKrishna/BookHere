package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Order;
import com.klef.jfsd.springboot.repository.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService
{
	
	@Autowired
	public OrderRepository orderRepository;
	
	@Override
	public Order addOrder(Order order) {
		return orderRepository.save(order);
	}

	@Override
	public void deleteOrder(int id) {
		orderRepository.deleteById(id);
	}

	@Override
	public List<Order> viewCustomerOrders(int cid) {
		return orderRepository.viewCustomerOrders(cid);
	}

	@Override
	public List<Order> viewSellerOrders(int sid) {
		return orderRepository.viewSellerOrders(sid);
	}

	@Override
	public List<Order> viewAllOrders() {
		return (List<Order>)orderRepository.findAll();
	}

	@Override
	public Order changeStatus(int id,String status) {
		Order order=orderRepository.findById(id).get();
		order.setStatus(status);
		return orderRepository.save(order);
	}

	@Override
	public Order viewOrder(int id) {
		return orderRepository.findById(id).get();
	}

}
