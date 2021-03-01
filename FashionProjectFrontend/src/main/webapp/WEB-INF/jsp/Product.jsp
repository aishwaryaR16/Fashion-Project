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
<div class="row">
	

	<div class="container">
	
		<div class="col-md-12 col-sm-3 col-md-3 ">
			<form action="<c:url value='InsertProduct'/>" method="post"
				align="center">

				<table class="table table-bordered table-responsive" align="center">
					<tr bgcolor="yellow">
						<td colspan="2"><center><b><i>INSERT PRODUCT</i></b></center></td>
					</tr>
					<tr>
						<td>Product Id</td>
						<td><input type="text" name="productId" /></td>
					</tr>
					<tr>
						<td>Product desc</td>
						<td><input type="text" name="productdesc" /></td>
					</tr>
					<tr>
						<td>Product Name</td>
						<td><textarea row="5" cols="50" name="productName"></textarea></td>
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
					<th>Product Id</th>
					<th>Product desc</th>
					<th>Product Name</th>
					<th colspan='2'>Options</th>
				</thead>

				
				<c:forEach items="${productList}" var="product">
					<tr>
						<td>${product.productId}</td>
						<td>${product.productdesc}</td>
						<td>${product.productName}</td>
						
							<td><a href=<c:url value='deleteProduct/${product.productId}'/>><p class="text-danger"><b>Delete</b></p></a></td>
							<td><a href=<c:url value='editProduct/${product.productId}'/>><p class="btn btn-info"><b>Edit</b> </p></a></td>
					
						
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
<br/><br/>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="adminhome">Home</a> 
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
    