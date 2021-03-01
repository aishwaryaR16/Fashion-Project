<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">

<form action="<c:url value="${PageContext}/updateCategory"/>" method="post" align="center">
	<div class="col-xs-12 col-sm-12 col-md-12">
</div><table align="center">

	<tr bgcolor="yellow">
		<td align="center" colspan="2"><h3><b>Category Detail</b></h3></td>
	</tr>
	<tr >
		<td>Category Id</td>
		<td><input type="text" name="categoryId" value="${category.categoryId}" readonly/></td>
	</tr>
	<tr >
		<td>Category Name</td>
		<td><input type="text" name="categoryName" value="${category.categoryName}"/></td>
	</tr>
	<tr >
		<td>Category Desc</td>
		<td><textarea rows="5" cols="30" name="categoryDesc">${category.categoryDesc}</textarea></td>
	</tr>
	<tr >
		<td colspan="2" align="center">
			<input type="submit" value="Update Category"/>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>
