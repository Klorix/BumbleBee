<%@page import="net.model.Customer"%>
<%@page import="net.dao.customerDao.impl.CustomerDAOImpl"%>
<%@page import="net.dao.customerDao.CustomerDao"%>
<%@page import="net.dao.*"%>
<%@page language="java" import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			crossorigin="anonymous">
			
			<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
			
			<style>
				body {
				    overflow: hidden !important;
				}
							
				body>main>section {
				    width: 100%;
				    height: 92.5vh;
				    background-color: rgb(233, 233, 233) !important;
				}
		</style>
	</head>
	<body>
		<jsp:include page="../common/customerHeader.jsp"></jsp:include>
		<section id="homeSection" class="Home container-fluid position-relative" style="width: 100%;height: 95vh;top:0;">
	        <div class="container-fluid position-absolute shadow" style="left:0;right:0;top:0;bottom:0;margin:auto;height:90%">
	            <div class="row h-50 position-relative start-0 end-0 m-auto" style="width: 95%;top: 20px;">
	                <form class="col-md-3 bg-light shadow col-12">
	                    <div class="row position-relative" style="height: 40px; background-color: rgb(133, 135, 138);">
	                        <h3 class="fs-6 text-white top-0 bottom-0 m-auto" style="text-align: center;">Customer
	                            Details</h3>
	                    </div>
	                    <% CustomerDao customerDao=new CustomerDAOImpl();
		                   Customer c = customerDao.searchCustomer(String.valueOf(request.getAttribute("loggedUser")));
		                   System.out.println(c);%>
	
	                    <div class="form-floating position-relative" style="top: 20px;">
	                        <input type="text" class="form-control bg-transparent" id="customerIdHome" name="customerIdHome" placeholder="Id"
	                               style="height: 40px;" value=<%=c!=null?c.getSignUpId():""%>>
	                        <label for="customerIdHome" style="width: 100%;"><span id="customerIdHomeLbl">Id</span></label>
	                    </div>
	                    <div class="form-floating position-relative" style="top: 30px;">
	                        <input type="text" class="form-control bg-transparent" id="customerNameHome" name="customerNameHome" placeholder="Name"
	                               style="height: 40px;" value=<%=c!=null?c.getSignUpName():""%>>
	                        <label for="customerNameHome"><span>Name</span></label>
	                    </div>
	                    <div class="form-floating position-relative" style="top: 40px;">
	                        <input type="text" class="form-control bg-transparent" id="customerAddressHome"
	                               placeholder="Address" style="height: 40px;" name="customerAddressHome" value=<%=c!=null?c.getSignUpAddress():""%>>
	                        <label for="customerAddressHome"><span>Address</span></label>
	                    </div>
	                    <div class="form-floating position-relative" style="top: 50px;">
	                        <input type="tel" class="form-control bg-transparent" id="customerTelHome" placeholder="Tel"
	                               style="height: 40px; name="customerTelHome" <%=c!=null?c.getSignUpContactNo():""%>>
	                        <label for="customerTelHome"><span>Tel</span></label>
	                    </div>
	                </form>
	                <div class="col-sm-12 bg-light mx-4 shadow col-12 col-md-5">
	                    <div class="row position-relative" style="height: 40px; background-color: rgb(133, 135, 138);">
	                        <h3 class="fs-6 text-white top-0 bottom-0 m-auto" style="text-align: center;">Item Details</h3>
	                    </div>
	
	                    <div class="row" style="height: 86%;">
	                        <div class="col border">
	                            <div class="form-floating position-relative" style="top: 5px;">
	                                <select class="form-select bg-transparent" id="itemCategoryHome" name="itemCategoryHome"
	                                        aria-label="Floating label select example" style="height: 40px; width: 100%;">
	
	                                </select>
	                                <label for="itemCategoryHome">Category</label>
	                            </div>
	                            <div class="form-floating position-relative" style="top: 10px;">
	                                <select class="form-select bg-transparent" id="itemBrandHome" name="itemBrandHome"
	                                        aria-label="Floating label select example" style="height: 40px; width: 100%;">
	
	                                </select>
	                                <label for="itemBrandHome">Brand</label>
	                            </div>
	                            <div class="form-floating position-relative" style="top: 15px;">
	                                <select class="form-select bg-transparent" id="itemProductHome" name="itemProductHome"
	                                        aria-label="Floating label select example" style="height: 40px; width: 100%;">
	
	                                </select>
	                                <label for="itemCodeHome">Product</label>
	                            </div>
	                            <div class="form-floating position-relative" style="top: 20px;">
	                                <input type="text" class="form-control bg-transparent" id="itemDescriptionHome" name="itemDescriptionHome"
	                                       placeholder="Name" style="height: 40px;width: 100%;">
	                                <label for="itemDescriptionHome"><span>Description</span></label>
	                            </div>
	                        </div>
	                        <div class="col border position-relative">
	                        	<div class="form-floating position-relative" style="top: 5px;">
	                                <input type="text" class="form-control bg-transparent" id="itemQtyHome" name="itemQtyHome"
	                                       placeholder="Address" style="height: 40px;width: 100%;">
	                                <label for="itemQtyHome"><span>Qty</span></label>
	                            </div>
	                            <div class="form-floating position-relative" style="top: 10px;">
	                                <input type="tel" class="form-control  bg-transparent" id="itemUnitPriceHome" name="itemUnitPriceHome"
	                                       placeholder="Unit Price" style="height: 40px;width: 100%;">
	                                <label for="itemUnitPriceHome"><span>Unit Price</span></label>
	                            </div>
	                            <div class="form-floating position-relative" style="top: 15px;">
	                                <input type="tel" class="form-control  bg-transparent" id="itemQtyOnHandHome" name="itemQtyOnHandHome"
	                                       placeholder="Qty On Hand" style="height: 40px;width: 100%;">
	                                <label for="itemQtyOnHandHome" style="width: 100%;"><span
	                                        id="qtyOnHandLbl">Qty On Hand</span></label>
	                            </div>
	
	                            <div class="container-fluid position-relative"
	                                 style="left: 0;right: 0;margin: auto;width: 100%;top: 20px;height:18%">
	                                <button class="btn btn-outline-success btn-md position-absolute start-0"
	                                        style="width: 45%;height:80%;" id="addToCartBtn">Add To Cart
	                                </button>
	                                <button id="clearCartBtn"
	                                        class="btn btn-outline-danger btn-md position-absolute"
	                                        style="width: 45%;height:80%;right:0">Clear Cart
	                                </button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="col-sm-12 col-md bg-light shadow position-relative col-12">
	                    <div class="form position-relative" style="top: 5%;">
	                        <input type="text" class="form-control bg-transparent" id="orderIdHome" placeholder="Order Id">
	                    </div>
	
	
	                    <div class="row position-relative" style="top: 10%">
	
	                        <div class="col">
	                            <div class="form-floating position-relative">
	                                <input type="tel" class="form-control  bg-transparent" id="orderCashReceived"
	                                       placeholder="Cash" style="height: 40px;">
	                                <label for="orderCashReceived"><span>Cash</span></label>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="row position-relative" style="top: 15%;">
	                        <div class="col">
	                            <div class="form-floating position-relative">
	                                <input type="tel" class="form-control  bg-transparent" id="orderCashBalance"
	                                       placeholder="Balance" style="height: 40px;">
	                                <label for="orderCashBalance"><span>Balance</span></label>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="row position-relative" style="top: 15%;">
	                        <div class="col-6 position-relative">
	                            <h6 class="position-relative" style="top: 8px;">Sub Total - </h6>
	                        </div>
	                        <div class="col">
	                            <div class="form position-relative">
	                                <input type="tel" class="form-control  bg-transparent" id="orderSubTotal"
	                                       style="height: 34px;">
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="row position-relative" style="top: 20%;">
	                        <div class="col-6 position-relative">
	                            <h6 class="position-relative" style="top: 8px;">Total - </h6>
	                        </div>
	                        <div class="col">
	                            <div class="form position-relative">
	                                <input type="tel" class="form-control  bg-transparent" id="orderTotal"
	                                       style="height: 34px;">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	
	
	            <div class="row position-relative start-0 end-0 m-auto" style="width: 95%;top: 40px; height: 30%;">
	                <div class="col bg-light position-relative" style="height: 100%;overflow: auto;">
	                    <table class="table table-hover" id="addToCartTable">
	                        <thead>
	                        <tr>
	                            <th scope="col">#</th>
	                            <th scope="col">Customer Id</th>
	                            <th scope="col">Item Code</th>
	                            <th scope="col">Item Description</th>
	                            <th scope="col">Item Qty</th>
	                            <th scope="col">Item Price</th>
	                            <th scope="col">Item Brand</th>
	                            <th scope="col">Total</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	
	            <div class="row position-absolute w-25" style="bottom:3%;left:0;right:0;margin:auto">
	                <div class="col col-sm">
	                    <button id="purchaseBtn" class="btn btn-outline-success w-100">Purchase</button>
	                </div>
	                <div class="col col-sm">
	                    <button id="discardBtn" class="btn btn-outline-danger w-100">Discard</button>
	                </div>
	            </div>
	        </div>
	
	    </section>
	</body>
</html>
