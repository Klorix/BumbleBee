package net.dao.customerDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.dao.customerDao.CustomerDao;
import net.model.Customer;
import net.utils.JDBCUtils;

public class CustomerDAOImpl implements CustomerDao{

	@Override
	public boolean saveCustmoer(Customer c) throws ClassNotFoundException {
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

}
