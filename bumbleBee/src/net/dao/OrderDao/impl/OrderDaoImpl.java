package net.dao.OrderDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.dao.OrderDao.OrderDao;
import net.utils.JDBCUtils;

public class OrderDaoImpl implements OrderDao{

	@Override
	public String generateOrderId() {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT orderId from `order` order by orderId DESC LIMIT 1")) {
			System.out.println(preparedStatement);
			ResultSet rst = preparedStatement.executeQuery();
			if(rst.next()) {
				int temp = Integer.parseInt(rst.getString(1).split("-")[1]);
				temp = temp+1;
				if(temp<=9) {
					return "O-00"+temp;
				}else if(temp<=99) {
					return "O-0"+temp;
				}else {
					return "O-"+temp;
				}
			}else {
				return "O-001";
			}
			// Step 3: Execute the query or update query
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return null;
	}

}
