package net.dao.customerDao;

import java.util.List;

import net.model.Customer;

public interface CustomerDao {

	public boolean saveCustomer(Customer c) throws ClassNotFoundException;
	public boolean updateCustomer(Customer c) throws ClassNotFoundException;
	public boolean deleteCustomer(String id) throws ClassNotFoundException;
	public List<Customer> getAllCustomers();
	public Customer searchCustomer(String userName);
}
