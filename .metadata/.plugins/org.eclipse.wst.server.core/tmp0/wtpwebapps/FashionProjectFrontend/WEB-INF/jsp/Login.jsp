<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<div cllass="container-fluid">
<div class="row">
<br/>

<div class="col-xs-12 col-sm-8 col-md-8">
<img src="<c:url value='./images/19.jpg'/>" alt="Nature" style="width:100%">
</div>
<div class="col-xs-12 col-sm-5 col-md-4">
<br/><br/><br/><br/>

<form action="perform_login" method="post">
<table class="table table-bordered" align="center">
<thead>
	<tr bgcolor='yellow'>
		<th colspan="2"><b>Login Dialog</th>
	</tr>
	<tr>
		<td>Login Name</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr >
		<td colspan="2">
			
<center>
<input type ="submit" value="Login" class="btn btn-info"/>
</center>			
		</td>
	</tr>
	
</table>
</form>
</div>
	
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="contactus">ContactUs</a>
    </li>
  </ul>
</nav>

</div>
</div>
</body>
</html>