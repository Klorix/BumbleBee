package net.dao.customerDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.dao.customerDao.CustomerDao;
import net.model.Customer;
import net.model.Item;
import net.utils.JDBCUtils;

public class CustomerDAOImpl implements CustomerDao{

	@Override
	public boolean saveCustomer(Customer c) throws ClassNotFoundException {
			String INSERT_USERS_SQL = "INSERT INTO Customer"
					+ "  (customerId,customerName,customerDOB,customerContactNumber,customerUserName,password,customerAddress) VALUES "
					+ " (?,?,?,?,?,?,?);";
			try (Connection connection = JDBCUtils.getConnection();
					// Step 2:Create a statement using connection object
					PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
				preparedStatement.setString(1, c.getSignUpId());
				preparedStatement.setString(2, c.getSignUpName());
				preparedStatement.setString(3, c.getSignUpDob());
				preparedStatement.setString(4, c.getSignUpContactNo());
				preparedStatement.setString(5, c.getSignUpUserName());
				preparedStatement.setString(6, c.getSignUpPassword());
				preparedStatement.setString(7, c.getSignUpAddress());
				

				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				if( preparedStatement.executeUpdate()>0)return true;
			} catch (SQLException e) {
				// process sql exception
				JDBCUtils.printSQLException(e);
			}
			return false;
	}

	@Override
	public boolean updateCustomer(Customer c) throws ClassNotFoundException {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("UPDATE Customer SET customerName=?,customerDOB=?,customerContactNumber=?,customerUserName=?,password=?,customerAddress=? WHERE customerId=?")) {
			preparedStatement.setString(1, c.getSignUpName());
			preparedStatement.setString(2, c.getSignUpDob());
			preparedStatement.setString(3, c.getSignUpContactNo());
			preparedStatement.setString(4, c.getSignUpUserName());
			preparedStatement.setString(5, c.getSignUpPassword());
			preparedStatement.setString(6, c.getSignUpAddress());
			preparedStatement.setString(7, c.getSignUpId());		

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			if( preparedStatement.executeUpdate()>0)return true;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}

	@Override
	public boolean deleteCustomer(String id) throws ClassNotFoundException {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("DELETE Customer WHERE customerId=?")) {
			preparedStatement.setString(1, id);
			
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			if( preparedStatement.executeUpdate()>0)return true;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}

	@Override
	public List<Customer> getAllCustomers() {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Customer")) {
			ResultSet rst = preparedStatement.executeQuery();
			List<Customer>customers = new ArrayList<>();
			while(rst.next()) {
				customers.add(new Customer(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getString(6),rst.getString(7)));
			}
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			return customers;
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return null;
	}

	@Override
	public Customer searchCustomer(String userName) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Customer WHERE customerUserName=?")) {
			preparedStatement.setString(1, userName);
			ResultSet rst = preparedStatement.executeQuery();
			if(rst.next()) {
				return new Customer(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getString(6),rst.getString(7));
			}
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return null;
	}

}
