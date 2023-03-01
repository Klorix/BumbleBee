package net.model;

import java.util.ArrayList;

public class Order {
	private String orderId;
    private String orderDate;
    private String customerId;
    private double loanAmount;
    private double paidAmount;
    private ArrayList <OrderDetails> orderDetails;
    
    public Order() {
    }
    
    public Order(String orderId, String orderDate, String customerId, double loanAmount, 
    		double paidAmount){
        this.setOrderId(orderId);
        this.setOrderDate(orderDate);
        this.setCustomerId(customerId);
        this.setLoanAmount(loanAmount);
        this.setPaidAmount(paidAmount);
    }
    
    public Order(String orderId, String orderDate, String customerId, double loanAmount, 
    		double paidAmount,  ArrayList<OrderDetails> orderDetails) {
        this.setOrderId(orderId);
        this.setOrderDate(orderDate);
        this.setCustomerId(customerId);
        this.setLoanAmount(loanAmount);
        this.setPaidAmount(paidAmount);
        this.setOrderDetails(orderDetails);
    }

	private String getOrderId() {
		return orderId;
	}

	private void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	private String getOrderDate() {
		return orderDate;
	}

	private void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	private String getCustomerId() {
		return customerId;
	}

	private void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	private double getLoanAmount() {
		return loanAmount;
	}

	private void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}

	private double getPaidAmount() {
		return paidAmount;
	}

	private void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}

	private ArrayList <OrderDetails> getOrderDetails() {
		return orderDetails;
	}

	private void setOrderDetails(ArrayList <OrderDetails> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderDate=" + orderDate + ", customerId=" + customerId + ", loanAmount="
				+ loanAmount + ", paidAmount=" + paidAmount + ", orderDetails="
				+ orderDetails + "]";
	}
	
}
