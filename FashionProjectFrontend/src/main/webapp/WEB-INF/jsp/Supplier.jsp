<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
  <head>
<style>
body {
 background-image: url("./images/43.jpg");

}
</style>

</head>
<body>

	<div class="container">
	
		<div class="col-md-12 col-sm-3 col-md-3 ">
			<form action="<c:url value='InsertSupplier'/>" method="post"
				align="center">

				<table class="table table-bordered table-responsive" align="center">
					<tr bgcolor="yellow">
						<td colspan="2"><center><b><i>INSERT SUPPLIER</i></b></center></td>
					</tr>
					<tr>
						<td>Supplier Id</td>
						<td><input type="text" name="supplierId" /></td>
					</tr>
					<tr>
						<td>Supplier Name</td>
						<td><input type="text" name="supplierName" /></td>
					</tr>
					<tr>
						<td>Supplier Desc</td>
						<td><textarea row="5" cols="50" name="supplierDesc"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
			
 <input type="submit" value="Insert" class="btn btn-info"/>			
			
		</td>
					</tr>
				</table>
		</form>
		</div>

<br/>

	<div class="col-md-12  col-md-8">
			<table class="table table-striped  table-bordered ">
				<thead bgcolor="yellow">
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Desc</th>
					<th colspan='2'>Options</th>
				</thead>

				
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.supplierName}</td>
						<td>${supplier.supplierDesc}</td>
						
						<td><a href=<c:url value='deleteSupplier/${supplier.supplierId}'/>><p class="text-danger"><b>Delete</b></p></a></td>
					
						
							<td><a href=<c:url value='editSupplier/${supplier.supplierId}'/>><p class="btn btn-info"><b>Edit</b> </p></a></td>

					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

<br/><br/>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="signout">Signout</a> 
    </li>
    <li class="nav-item">
      <a class="nav-link" href="aboutus">AboutUs</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="contactus">ContactUs</a>
    </li>
  </ul>
</nav>

</body>
</html>
    