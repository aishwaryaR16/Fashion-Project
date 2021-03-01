<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<div class="cotainer">
       	
 <head>
<style>
body {
 background-image: url("./images/43.jpg");

}
</style>
</head>
<br/>
<br/>
<body>
<form action="registerUser" method="post">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
				<tr bgcolor="yellow"><b>Sign Up Here</b></tr>
				
				
				</div>
				<div class="card-body">
					
				</div>
				<div class="form-group row">
					<label for="full_name"
						class="col-md-4 col-form-label text-md-right">User Name</label>
					<div class="col-md-6">
						<input type="text" id="username" class="form-control"
							name="username" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="email_address"
						class="col-md-4 col-form-label text-md-right">Password</label>
					<div class="col-md-6">
						<input type="password" id="password" class="form-control"
							name="password">
					</div>
				</div>

				<div class="form-group row">
					<label for="email_address"
						class="col-md-4 col-form-label text-md-right">Customer
						Name</label>
					<div class="col-md-6">
						<input type="text" id="customerName" class="form-control"
							name="customerName">
					</div>
				</div>

				<div class="form-group row">
					<label for="mb_no" class="col-md-4 col-form-label text-md-right">Mobile
						Number</label>
					<div class="col-md-6">
						<input type="text" id="mobileNo" class="form-control"
							name="mobileNo">
					</div>
				</div>
				<div class="form-group row">
					<label for="mb_no" class="col-md-4 col-form-label text-md-right">EmailId</label>
					<div class="col-md-6">
						<input type="text" id="emailId" class="form-control" name="emailId">
					</div>
				</div>
				<div class="form-group row">
					<label for="mb_no" class="col-md-4 col-form-label text-md-right">Address</label>
					<div class="col-md-6">
						<input type="text" id="address" class="form-control"
							name="address">
					</div>

				</div>
				<div class="form-group row"></div>

				<div class="col-md-6 offset-md-4">
					  <input type="submit" value="SignUp" class="btn btn-info"/>
				</div>
			</div>
			
		</div>
	</div>
</div>
</div>
</div>
</form>
</body>
</html>
