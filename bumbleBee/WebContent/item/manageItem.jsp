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
		<jsp:include page="../common/adminHeader.jsp"></jsp:include>
		<section class="ManageItems container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;background-color: rgb(226, 226, 226);top:0;" id="manageItemsSection">
	        <div class="row position-relative d-flex" style="width: 100%;height:90%;">
	            <div class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 80%;height:30%;">
	                <div class="col position-relative">
	                    <div class="row position-relative" style="top: 0;">
	                        <div class="col-6 col-sm-6 col-md position-relative">
	                            <div class="form-floating position-relative">
	                                <input type="text" class="form-control bg-transparent border-3 w-100"
	                                       id="productIdInManageItems" name="productIdInManageItems" placeholder="Product ID" style="height: 40px;">
	                                <label for="productIdInManageItems" id="itemCodeLblInItems"><span>Product ID</span></label>
	                            </div>
	                        </div>
	                        <div class="col-6 col-sm-6 col-md">
	                            <div class="form-floating position-relative">
	                                <input type="text" class="form-control bg-transparent border-3 w-100"
	                                       id="productNameInManageItems" name="productNameInManageItems" placeholder="Product Name" style="height: 40px;">
	                                <label for="productNameInManageItems"
	                                       id="itemDescriptionLblInItems"><span>Product Name</span></label>
	                            </div>
	                        </div>
	                        <div class="col">
	                            <div class="form-floating position-relative">
	                                <input type="text" class="form-control bg-transparent border-3 w-100"
	                                       id="productQtyInManageItems" name="productQtyInManageItems" placeholder="Qty" style="height: 40px;">
	                                <label for="productQtyInManageItems" id="itemQtyLblInItems"><span>Qty</span></label>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="row position-relative" style="top: 10px;">
	                        <div class="col-6 col-sm">
	                            <div class="form-floating position-relative">
	                                <input type="text" class="form-control bg-transparent border-3 w-100"
	                                       id="productUnitPriceInManageItems" name="productUnitPriceInManageItems" placeholder="Unit Price" style="height: 40px;">
	                                <label for="productUnitPriceInManageItems"
	                                       id="itemUnitPriceLblInItems"><span>Unit Price</span></label>
	                            </div>
	                        </div>
	                        <div class="col-6 col-sm">
	                            <div class="form-floating position-relative">
	                                <input type="text" class="form-control bg-transparent border-3 w-100"
	                                       id="productStatusInManageItems" name="productStatusInManageItems" placeholder="Unit Price" style="height: 40px;">
	                                <label for="productStatusInManageItems"
	                                       id="itemUnitPriceLblInItems"><span>Product Status</span></label>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	
	            <div class="row container position-relative"
	                 style="left: 0;right:0;margin: auto; width: 80%;height: 10%;">
	                <div class="col-sm-6 col-md-3 position-relative">
	                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
	                        <button id="saveItems" class="btn btn-outline-success position-absolute"
	                                style="top: 0;bottom: 0;margin: auto;height: 40px; width: 100%;">Add Item
	                        </button>
	                    </div>
	                </div>
	                <div class="col-sm-6 col-md-3 position-relative">
	                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
	                        <button class="btn btn-outline-secondary position-absolute"
	                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="updateItemBtn">
	                            Update Item
	                        </button>
	                    </div>
	                </div>
	                <div class="col-sm-6 col-md-3 position-relative">
	                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
	                        <button class="btn btn-outline-danger position-absolute"
	                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="deleteItemBtn">
	                            Delete Item
	                        </button>
	                    </div>
	                </div>
	
	                <div class="col-sm-6 col-md-3 position-relative">
	                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
	                        <button id="searchItemBtn" class="btn btn-outline-primary position-absolute"
	                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="deleteItemBtn">
	                            Search Item
	                        </button>
	                    </div>
	                </div>
	            </div>
	            <div class="row position-relative border-5 shadow"
	                 style="left: 0;right: 0;margin: auto;height: 330px;width: 93%;">
	                <div class="col position-relative h-100" style="height: 100%;overflow:auto;">
	                    <table class="table table-striped table-responsive table-hover shadow position-absolute start-0 end-0 m-auto">
	                        <thead>
	                        <tr>
	                            <th scope="col">#</th>
	                            <th scope="col">Code</th>
	                            <th scope="col">Description</th>
	                            <th scope="col">Qty</th>
	                            <th scope="col">Buying Price</th>
	                            <th scope="col">Unit Price</th>
	                            <th scope="col">Discount</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	    </section>
	</body>
</html>
