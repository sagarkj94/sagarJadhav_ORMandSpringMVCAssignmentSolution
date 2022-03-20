package com.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crm.model.Customer;

@Service
public interface CustomerService {
	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer theCustomer);

	public void deleteById(int theId);

	public List<Customer> searchBy(String name, String department);

}
