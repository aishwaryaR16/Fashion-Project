<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
  <style>
body {
 background-image: url("./images/43.jpg");

}
</style>

</head>  
<body>

	<div class="container">
	
		<div class="col-md-12 col-sm-3 col-md-3 ">
			<form action="<c:url value='InsertCategory'/>" method="post"
				align="center">

				<table class="table table-bordered table-responsive" align="center">
					<tr bgcolor="yellow">
						<td colspan="2"><center><b><i>INSERT CATEGORY</i></b></center></td>
					</tr>
					<tr>
						<td>Category Id</td>
						<td><input type="text" name="categoryId" /></td>
					</tr>
					<tr>
						<td>Category Name</td>
						<td><input type="text" name="categoryName" /></td>
					</tr>
					<tr>
						<td>Category Description</td>
						<td><textarea row="5" cols="50" name="categoryDesc"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
			
 <input type="submit" value="Submit" class="btn btn-info" align='center'/>			
		</td>
					</tr>
				</table>
		
		</form>
</div>
<br/>

	<div class="col-md-12  col-md-8">
			<table class="table table-striped  table-bordered ">
				<thead bgcolor="yellow">
					<th>Category Id</th>
					<th>Category Name</th>
					<th>Category Desc</th>
					<th colspan='2'>Options</th>
				</thead>
			
			<c:forEach items="${categoryList}" var="category">
					<tr>
						<td>${category.categoryId}</td>
						<td>${category.categoryName}</td>
						<td>${category.categoryDesc}</td>
											
						<td><a href=<c:url value='deleteCategory/${category.categoryId}'/>><p class="text-danger"><b>Delete</b></p></a></td>
						<td><a href=<c:url value='editCategory/${category.categoryId}'/>><p class="btn btn-info"><b>Edit</b> </p></a></td>

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
    