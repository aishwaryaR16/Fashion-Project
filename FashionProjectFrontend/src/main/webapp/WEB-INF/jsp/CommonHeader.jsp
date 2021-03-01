<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Fashion Club-${pagename}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
 
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

  <a class="navbar-brand" href="#">
    <img src="<c:url value='./images/FashionClub.png'/>" alt="logo" style="width:100px; height:100px">
  </a>
  
  <ul class="navbar-nav">
      	<c:if test="${sessionScope.role==null}">
  
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="register">Register</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="aboutus">AboutUs</a>
    </li>
     
</c:if>
	<c:if test="${sessionScope.role!=null}">
			<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
			<li class="nav-item">
			
    <li class="nav-item">
      <a class="nav-link" href="login">Home</a>
    </li>
      <a class="nav-link" href="showCategory">Manage Category</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showProduct">Manage Product</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="showsupplier">Manage Supplier</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href=signout>SignOut</a>
    </li>
    
			</c:if>
			 
			<c:if test="${sessionScope.role=='ROLE_USER'}">
			 <li class="nav-item">
      <a class="nav-link" href="index.jsp">Home</a>
    </li>
			
			<li class="nav-item">
      <a class="nav-link" href=productdisplay>Products</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href=signout>SignOut</a>
    </li>
    
			</c:if>
	</c:if>
	
 </ul>
</nav>
	
</body>
</html>