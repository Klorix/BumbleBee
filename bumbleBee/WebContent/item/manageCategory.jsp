<%@page import="net.model.Category"%>
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
		<section class="ManageCategory container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;top:0;" id="manageItemsSection">
	        <div class="row position-relative d-flex" style="width: 100%;height:90%;">
	        	<form class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 80%;height:30%;">
	        		<div class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 100%;height:100%;">
		                <div class="col position-relative">
		                    <div class="row position-relative" style="top: 0;">
		                        <div class="col-6 col-sm-6 col-md position-relative">
		                            <div class="form-floating position-relative">
		                                <input type="text" class="form-control bg-transparent border-3 w-100"
		                                       id="categoryIdInManageCategory" name="categoryIdInManageCategory" placeholder="Category ID" style="height: 40px;">
		                                <label for="categoryIdInManageCategory" id="categoryIdLblInCategory"><span>Category ID</span></label>
		                            </div>
		                        </div>
		                        <div class="col-6 col-sm-6 col-md">
		                            <div class="form-floating position-relative">
		                                <input type="text" class="form-control bg-transparent border-3 w-100"
		                                       id="categoryNameInManageCategory" name="categoryNameInManageCategory" placeholder="Category Name" style="height: 40px;">
		                                <label for="categoryNameInManageCategory"
		                                       id="categoryNameLblInCategory"><span>Category Name</span></label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <div class="row container position-relative"
		                 style="left: 0;right:0;margin: auto; width: 80%;height: 10%;">
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button id="saveCategory" class="btn btn-outline-success position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px; width: 100%;"  type="submit" formaction="<%=request.getContextPath()%>/saveCategory" formmethod="post">Add Category
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-secondary position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="updateCategoryBtn"  type="submit" formaction="<%=request.getContextPath()%>/updateCategory" formmethod="post">
		                            Update Category
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-danger position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="deleteCategoryBtn"  type="submit" formaction="<%=request.getContextPath()%>/deleteCategory" formmethod="post">
		                            Delete Category
		                        </button>
		                    </div>
		                </div>
		            </div>
	        	</form>
	            
	            <div class="row position-relative border-5 shadow"
	                 style="left: 0;right: 0;margin: auto;height: 330px;width: 93%;">
	                <div class="col position-relative h-100 w-100 d-flex align-items-center justify-content-center" style="height: 100%;overflow:auto;width:100%;">
	                    <table class="table table-striped table-responsive table-hover shadow position-absolute start-0 end-0 m-auto " style="width:80%">
	                        <thead>
	                        <tr>
	                            <th scope="col">#</th>
	                            <th scope="col">Brand Id</th>
	                            <th scope="col">Brand Name</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        	<%Iterator itr;%>
								<% List<Category> data= (List)request.getAttribute("categoryDetails");
								System.out.println(data);
								if(data!=null) {
									int count = 1;
									for (Category c : data){%>
									<tr>
									<td width="10"><%=count++%></td>
									<td width="50%"><%=c.getCategoryId()%></td>
									<td width="60%"><%=c.getCategoryName()%></td>
									</tr>
								<%}}%>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	    </section>
	</body>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	var productIdInManageItemsPattern = /^(CAT-)[0-9]{3}$/;
	var productNameInManageItemsPattern = /^[0-9A-z ]+[.]*[/]*[(]*[)]*[']*[,]*[&]*[-]*$/;
	
	var productCategory = $("#categoryIdInManageCategory");
	var productCategoryName = $("#categoryNameInManageCategory");

	var saveBtn = $("#saveCategory");
	var updateBtn = $("#updateCategoryBtn");
	var deleteBtn = $("#deleteCategoryBtn");
	
	
	var itemsArray = [productCategory, productCategoryName];
	productCategory.keyup(function (e) {
	    let index = 0;
	    var itemCodeLbl = $("#categoryIdLblInCategory span");
	    if (validate(productIdInManageItemsPattern, itemsArray, index, e, saveBtn, updateBtn, deleteBtn) == true) {
	        itemCodeLbl.text("Category ID");
	    } else {
	        itemCodeLbl.text("Please use the given format (CAT-001)");
	    }
	});
	productCategoryName.keyup(function (e) {
		let index = 1;
	    var itemCodeLbl = $("#categoryNameLblInCategory span");
	    if (validate(productNameInManageItemsPattern, itemsArray, index, e,  saveBtn, updateBtn, deleteBtn) == true) {
	        itemCodeLbl.text("Category Name");
	    } else {
	        itemCodeLbl.text("Please use the correct format");
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
