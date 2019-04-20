<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<form action="<c:url value="/addSupplier"/>" method="post">
<table align="center">
	<tr>
		<h3><center> Add Supplier Detail</center></h3>
	</tr>
	<tr>
		
		<td><h4>Supplier Name</h4></td>
		<td><h4>Supplier Address</h4></td>
		<td><h4>Operation</h4></td>
	</tr>
	<tr>
		
		<td><input type="text" name="supName" id="supName"/></td>
		<td><textarea cols=30 rows="1" name="supAddr"></textarea></td>
		<td><input type="submit" value="Add Supplier"/></td>
	</tr>
	
</table>
</form>



<table align="center">

<tr>
	<center><h3>Supplier Detail</h3></center>
</tr>

<tr>

	<td><h4>ID</h4></td>
	<td></td>
	<td></td>
	<td><h4>Name</h4></td>
	<td></td>
	<td></td>
	<td><h4>Address</h4></td>
	<td></td>
	<td></td>
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${listSuppliers}" var="supplier">
<tr>
	
	<td>${supplier.supplierId}</td>
	<td></td>
	<td></td>
	<td>${supplier.supplierName}</td>
	<td></td>
	<td></td>
	<td>${supplier.supplierAddr}</td>
	<td></td>
	<td></td>
	<td>
		<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"><input type="submit" value="Edit"/></a> / 
		<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"><input type="submit" value="Delete"/></a>
	</td>
</tr>
</c:forEach>
</table>
