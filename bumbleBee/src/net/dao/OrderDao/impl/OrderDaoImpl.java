package net.dao.OrderDao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.dao.OrderDao.OrderDao;
import net.dao.OrderDetailsDao.OrderDetailsDao;
import net.dao.OrderDetailsDao.impl.OrderDetailsDaoImpl;
import net.dao.itemDao.ItemDao;
import net.dao.itemDao.impl.ItemDaoImpl;
import net.model.Item;
import net.model.Order;
import net.model.OrderDetails;
import net.utils.JDBCUtils;

public class OrderDaoImpl implements OrderDao{
	private OrderDetailsDao OrderDetailsDao = new OrderDetailsDaoImpl();
	private ItemDao itemDao = new ItemDaoImpl();
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

	@Override
	public boolean placeOrder(Order order) {
		try {
			Connection connection = JDBCUtils.getConnection();
	        boolean exists = checkIfOrderExists(order.getOrderId());
	        if (exists) {
	            return false;
	        }
	        connection.setAutoCommit(false);
	        
	        if (!placeTheOrder(order)) {
	            connection.rollback();
	            connection.setAutoCommit(true);
	            return false;
	        }
	        for (OrderDetails od : order.getOrderDetails()
	        ) {
	            OrderDetails orderDetails = new OrderDetails(od.getProductId(), od.getOrderId(), od.getOrderQty(), od.getTotalPrice());
	            if (!OrderDetailsDao.saveOrderDetails(orderDetails)) {
						connection.rollback();
	                connection.setAutoCommit(true);
	                return false;
	            }
	            Item search = itemDao.searchItem(od.getProductId());
	            search.setQty(search.getQty() - od.getOrderQty());
	            try {
					if (!itemDao.updateItem(search)) {
					    connection.rollback();
					    connection.setAutoCommit(true);
					    return false;
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
	        }
				connection.commit();
				connection.setAutoCommit(true);
	        return true;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean placeTheOrder(Order order) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO `order` VALUES(?,?,?,?,?)")) {
			preparedStatement.setString(1,order.getOrderId());
			preparedStatement.setDate(2, new java.sql.Date(order.getOrderDate().getTime()));
			preparedStatement.setString(3,order.getCustomerId());
			preparedStatement.setDouble(4,order.getLoanAmount());
			preparedStatement.setDouble(5,order.getPaidAmount());
			System.out.println(preparedStatement);
			if(preparedStatement.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
			// Step 3: Execute the query or update query
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}
	public boolean checkIfOrderExists(String orderId) {
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT orderId from `order` WHERE orderId=?")) {
			preparedStatement.setString(1,orderId);
			System.out.println(preparedStatement);
			ResultSet rst = preparedStatement.executeQuery();
			if(rst.next()) {
				return true;
			}else {
				return false;
			}
			// Step 3: Execute the query or update query
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return false;
	}
}
