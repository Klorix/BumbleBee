package net.dao.OrderDao;

import java.util.List;

import net.model.Order;

public interface OrderDao {
	public String generateOrderId();
	public boolean placeOrder(Order order);
	public int countOrders();
	public double totalIncome();
	public List<Order>getOrders();
}
