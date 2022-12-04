package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer>
{
	@Query("select c from Cart c where customer_id=?1")
	public List<Cart> customercart(int cid);
}
