<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<head>
<style>
body {
 background-image: url("./images/46.jpg");

}
</style>
</head>
<body>
<div class="container">
<br/>


<h3 align:'center'><b>ThankYou: ${sessionScope.username}</b></h3>


</div>
<br/>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
<ul class="navbar-nav">
<li class="nav-item">
      <a class="nav-link" href="login">Home</a>
    </li>
    </ul>
    </nav>
</body>
</html>