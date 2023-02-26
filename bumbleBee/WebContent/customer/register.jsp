<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<% String message = (String)request.getAttribute("NOTIFICATION");%>
<title>Customer Registration</title>

	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
	
	<style>
		body>main>.Signup {
		    position: relative;
		    height: 100vh !important;
		}
		body>main>.Signup>.container-fluid:nth-child(1) {
			top:2%;
			height:10%;
			left:0;
			right:0;
			margin:auto;
		}
		body>main>.Signup>.container-fluid:nth-child(2) {
			left:0;
			right:0;
			top:0;
			bottom:0;
			margin:auto;
		    height: 70% !important;
		    width: 70% !important;
		}
		
		body>main>.Signup>.container-fluid>.row>.row {
		    position: relative;
		    margin-top: 30px !important;
		}
		
		body>main>.Signup a:nth-child(2) {
		    position: absolute !important;
		    right: 10%;
		    top: 30px;
		    width: 3.2% !important;
		    height: 40px;
		    overflow: hidden;
		    transition: all 1s;
		}
		
		body>main>.Signup a:nth-child(3) {
		    position: absolute !important;
		    right: 5%;
		    top: 30px;
		    width: 38px;
		    height: 40px;
		    overflow: hidden;
		    transition: all 1s;
		}
		
		body>main>.Signup>a:hover {
		    transition: all 1s;
		    width: 8% !important;
		}
		
		body>main>.Signup>a:nth-child(3):hover h3 {
		    transition: all 1s;
		    right: 15% !important;
		}
		
		body>main>.Signup>a:nth-child(2):hover {
		    transition: all 1s;
		    width: 12.5% !important;
		}
		
		body>main>.Signup>a:nth-child(2):hover h3 {
		    transition: all 1s;
		    right: 2% !important;
		}
		
		body>main>.Signup>a:hover h3 {
		    transition: all 1s;
		    right: 5% !important;
		}
		
		body>main>.Signup>a div {
		    position: relative !important;
		    width: 100% !important;
		    height: 100% !important;
		}
		
		body>main>.Signup>a div h3 {
		    position: absolute !important;
		    top: 0 !important;
		    bottom: 7px !important;
		    margin: auto !important;
		    height: max-content;
		    position: absolute !important;
		    right: -135% !important;
		    color: black !important;
		    transition: all 1s !important;
		}
		
		body>main>.Signup>a:nth-child(2) div h3 {
		    right: -251% !important;
		}
		
		body>main>.Signup>a i {
		    color: black !important;
		    font-size: 35px !important;
		}
		
		body>main>.Signup label {
		    position: absolute;
		    top: 5px !important;
		}
		
	</style>
	<script type="text/javascript">
		document.getElementById("addSignupDetailsBtn").addEventListener('click',function (){
			var msg = "<%=message%>";
		    alert(msg);
		}); 
	    
</script>
</head>

</head>
<body>
 <main>
	<section id="signupSection" class="Signup container-fluid position-relative" >
		<div class="container-fluid position-absolute shadow">
			<a href="<%=request.getContextPath()%>/login/login.jsp" id="logoutBtnInSignup" style="width:5%;height:80%;top:0;bottom:0;margin:auto;right:2%;position:absolute">
	            <div class="logout position-absolute d-block d-lg-block position-relative w-100 h-100" >
	                <i class="fas fa-sign-out-alt text-black fs-1 position-absolute"></i>
	            </div>
        	</a>
		</div>
        <div class="container-fluid position-absolute shadow">
            <div class="container">
            	<form method="POST">
	            	<div class="row position-absolute"
	                     style="top: 10%;left: 0;right: 0;margin: auto;width: 800px;height: 60%;position:relative'">
	                    <div class="row" style="left: 0;right: 0;margin: auto;height:30%">
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpIdLbl" for="signUpId" class="position-relative"><span
	                                        style="width: 100%;">Id</span></label>
	                            	<input type="text" class="form-control bg-transparent" id="signUpId" name="signUpId" placeholder="Id"
	                                       style="height: 50px;">
	                                
	                            </div>
	                        </div>
	
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpNameLbl" for="signUpName" class="position-relative"><span
	                                        style="width: 100%;">Name</span></label>
	                                <input type="text" class="form-control bg-transparent" id="signUpName" name="signUpName" placeholder="Name"
	                                       style="height: 50px;">
	                            </div>
	                        </div>
	
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpNicLbl" for="signUpDob" class="position-relative"><span
	                                        style="width: 100%;">Date of Birth</span></label>
	                                <input type="text" class="form-control bg-transparent" id="signUpDob" name="signUpDob" placeholder="Date of Birth"
	                                       style="height: 50px;">
	                            </div>
	                        </div>
	                    </div>
	
	
	                    <div class="row" style="left: 0;right: 0;margin: auto;">
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpContactNoLbl" for="signUpContactNo" class="position-relative"><span
	                                        style="width: 100%;">Contact No</span></label>
	                                <input type="tel" class="form-control bg-transparent" id="signUpContactNo" name="signUpContactNo"
	                                       placeholder="Contact No" style="height: 50px;">
	                            </div>
	                        </div>
	
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpUserNameLbl" for="signUpUserName" class="position-relative"><span
	                                        style="width: 100%;">User Name</span></label>
	                                <input type="text" class="form-control bg-transparent" id="signUpUserName" name="signUpUserName"
	                                       placeholder="User Name" style="height: 50px;">
	                            </div>
	                        </div>
	
	                        <div class="col-12 col-sm-12 col-md">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpPasswordLbl" for="signUpPassword" class="position-relative"><span
	                                        style="width: 100%;">Password</span></label>
	                                <input type="password" class="form-control bg-transparent" id="signUpPassword" name="signUpPassword"
	                                       placeholder="Password" style="height: 50px;">
	                            </div>
	                        </div>
	                    </div>
	
	                   <div class="row" style="left: 0;right: 0;margin: auto;">
	                        <div class="col">
	                            <div class="form-floating position-relative shadow">
	                            	<label id="signUpAddressLbl" for="signUpAddress" class="position-relative"><span
	                                        style="width: 100%;">Address</span></label>
	                                <input type="text" class="form-control bg-transparent" id="signUpAddress" name="signUpAddress"
	                                       placeholder="Address" style="height: 50px;">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="row position-absolute"
	                     style="top: 75%;left: 0;right: 0;margin: auto;width: 800px;height: max-content;">
	                    <div class="col-6 col-sm-6 col-md">
	                        <button id="addSignupDetailsBtn" class="btn btn-outline-success" style="width: 100%;" type="submit" formaction="<%=request.getContextPath()%>/registerCustomer" formmethod="post">Add
	                        </button>
	                    </div>
	                    <div class="col-6 col-sm-6 col-md">
	                        <button id="updateSignupDetailsBtn" class="btn btn-outline-secondary" style="width: 100%;">
	                            Update
	                        </button>
	                    </div>
	                    <div class="col">
	                        <button id="deleteSignupDetailsBtn" class="btn btn-outline-danger" style="width: 100%;">Delete
	                        </button>
	                    </div>
	                </div>
            	</form>
                
            </div>
        </div>
    </section>
   </main>
</body>
</html>