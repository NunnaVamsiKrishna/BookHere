package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;

public interface AdminService {
	public Admin checkadminlogin(String gmail,String pwd);
	public Admin changeadminpwd(String uname,String pwd);
	public int approveseller(int id);
	public int rejectseller(int id);
	public List<Seller> viewallsellers();
	public void deleteseller(int id);
	public List<Customer> viewallcustomers();
	public void deletecustomer(int id);
}
