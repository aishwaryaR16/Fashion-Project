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

<table class="table.table-bordered ">
  <tr>
  <td rowspan="6">
  
   <div class="col-sm-3 col-sm-3 col-sm-3 col-sm-3">
         <img src="<c:url value="images/T1.jpg"/> " width="100%" alt=" Generic placeholder thumbnail"/>
         <i class="bi bi-heart"></i>
</td>
<br/><br/><br/><br/>
<tr>
<td><b> Product Id:1</b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> <b>Product Name:T's</b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b>Price:1999</b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b>Stock:152</b>  </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b> ProductDesc:Casual Wear</b></td>
<td> ${product.productdesc}</td>
</tr>
<tr>

<td> <b>Quantiy</b>
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
</div>
</div>

</br></br></br>