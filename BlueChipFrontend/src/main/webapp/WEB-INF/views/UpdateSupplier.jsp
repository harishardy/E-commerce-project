<%@include file="Header.jsp"%>


<form action="<c:url value="/updateSupplier"/>" method="post">
<table align="center">
	<tr>
		<h3><center>Supplier Detail</center></h3>
	</tr>
	
	<tr>
		<td>Supplier Id</td>
		<td><input type="number" name="supId" value="${supplier.supplierId}"readonly/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supName" value="${supplier.supplierName}"/></td>
	</tr>
	<tr>
		<td>Supplier Address</td>
		<td><textarea cols=30 rows="6" name="supAddr">${supplier.supplierAddr}</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<center>
		<input type="submit" value="Update Supplier"/>
		</center>
		</td>
	</tr>
</table>
</form>


</body>
</html>