<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>



<div class="container">
<form action="registerUser" method="post">
<table class="table table-bordered">

    
   
<tr bgcolor="grey">
<td colspan="12"><center><strong>Sign up Here</strong></center></td>
</tr>   
   
   
   
   
    
<tr>
<td colspan="6"> User Name</td>
<td colspan="6"><input type="text" placeholder="Enter username" name="username" required/></td>
</tr>


<tr>
<td colspan="6"> E-mail ID</td>
<td colspan="6"><input type="text" placeholder="Enter E-mail Id" name="email" required/></td>
</tr>


<tr>
<td colspan="6"> Address</td>
<td colspan="6"><input type="text" placeholder="Enter Address" name="address" required/></td>
</tr>


<tr>
<td colspan="6"> Mobile.No</td>
<td colspan="6"><input type="text" placeholder="Enter Mobile.No" name="mobile" required/></td>
</tr>


<tr>
<td colspan="6"> Password</td>
<td colspan="6"><input type="text" placeholder="Enter Password" name="password" required/></td>
</tr>
    
    
    
<tr>
	<td colspan="12">
		<center>
		<input type="submit" value="register" class="btn"/>
		</center>
	</td>
</tr>
    

 
 
 
<div class="container signin">
    <p>Already have an account? <a href="login">Sign in</a>.</p>
</div>


   
  
</form>
</body>
</html>