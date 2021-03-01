<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

<body>
<div class="container">
<br/>
 <div style="font-family:Cursive Lucida Handwriting ">

Welcome : ${sessionScope.username}
In Admin Module.

</div>
<br/>
<div class="col-xs-12 col-sm-12 col-md-12">
<img src="<c:url value='./images/18.jpg'/>" alt="Nature" style="width:100%">
</div>
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="login">Home</a> 
    </li>
    </ul>
    </nav>
</body>
</html>