<%@include file="Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container">


<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="post">
<table align="center" class="table table-bordered">
	<tr>
		<td colspan="7"><h3><center> Add Product Detail</center></h3></td>
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
		
		<td><form:input path="productName"/></td>
		<td><form:input path="productDesc"/></td>
		<td><form:input path="stock"/></td>
		<td><form:input path="price"/></td>
		<td>
			<form:select path="categoryId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${categoryList}"/>
			</form:select>
		</td>
		<td><form:select path="supplierId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${supplierList}"/>
			</form:select>
		</td>
		<td><input type="submit" value="Insert Product"/></td>
	</tr>
	
</table>
</form:form>




<table align="center" class="table table-bordered">

<tr>
	<td colspan="8"><h3><center>Product Detail</center></h3></td>
</tr>

<tr>

	<td><h4>ID</h4></td>
	
	<td><h4>Name</h4></td>
	
	<td><h4>Description</h4></td>
	
	<td><h4>Stock</h4></td>

	<td><h4>Price</h4></td>
	
	<td><h4>Category</h4></td>
	
	<td><h4>Supplier</h4></td>
	
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${listProducts}" var="product">
<tr>
	
	<td>${product.productId}</td>
	
	<td>${product.productName}</td>
	
	<td>${product.productDesc}</td>
	
	<td>${product.stock}</td>

	<td>${product.price}</td>
	
	<td>${product.categoryId}</td>
	
	<td>${product.supplierId}</td>
	
	<td>
		<a href="<c:url value="/editProduct/${product.productId}"/>">Edit</a> / 
		<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
	</td>
</tr>
</c:forEach>
</table>
</div>

