package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Order;

public interface OrderRepository extends CrudRepository<Order, Integer>
{
	@Query("select o from Order o where customerid=?1")
	public List<Order> viewCustomerOrders(int cid);
	@Query("select o from Order o where sellerid=?1")
	public List<Order> viewSellerOrders(int sid);
}
