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
</head>
<body>

	<section id="customerSection" class="Customer container-fluid position-relative" style="display: none;">
        <div class="container-fluid position-absolute shadow">
            <div class="row container position-relative" style="top: 30px;left: 0;right:0;margin: auto; width: 80%;">
                <div class="col position-relative">
                    <div class="row position-relative" style="top: 0;">
                        <div class="col-6 col-sm-6 col-md position-relative">
                            <div class="form-floating position-relative">
                                <input type="text" class="form-control bg-transparent border-3 w-100" id="cusId"
                                       placeholder="Name" style="height: 40px;">
                                <label for="cusId" id="cusIdLabelInCustomers"><span>Id</span></label>
                            </div>
                        </div>
                        <div class="col-6 col-sm-6 col-md">
                            <div class="form-floating position-relative">
                                <input type="text" class="form-control bg-transparent border-3 w-100" id="cusName"
                                       placeholder="Name" style="height: 40px;">
                                <label for="cusName" id="cusNameLabelInCustomers"><span>Name</span></label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating position-relative">
                                <input type="text" class="form-control bg-transparent border-3 w-100" id="cusContactNo"
                                       placeholder="Name" style="height: 40px;">
                                <label for="cusContactNo"
                                       id="cusContactLabelInCustomers"><span>Contact No</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="row position-relative" style="top: 10px;">
                        <div class="col-6 col-sm-6 col-md">
                            <div class="form-floating position-relative">
                                <input type="text" class="form-control bg-transparent border-3 w-100" id="cusNic"
                                       placeholder="Name" style="height: 40px;">
                                <label for="cusNic" id="cusNicLabelInCustomers"><span>Nic</span></label>
                            </div>
                        </div>
                        <div class="col-6 col-sm-6 col-md">
                            <div class="form-floating position-relative">
                                <input type="text" class="form-control bg-transparent border-3 w-100" id="cusAddress"
                                       placeholder="Name" style="height: 40px;">
                                <label for="cusAddress" id="cusAddressLabelInCustomers"><span>Address</span></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row container position-relative"
                 style="top: 50px;left: 0;right:0;margin: auto; width: 80%;height: 10%;">
                <div class="col-6 col-md-3 position-relative">
                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
                        <button id="saveCustomer" class="btn btn-outline-success position-absolute"
                                style="top: 0;bottom: 0;margin: auto;height: 40px; width: 100%;">Add
                        </button>
                    </div>
                </div>
                <div class="col-6 col-md-3 position-relative">
                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
                        <button id="cusUpdateBtn" class="btn btn-outline-secondary position-absolute"
                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;">Update
                        </button>
                    </div>
                </div>
                <div class="col-6 col-md-3 position-relative">
                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
                        <button id="cusDeleteBtn" class="btn btn-outline-danger position-absolute"
                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;">Delete
                        </button>
                    </div>
                </div>

                <div class="col-6 col-md-3 position-relative">
                    <div class="col-11 position-absolute" style="top: 0;bottom: 0;left:0;right:0;margin: auto;">
                        <button id="customerSearchBtn" class="btn btn-outline-primary position-absolute"
                                style="top: 0;bottom: 0;margin: auto;height: 40px;width: 100%;">Search
                        </button>
                    </div>
                </div>
            </div>
            <div class="row position-absolute border-5 shadow"
                 style="top: 35%; left: 0;right: 0;margin: auto;height: 330px;width: 93%;">
                <div class="col position-relative h-100" style="height: 100%;overflow:auto;">
                    <table id="tblCus"
                           class="table table-striped table-responsive table-hover shadow position-absolute start-0 end-0 m-auto">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Nic</th>
                            <th scope="col">Contact No</th>
                            <th scope="col">Address</th>
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
