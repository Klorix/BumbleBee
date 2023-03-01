package net.dao.OrderDao;

import net.model.Order;

public interface OrderDao {
	public String generateOrderId();
	public boolean placeOrder(Order order);
}
