<%@include file="Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container">

<form:form action="UpdateProduct" modelAttribute="product" method="post">
<table align="center" class="table table-bordered">

<tr class="info">

<td colspan="2"><center>Enter Product</center></td>
</tr>
<tr>
<td>Product Name</td>
<td><form:input path="productName"/></td>
</tr>

<tr>
<td>Product Description</td>
<td><form:input path="productDesc"/></td>
<tr>


<tr>
<td>Stock</td>
<td><form:input path="stock"/></td>
</tr>

<tr>
<td>Price</td>
<td><form:input path="price"/></td>
</tr>

<tr>
<td>Category</td>
<td>
<form:select path="categoryId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${categoryList}"/>
			</form:select></td>
</tr>

<tr>

<td>Supplier</td>
<td>
<form:select path="supplierId">
				<form:option value="0" label="--select list--"/>
				<form:options items="${supplierList}"/>
			</form:select>
</td>
</tr>


<tr>
<td colspan="2">
<center>
<input type="submit" value="Update Product" class="btn btn-success">
</center>
</td>
</tr>



</table>
</form:form>
</div>