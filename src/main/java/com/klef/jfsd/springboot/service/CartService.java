package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Cart;

public interface CartService 
{
	public Cart addCart(Cart cart); 
	public List<Cart> customercart(int id);
	public void delete(int id);
}
