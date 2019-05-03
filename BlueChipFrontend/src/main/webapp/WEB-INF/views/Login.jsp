<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>

	
<html>
<body>


<div class="container">
<form action="<c:url value="/receipt"/>" method="post">
<table class="table table-bordered">
<tr class="success">
<td colspan="12"><center><strong>Sign in Here</strong></center></td>
</tr>

<tr>
<td colspan="6"> User Name</td>
<td colspan="6"><input type="text" name="username"/></td>
</tr>

<tr>
<td colspan="6"> Password</td>
<td colspan="6"><input type="password" name="password"/></td>
</tr>


<tr>
	<td colspan="12">
		<center>
		<input type="submit" value="Login" class="btn"/>
		</center>
	</td>
</tr>

</table>
</form>
</div>
</body>
</html>