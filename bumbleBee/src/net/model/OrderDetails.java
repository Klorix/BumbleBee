package net.model;

public class OrderDetails {
	private String productId;
    private String orderId;
    private int orderQty;
    private double totalPrice;
    
    public OrderDetails() {
    }
    
    public OrderDetails(String productId, String orderId, int orderQty, double totalPrice) {
        this.setProductId(productId);
        this.setOrderId(orderId);
        this.setOrderQty(orderQty);
        this.setTotalPrice(totalPrice);
    }

	private String getProductId() {
		return productId;
	}

	private void setProductId(String productId) {
		this.productId = productId;
	}

	private String getOrderId() {
		return orderId;
	}

	private void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	private int getOrderQty() {
		return orderQty;
	}

	private void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}

	private double getTotalPrice() {
		return totalPrice;
	}

	private void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderDetails [productId=" + productId + ", orderId=" + orderId + ", orderQty=" + orderQty
				+ ", totalPrice=" + totalPrice + "]";
	}
    
    
}
