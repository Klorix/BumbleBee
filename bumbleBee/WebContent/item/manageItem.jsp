<%@page import="net.dao.itemDao.impl.ItemDaoImpl"%>
<%@page import="net.dao.itemDao.ItemDao"%>
<%@page import="net.model.Brand"%>
<%@page import="net.dao.BrandDao.impl.BrandDaoImpl"%>
<%@page import="net.dao.BrandDao.BrandDao"%>
<%@page import="net.model.Category"%>
<%@page import="net.dao.CategoryDao.impl.CategoryDaoImpl"%>
<%@page import="net.dao.CategoryDao.CategoryDao"%>
<%@page import="net.model.Item"%>
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
		<jsp:include page="../common/adminHeader.jsp"></jsp:include>
		<section class="ManageItems container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;top:0;" id="manageItemsSection">
	        <div class="row position-relative d-flex" style="width: 100%;height:90%;">
	        	<form class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 80%;height:30%;">
	        		<div class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 100%;height:100%;">
		                <div class="col position-relative">
		                    <div class="row position-relative" style="top: 0;">
		                        <div class="col-6 col-sm-6 col-md position-relative">
		                            <div class="form-floating position-relative">
		                            <%
	                                        ItemDao dao = new ItemDaoImpl();
	                                		String itemId = dao.generateItemCode();
	                                		System.out.println("Item ID = "+itemId);%>
		                                <input type="text" class="form-control bg-transparent border-3 w-100"
		                                       id="productIdInManageItems" name="productIdInManageItems" placeholder="Product ID" style="height: 40px;" value=<%=itemId %>>
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
		                                       id="productStatusInManageItems" name="productStatusInManageItems" placeholder="Product Status" style="height: 40px;">
		                                <label for="productStatusInManageItems"
		                                       id="itemStatusLblInItems"><span>Product Status</span></label>
		                            </div>
		                        </div>
		                        <div class="col-6 col-sm">
		                            <div class="form-floating position-relative">
	                                <select class="form-select bg-transparent" id="productCategoryInManageItems" name="productCategoryInManageItems"
	                                        aria-label="Floating label select example" style="height: 40px; width: 100%;">
	                                        <option value="Select Category">Select Category</option>
	                                        <%CategoryDao categoryDao = new CategoryDaoImpl();
	                                        List<Category>categoryList = categoryDao.getCategoryDetails();
	                                        for(Category c:categoryList){
	                                        	System.out.println(c.getCategoryName());
	                                        %>
	                                        <option value=<%=c.getCategoryId()%>><%=c.getCategoryId()%></option>
	                                        <%} %>
	                                </select>
	                                <label for="productCategoryInManageItems">Product Category</label>
	                            </div>
		                        </div>
		                        <div class="col-6 col-sm">
		                            <div class="form-floating position-relative">
	                                <select class="form-select bg-transparent" id="productBrandInManageItems" name="productBrandInManageItems"
	                                        aria-label="Floating label select example" style="height: 40px; width: 100%;">
	                                         <option value="Select Brand">Select Brand</option>
	                                        <%BrandDao brandDao = new BrandDaoImpl();
	                                        List<Brand>brandList = brandDao.getBrandDetails();
	                                        for(Brand b:brandList){
	                                        	System.out.println(b.getBrandName());
	                                        %>
	                                        <option value=<%=b.getBrandName()%>><%=b.getBrandName()%></option>
	                                        <%} %>
	                                </select>
	                                <label for="productBrandInManageItems">Product Brand</label>
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
		                                style="top: 0;bottom: 0;margin: auto;height: 40px; width: 100%;"  type="submit" formaction="<%=request.getContextPath()%>/saveItem" formmethod="post">Add Item
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-secondary position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="updateItemBtn"  type="submit" formaction="<%=request.getContextPath()%>/updateItem" formmethod="post">
		                            Update Item
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-danger position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="deleteItemBtn"  type="submit" formaction="<%=request.getContextPath()%>/deleteItem" formmethod="post">
		                            Delete Item
		                        </button>
		                    </div>
		                </div>
		            </div>
	        	</form>
	            
	            <div class="row position-relative border-5 shadow"
	                 style="left: 0;right: 0;margin: auto;height: 330px;width: 93%;">
	                <div class="col position-relative h-100 w-100 d-flex align-items-center justify-content-center" style="height: 100%;overflow:auto;width:100%;">
	                    <table class="table table-striped table-responsive table-hover shadow position-absolute start-0 end-0 m-auto w-100">
	                        <thead>
	                        <tr>
	                            <th scope="col">#</th>
	                            <th scope="col">Code</th>
	                            <th scope="col">Description</th>
	                            <th scope="col">Qty</th>
	                            <th scope="col">Unit Price</th>
	                            <th scope="col">Status</th>
	                            <th scope="col">Category</th>
	                            <th scope="col">Brand</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        	<%Iterator itr;%>
								<% List<Item> data= (List)request.getAttribute("itemDetails");
								System.out.println(data);
								if(data!=null) {
									int count = 1;
									for (Item i : data){%>
									<tr>
									<td width="12.5%"><%=count++%></td>
									<td width="12.5%"><%=i.getId()%></td>
									<td width="12.5%"><%=i.getName()%></td>
									<td width="12.5%"><%=i.getQty()%></td>
									<td width="12.5%"><%=i.getUnitPrice()%></td>
									<td width="12.5%"><%=i.getStatus()%></td>
									<td width="12.5%"><%=i.getCategory()%></td>
									<td width="12.5%"><%=i.getBrand()%></td>
									</tr>
								<%}}%>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	    </section>
	</body>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	var productIdInManageItemsPattern = /^(P-)[0-9]{3}$/;
	var productNameInManageItemsPattern = /^[0-9A-z ]+[.]*[/]*[(]*[)]*[']*[,]*[&]*[-]*$/;
	var productQtyInManageItemsPattern =  /^[0-9]+$/;
	var productUnitPriceInManageItemsPattern = /^[0-9.]{1,}$/;
	var productStatusInManageItemsPattern =  /^[0-9.]{1,}$/;

	var productIdInManageItems = $("#productIdInManageItems");
	var productNameInManageItems = $("#productNameInManageItems");
	var productQtyInManageItems = $("#productQtyInManageItems");
	var productUnitPriceInManageItems = $("#productUnitPriceInManageItems");
	var productStatusInManageItems = $("#productStatusInManageItems");

	var saveItemsBtn = $("#saveItems");
	var updateItemBtn = $("#updateItemBtn");
	var deleteItemBtn = $("#deleteItemBtn");
	
	
	var itemsArray = [productIdInManageItems, productNameInManageItems, productQtyInManageItems, productUnitPriceInManageItems, productStatusInManageItems];
	productIdInManageItems.keyup(function (e) {
	    let index = 0;
	    var itemCodeLbl = $("#itemCodeLblInItems span");
	    if (validate(productIdInManageItemsPattern, itemsArray, index, e, saveItemsBtn, updateItemBtn, deleteItemBtn) == true) {
	        itemCodeLbl.text("Product ID");
	    } else {
	        itemCodeLbl.text("Please use the given format (P-001)");
	    }
	});
	productNameInManageItems.keyup(function (e) {
		let index = 1;
	    var itemCodeLbl = $("#itemDescriptionLblInItems span");
	    if (validate(productNameInManageItemsPattern, itemsArray, index, e, saveItemsBtn, updateItemBtn, deleteItemBtn) == true) {
	        itemCodeLbl.text("Product Name");
	    } else {
	        itemCodeLbl.text("Please use the correct format");
	    }
	});
	productQtyInManageItems.keyup(function (e) {
		let index = 2;
	    var itemCodeLbl = $("#itemQtyLblInItems span");
	    if (validate(productQtyInManageItemsPattern, itemsArray, index, e, saveItemsBtn, updateItemBtn, deleteItemBtn) == true) {
	        itemCodeLbl.text("Qty");
	    } else {
	        itemCodeLbl.text("Please use only numbers");
	    }
	});
	productUnitPriceInManageItems.keyup(function (e) {
		let index = 3;
	    var itemCodeLbl = $("#itemUnitPriceLblInItems span");
	    if (validate(productUnitPriceInManageItemsPattern, itemsArray, index, e, saveItemsBtn, updateItemBtn, deleteItemBtn) == true) {
	        itemCodeLbl.text("Unit Price");
	    } else {
	        itemCodeLbl.text("Please use only number");
	    }
	});
	productStatusInManageItems.keyup(function (e) {
		let index = 4;
	    var itemCodeLbl = $("#itemStatusLblInItems span");
	    if (validate(productStatusInManageItemsPattern, itemsArray, index, e, saveItemsBtn, updateItemBtn, deleteItemBtn) == true) {
	        itemCodeLbl.text("Product Status");
	    } else {
	        itemCodeLbl.text("Please insert 0 as false and true as 1)");
	    }
	});

	function validate(pattern, array, index, e, saveBtn, updateBtn, deleteBtn) {
	    if (pattern.test(array[index].val())) {
	        array[index].css("border", "3px solid green");
	        if (e.key === 'Enter') {
	            array[index + 1].focus();
	        }
	        saveBtn.prop("disabled", false);
	        updateBtn.prop("disabled", false);
	        deleteBtn.prop("disabled", false);
	        return true;
	    } else {
	        array[index].css("border", "3px solid red");
	        saveBtn.prop("disabled", true);
	        updateBtn.prop("disabled", true);
	        deleteBtn.prop("disabled", true);
	        return false;
	    }
	    return false;
	}
			
	</script>
</html>
