<%@include file="Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container">

<table  align="center" class=" table table-bordered">

<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="post">


	
	<tr bgcolor="grey">
		<td colspan="8"><h3><center> Add Product Detail</center></h3></td>
	</tr>
	
	

	
	
	
		<tr>
		<td><h4>Product Name</h4></td>
		<td><form:input path="productName"/></td>
		</tr>
		
		
		<tr>
		<td><h4>Product Description</h4></td>
		<td><form:input path="productDesc"/></td>
		</tr>
		
		<tr>
		<td><h4>Product Stock</h4></td>
		<td><form:input type="number" path="stock"/></td>
		</tr>
		
		<tr>
		<td><h4>Product Price</h4></td>
		<td><form:input type="number" path="price"/></td>
		</tr>
		
		
		<tr>
		<td><h4>Category Id</h4></td>
		<td>
			<form:select path="categoryId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${categoryList}"/>
			</form:select>
		</td>
		</tr>
		
		
		<tr>
		<td><h4>Supplier Id</h4></td>
		<td><form:select path="supplierId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${supplierList}"/>
			</form:select>
		
		</td>
		</tr>
		
		<tr>
		<td><h4>Product Image</h4></td>
		<td><form:input type="file" path="pimage"/></td>
		</tr>
		
		
		
		<tr>
		<td><h4>Operation</h4></td>
		<td><input type="submit" value="Insert Product"/></td>
		</tr>

	

</form:form>

</table>

</div>

<div class="container">

<table align="center" class="table table-bordered">

<tr>
	<td bgcolor="grey" colspan="9"><h3><center>Product Detail</center></h3></td>
</tr>

<tr>

	<td><h4>ID</h4></td>
	
	<td><h4>Name</h4></td>
	
	<td><h4>Description</h4></td>
	
	<td><h4>Stock</h4></td>

	<td><h4>Price</h4></td>
	
	<td><h4>Category</h4></td>
	
	<td><h4>Supplier</h4></td>
	
	<td><h4>Image</h4></td>
	
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${productList}" var="product">
<tr>
	
	<td>${product.productId}</td>
	
	<td>${product.productName}</td>
	
	<td>${product.productDesc}</td>
	
	<td>${product.stock}</td>

	<td>${product.price}</td>
	
	<td>${product.categoryId}</td>
	
	<td>${product.supplierId}</td>
	
	<td><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="60" height="40"/></td>
	
	<td>
		<a href="<c:url value="/editProduct/${product.productId}"/>">
		
		<input type="submit" value="EDIT" class="btn"/> &nbsp;&nbsp;&nbsp; </a>
		 
		<a href="<c:url value="/deleteProduct/${product.productId}"/>">
		
		<input type="submit" value="DELETE" class="btn"/>  </a>
		
	</td>
</tr>
</c:forEach>
</table>

</div>
