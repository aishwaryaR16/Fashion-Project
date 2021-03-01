<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<div class="row">

<body>
<style>
body {
background-image: url("images/43.jpg");

</style>
 
<form action="<c:url value="/addToCart/${product.productId}"/>">
</form>
<table class="table.table-bordered">
  <tr>
  <td rowspan="6">
   <div class="col-sm-3 col-sm-3 col-sm-3 col-sm-3">
  
         <img src="<c:url value="images/Tr1.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
         <i class="bi bi-heart"></i>
</td>
<tr>
<td><b>Product Id:1</b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Product Name:Raymond Pants </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td>Price:1999</td>
<td> ${product.price}</td>
</tr>

<tr>
<td> Stock:152 </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td> ProductDesc:Men's Wear</td>
<td> ${product.productdesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>
</br></br></br>

<table class="table.table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="images/Tr2.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b> Product Id:2</b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Product Name:Palazzo Pants </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Price:1899 </td>
<td> ${product.price}</td>
</tr>

<tr>
<td> Stock:172 </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td> ProductDesc:Women's Wear</td>
<td> ${product.productdesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>

<table class="table.table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="images/Tr3.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b>Product Id:3</b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Product Name:Cotton King Pants </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Price:2100</td>
<td> ${product.price}</td>
</tr>

<tr>
<td> Stock:782 </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td> ProductDesc:Men's Wear</td>
<td> ${product.productdesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>

<td> <input type="submit" value="Buy" class="btn btn-success">

</td></tr>
</table>
<table class="table.table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="images/Tr4.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b>Product Id:4</b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Product Name:Straight Pants</td>
<td> ${product.productName}</td>
</tr>

<tr>
<td> Price:1999 </td>
<td> ${product.price}</td>
</tr>
<tr>
<td> ProductDesc:Women's Wear</td>
<td> ${product.productdesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>


</body>
</div>