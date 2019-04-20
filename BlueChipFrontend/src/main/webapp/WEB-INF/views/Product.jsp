<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<form action="<c:url value="/addProduct"/>" method="post">
<table align="center">
	<tr>
		<h3><center> Add Product Detail</center></h3>
	</tr>
	<tr>
		
		<td><h4>Product Name</h4></td>
		<td><h4>Product Description</h4></td>
		<td><h4>Product Stock</h4></td>
		<td><h4>Product Price</h4></td>
		<td><h4>Category Id</h4></td>
		<td><h4>Supplier Id</h4></td>
		<td><h4>Operation</h4></td>
	</tr>
	<tr>
		
		<td><input type="text" name="proName" id="proName"/></td>
		<td><input type="text" name="proDesc"/></td>
		<td><input type="number" name="stock"/></td>
		<td><input type="number" name="price"/></td>
		<td><input type="number" name="catId"/></td>
		<td><input type="number" name="suppId"/></td>
		<td><input type="submit" value="Add Product"/></td>
	</tr>
	
</table>
</form>



<table align="center">

<tr>
	<h3><center>Product Detail</center></h3>
</tr>

<tr>

	<td><h4>ID</h4></td>
	<td></td>
	<td></td>
	<td><h4>Name</h4></td>
	<td></td>
	<td></td>
	<td><h4>Description</h4></td>
	<td></td>
	<td></td>
	<td><h4>Stock</h4></td>
	<td></td>
	<td></td>
	<td><h4>Price</h4></td>
	<td></td>
	<td></td>
	<td><h4>Category</h4></td>
	<td></td>
	<td></td>
	<td><h4>Supplier</h4></td>
	<td></td>
	<td></td>
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${listProducts}" var="product">
<tr>
	
	<td>${product.productId}</td>
	<td></td>
	<td></td>
	<td>${product.productName}</td>
	<td></td>
	<td></td>
	<td>${product.productDesc}</td>
	<td></td>
	<td></td>
	<td>${product.stock}</td>
	<td></td>
	<td></td>
	<td>${product.price}</td>
	<td></td>
	<td></td>
	<td>${product.categoryId}</td>
	<td></td>
	<td></td>
	<td>${product.supplierId}</td>
	<td></td>
	<td></td>
	<td>
		<a href="<c:url value="/editProduct/${product.productId}"/>"><input type="submit" value="Edit"/></a> / 
		<a href="<c:url value="/deleteProduct/${product.productId}"/>"><input type="submit" value="Delete"/></a>
	</td>
</tr>
</c:forEach>
</table>

