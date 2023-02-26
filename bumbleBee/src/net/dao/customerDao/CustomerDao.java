package net.dao.customerDao;

import net.model.Customer;

public interface CustomerDao {

	public boolean saveCustmoer(Customer c) throws ClassNotFoundException;
	public boolean updateCustmoer(Customer c) throws ClassNotFoundException;
	public boolean deleteCustmoer(String id) throws ClassNotFoundException;

}
