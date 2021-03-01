<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="CommonHeader.jsp" %>
 <style>
body {
 background-image: url("./images/43.jpg");

}
</style>

</head>  
<body>
<div class="container">

<form action="<c:url value="${PageContext}/updateProduct"/>" method="post" align="center">
	<div class="col-xs-12 col-sm-12 col-md-12">
</div>
<table align="center">

	<tr bgcolor="yellow">
		<td align="center" colspan="2"><h3><b>Product Detail</b></h3></td>
	</tr>
	<tr >
		<td>Product Id</td>
		<td><input type="text" name="productId" value="${product.productId}" readonly/></td>
	</tr>
	<tr >
		<td>Product Desc</td>
		<td><textarea rows="5" cols="30" name="productdesc">${product.productdesc}</textarea></td>
	</tr>
	<tr >
		<td>Product Name</td>
		<td><input type="text" name="productName" value="${product.productName}"/></td>
	</tr>
	
	<tr >
		<td colspan="2" align="center">
			<input type="submit" value="Update Product"/>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>
