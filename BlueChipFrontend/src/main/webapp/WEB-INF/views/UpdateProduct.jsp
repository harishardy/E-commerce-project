<%@include file="Header.jsp"%>


<form action="<c:url value="/updateProduct"/>" method="post">
<table align="center">
	<tr>
		<h3><center>Product Detail</center></h3>
	</tr>
	
	<tr>
		<td>Product Id</td>
		<td><input type="number" name="proId" value="${product.productId}"readonly/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><input type="text" name="proName" value="${product.productName}"/></td>
	</tr>
	<tr>
		<td>Product Description</td>
		<td><textarea cols=30 rows="6" name="proDesc">${product.productDesc}</textarea></td>
	</tr>
	<tr>
		<td>Product Stock</td>
		<td><input type="number" name="stock" value="${product.stock}"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><input type="number" name="price" value="${product.price}"/></td>
	</tr>
	<tr>
		<td>Category Id</td>
		<td><input type="number" name="catId" value="${product.categoryId}"/></td>
	</tr>
	<tr>
		<td>Supplier Id</td>
		<td><input type="number" name="suppId" value="${product.supplierId}"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<center>
		<input type="submit" value="Update Product"/>
		</center>
		</td>
	</tr>
</table>
</form>


</body>
</html>