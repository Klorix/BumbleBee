package net.dao.itemDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.dao.itemDao.ItemDao;
import net.model.Item;
import net.utils.JDBCUtils;

public class ItemDaoImpl implements ItemDao{

	@Override
	public boolean saveItem(Item i) {
		String INSERT_USERS_SQL = "INSERT INTO Product"
				+ "  (productId,productName,productQty,unitPrice,productStatus) VALUES "
				+ " (?,?,?,?,?);";
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, i.getId());
			preparedStatement.setString(2, i.getName());
			preparedStatement.setInt(3, i.getQty());
			preparedStatement.setDouble(4, i.getUnitPrice());
			preparedStatement.setString(5, i.getStatus());
			
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
