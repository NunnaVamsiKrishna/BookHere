package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Seller;

public interface SellerService {
	public Seller addseller(Seller seller);
	public Seller checksellerlogin(String gmail,String pwd);
	public Seller getsellerbyid(int id);
	public List<Seller> validatesellerlist();
}
