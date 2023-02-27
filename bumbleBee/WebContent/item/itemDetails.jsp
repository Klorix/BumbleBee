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
		<jsp:include page="../common/customerHeader.jsp"></jsp:include>
		<section class="ManageItems container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;top:0;" id="manageItemsSection">
	        <div class="row position-relative d-flex" style="width: 100%;height:90%;">
	            
	            <div class="row position-relative border-5 shadow"
	                 style="left: 0;right: 0;margin: auto;height: 100%;width: 93%;">
	                <div class="col position-relative h-100 w-100 d-flex align-items-center justify-content-center" style="height: 100%;overflow:auto;width:100%;">
	                    <table class="table table-striped table-responsive table-hover shadow position-absolute start-0 end-0 m-auto w-100 h-100">
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
</html>
