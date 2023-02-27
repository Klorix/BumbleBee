<%@page import="net.model.Brand"%>
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
		<section class="ManageBrand container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;top:0;" id="manageItemsSection">
	        <div class="row position-relative d-flex" style="width: 100%;height:90%;">
	        	<form class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 80%;height:30%;">
	        		<div class="row container position-relative" style="top: 0;left: 0;right:0;margin: auto; width: 100%;height:100%;">
		                <div class="col position-relative">
		                    <div class="row position-relative" style="top: 0;">
		                        <div class="col-6 col-sm-6 col-md position-relative">
		                            <div class="form-floating position-relative">
		                                <input type="text" class="form-control bg-transparent border-3 w-100"
		                                       id="brandIdInManageCategory" name="brandIdInManageBrand" placeholder="Brand ID" style="height: 40px;">
		                                <label for="brandIdInManageBrand" id="brandIdLblInBrand"><span>Brand ID</span></label>
		                            </div>
		                        </div>
		                        <div class="col-6 col-sm-6 col-md">
		                            <div class="form-floating position-relative">
		                                <input type="text" class="form-control bg-transparent border-3 w-100"
		                                       id="brandNameInManageBrand" name="brandNameInManageBrand" placeholder="Brand" style="height: 40px;">
		                                <label for="brandNameInManageBrand"
		                                       id="brandNameLblInBrand"><span>Brand Name</span></label>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <div class="row container position-relative"
		                 style="left: 0;right:0;margin: auto; width: 80%;height: 10%;">
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button id="saveBrand" class="btn btn-outline-success position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px; width: 100%;"  type="submit" formaction="<%=request.getContextPath()%>/saveBrand" formmethod="post">Add Brand
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-secondary position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="updateBrandBtn"  type="submit" formaction="<%=request.getContextPath()%>/updateBrand" formmethod="post">
		                            Update Brand
		                        </button>
		                    </div>
		                </div>
		                <div class="col-sm-6 col-md-3 position-relative">
		                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
		                        <button class="btn btn-outline-danger position-absolute"
		                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;" id="deleteBrandBtn"  type="submit" formaction="<%=request.getContextPath()%>/deleteBrand" formmethod="post">
		                            Delete Brand
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
								<% List<Brand> data= (List)request.getAttribute("brandDetails");
								System.out.println(data);
								if(data!=null) {
									int count = 1;
									for (Brand i : data){%>
									<tr>
									<td width="10"><%=count++%></td>
									<td width="50%"><%=i.getBrandId()%></td>
									<td width="60%"><%=i.getBrandName()%></td>
									</tr>
								<%}}%>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
	        </div>
	    </section>
	</body>
</html>
