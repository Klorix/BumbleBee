package net.model;

public class Customer {
	private String signUpId;
	private String signUpName;
	private String signUpDob;
	private String signUpContactNo;
	private String signUpUserName;
	private String signUpPassword;
	private String signUpAddress;
	private String loanStatus;
	private String loanAmount;
	
	public Customer() {
	}
	
	public Customer(String signUpId,String signUpName,String signUpDob,String signUpContactNo,String signUpUserName,String signUpPassword,String signUpAddress) {
		this.signUpId = signUpId;
		this.signUpName = signUpName;
		this.signUpDob = signUpDob;
		this.signUpContactNo = signUpContactNo;
		this.signUpUserName = signUpUserName;
		this.signUpPassword = signUpPassword;
		this.signUpAddress = signUpAddress;
	}
	
	public Customer(String signUpId,String signUpName,String signUpDob,String signUpContactNo,String signUpUserName,String signUpPassword,String signUpAddress,String loanStatus,String loanAmount) {
		this.signUpId = signUpId;
		this.signUpName = signUpName;
		this.signUpDob = signUpDob;
		this.signUpContactNo = signUpContactNo;
		this.signUpUserName = signUpUserName;
		this.signUpPassword = signUpPassword;
		this.signUpAddress = signUpAddress;
		this.loanStatus = loanStatus;
		this.loanAmount = loanAmount;
	}


	public String getSignUpId() {
		return signUpId;
	}

	public void setSignUpId(String signUpId) {
		this.signUpId = signUpId;
	}

	public String getSignUpName() {
		return signUpName;
	}

	public void setSignUpName(String signUpName) {
		this.signUpName = signUpName;
	}

	public String getSignUpDob() {
		return signUpDob;
	}

	public void setSignUpDob(String signUpDob) {
		this.signUpDob = signUpDob;
	}

	public String getSignUpContactNo() {
		return signUpContactNo;
	}

	public void setSignUpContactNo(String signUpContactNo) {
		this.signUpContactNo = signUpContactNo;
	}

	public String getSignUpUserName() {
		return signUpUserName;
	}

	public void setSignUpUserName(String signUpUserName) {
		this.signUpUserName = signUpUserName;
	}

	public String getSignUpPassword() {
		return signUpPassword;
	}

	public void setSignUpPassword(String signUpPassword) {
		this.signUpPassword = signUpPassword;
	}

	public String getSignUpAddress() {
		return signUpAddress;
	}

	public void setSignUpAddress(String signUpAddress) {
		this.signUpAddress = signUpAddress;
	}

	private String getLoanStatus() {
		return loanStatus;
	}

	private void setLoanStatus(String loanStatus) {
		this.loanStatus = loanStatus;
	}

	private String getLoanAmount() {
		return loanAmount;
	}

	private void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	
}