package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService
{
	@Autowired
	private SellerRepository sellerRepository;

	@Override
	public Seller addseller(Seller seller) {
		return sellerRepository.save(seller);
	}

	@Override
	public Seller checksellerlogin(String gmail, String pwd) {
		if(sellerRepository.checksellerlogin1(gmail, pwd)!=null&&sellerRepository.checksellerlogin2(gmail)!=null) {
			return sellerRepository.checksellerlogin1(gmail, pwd);
		}
		else
			return null;
	}

	@Override
	public Seller getsellerbyid(int id) {
		return sellerRepository.findById(id).get();
	}

	@Override
	public List<Seller> validatesellerlist() {
		return sellerRepository.validatesellerlist();
	}

}
