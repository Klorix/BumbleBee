package net.utils;

public class PlaceOrderResponse {
	private boolean success;
	public PlaceOrderResponse(boolean success) {
		super();
		this.success = success;
	}

	public boolean success() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	@Override
	public String toString() {
		return "PlaceOrderResponse [success=" + success + "]";
	}
	
}
