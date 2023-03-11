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
	<section class="login container-fluid position-relative"
             style="height: 100vh;width: 100%;background-color: rgb(231, 231, 231) !important;display: block;"
             id="loginSection">
        <div class="container-fluid shadow"
             style="position: absolute;inset: 0 0 0 0;margin: auto;width: 50%;height: 70%;background-color: rgb(228, 225, 225) !important;border-radius: 20px;">
            <h3 style="position: absolute;left: 0;right: 0;margin: auto;width: max-content;top: 40px;">Bumble bee</h3>
            
            <div><img src="/images/Bumblebee.png" alt=""></div>
            
           <form action="<%=request.getContextPath()%>/adminLogin" method="POST">
	           <div class="row position-absolute"
	                 style="top: 25%;left: 0;right: 0;margin: auto;width: 400px;height: max-content;">
	                <div class="col">
	                    <div class="form-floating position-relative shadow">
	                        <input type="text" class="form-control bg-transparent" id="userNameLoginId" placeholder=""
	                               style="height: 50px;" name="userNameLoginId" required>
	                        <label for="userNameLoginId" class="position-absolute"><span>User Name</span></label>
	                    </div>
	                </div>
	            </div>
	            <div class="row position-absolute"
	                 style="top: 40%;left: 0;right: 0;margin: auto;width: 400px;height: max-content;">
	                <div class="col">
	                    <div class="form-floating position-relative shadow">
	                        <input type="password" class="form-control  bg-transparent" id="passwordLoginId"
	                               placeholder="" style="height: 50px;" name=passwordLoginId required>
	                        <label for="passwordLoginId" class="position-absolute"><span>Password</span></label>
	                    </div>
	                </div>
	            </div>
	            <div class="row"
	                 style="position:absolute;top: 63%;left: 0;right: 0;margin: auto;width: 200px;height: 40px;">
	                <div class="col-12">
				      <a href="#" id="loginBtn">
	                        <button class="btn btn-outline-success shadow w-100">Login</button>
	                    </a>
	                </div>
	            </div>
	             <div class="row"
	                 style="position:absolute;top: 86%;right: 0;margin: auto;width: max-width;height: 40px;">
	                <div class="col-12">
				      <a href="<%=request.getContextPath()%>/login/customerLogin.jsp" id="customerLoginBtn">
				      	Click here to login as Customer
	                    </a>
	                </div>
	            </div>
           </form>
            
        </div>
    </section>
</body>
</html>
