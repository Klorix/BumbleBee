package net.dao.customerDao;

import net.model.Customer;

public interface CustomerDao {

	public boolean saveCustmoer(Customer c) throws ClassNotFoundException;

}
