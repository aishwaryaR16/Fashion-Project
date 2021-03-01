<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">

<form action="<c:url value="${PageContext}/updateSupplier"/>" method="post" align="center">
	<div class="col-xs-12 col-sm-12 col-md-12">
</div><table align="center">

	<tr bgcolor="yellow">
		<td align="center" colspan="2"><h3><b>Supplier Detail</b></h3></td>
	</tr>
	<tr >
		<td>Supplier Id</td>
		<td><input type="text" name="supplierId" value="${supplier.supplierId}" readonly/></td>
	</tr>
	<tr >
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" value="${supplier.supplierName}"/></td>
	</tr>
	<tr >
		<td><textarea rows="5" cols="30" name="supplierDesc">${supplier.supplierDesc}</textarea></td>
	</tr>
	<tr >
		<td colspan="2" align="center">
			<input type="submit" value="Update Supplier"/>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>
