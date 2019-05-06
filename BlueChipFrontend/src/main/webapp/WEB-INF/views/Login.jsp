<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>

<div class="container">
<form action="perform_login" method="post">
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
		<input type="submit" value="login" class="btn btn-success"/>
		</center>
	</td>
</tr>

</table>
</form>
</div>
</body>
</html>