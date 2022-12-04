package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService
{
	
	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public List<Cart> customercart(int id) {
		return cartRepository.customercart(id);
	}

	@Override
	public Cart addCart(Cart cart) {
		return cartRepository.save(cart);
	}

	@Override
	public void delete(int id) {
		cartRepository.deleteById(id);
	}
	
}
