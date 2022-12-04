package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private SellerRepository sellerRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public Admin checkadminlogin(String gmail, String pwd) {
		return adminRepository.checkadminlogin(gmail, pwd);
	}

	@Override
	public List<Seller> viewallsellers() {
		return (List<Seller>) sellerRepository.findAll();
	}

	@Override
	public void deleteseller(int id) {
		sellerRepository.deleteById(id);
	}

	@Override
	public List<Customer> viewallcustomers() {
		return (List<Customer>) customerRepository.findAll();
	}

	@Override
	public void deletecustomer(int id) {
		customerRepository.deleteById(id);
	}

	@Override
	public int approveseller(int id) {
		return sellerRepository.approveseller(id);
	}

	@Override
	public int rejectseller(int id) {
		return sellerRepository.rejectseller(id);
	}

	@Override
	public Admin changeadminpwd(String uname,String pwd) {
		Admin a=adminRepository.findById(uname).get();
		a.setPassword(pwd);
		return adminRepository.save(a);
	}
	
}
