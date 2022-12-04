package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public Customer addcustomer(Customer customer) {
		return customerRepository.save(customer);
	}

	@Override
	public Customer checkcustomerlogin(String uname, String pwd) {
		return customerRepository.checkcustomerlogin(uname, pwd);
	}

	@Override
	public Customer getcustomerbygmail(String gmail) {
		return customerRepository.getCustomerbygmail(gmail);
	}

	@Override
	public Customer updatecustomer(Customer customer) {
		return customerRepository.save(customer);
	}

}
