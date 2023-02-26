<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Admin Dashboard</title>
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
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section class="dashboardAdmin container-fluid position-relative d-flex align-items-center justify-content-center"
	             style="width: 100%;height: 95vh;background-color: rgb(226, 226, 226);top:0">
	        <div class="row position-relative d-flex" style="width: 90%;height: 85%;">
	            <div class="col-lg-11 col-sm-12 col-md-12 position-relative start-0 end-0 top-0 bottom-0 m-auto d-flex align-items-center justify-content-center shadow"
	                 style="border-radius: 20px; background-color: rgb(255, 255, 255);width: 90%;height: 90%;">
	                <div class="container position-absolute start-0 end-0 top-0 bottom-0 m-auto"
	                     style="width: 90%;height: 90%;">
	                    <div class="cardsRow row position-relative" style="height: 50%;">
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="dailySales position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                    <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="monthlySales position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                    <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="annualSales position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                   <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="row position-relative" style="height: 50%;">
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="mostSellingItem position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                   <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="leastSellingItem position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                    <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md col-sm-12 position-relative">
	                            <div class="totalCashiersRegistered position-absolute start-0 end-0 top-0 bottom-0 m-auto shadow-lg"
	                                 style="border-radius: 20px;height: 80%;width: 80%;background-color: rgb(131, 150, 201);">
	                                <div class="row position-relative" style="height: 50%;">
	                                    <div class="col-12 h-100 w-100 d-flex align-items-center justify-content-center"><i
	                                            class="fas fa-user-cog start-0 end-0 top-0 bottom-0 m-auto position-absolute fs-1 text-white"
	                                            style="width: max-content;"></i></div>
	                                </div>
	                                <div class="row position-relative" style="height: 50%;">
	                                    <h3 style="position: absolute;top: 5%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Daily Sales</h3>
	                                    <p style="position: absolute;bottom: 15%;left: 0;right: 0;margin: auto;width: max-content;height: max-content;">
	                                        Rs. <span>1000.00</span></p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	  </section>
</body>
</html>