<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

<form action="<c:url value="/addCategory"/>" method="post">
<table align="center" class="table table-bordered">
	<tr bgcolor="grey">
		<td colspan="3"><h3><center> Add Category Detail</center></h3></td>
	</tr>
	<tr>
		
		<td><h4>Category Name</h4></td>
		<td><h4>Category Description</h4></td>
		<td><h4>Operation</h4></td>
	</tr>
	<tr>
		
		<td><input type="text" name="catName" id="catName"/></td>
		<td><textarea cols=30 rows="1" name="catDesc"></textarea></td>
		<td><input type="submit" value="Add Category"/></td>
	</tr>
	
</table>
</form>



<table align="center" class="table table-bordered">

<tr>
	<td colspan="4"><h3><center>Category Detail</center></h3></td>
</tr>

<tr>

	<td><h4>ID</h4></td>
	
	<td><h4>Name</h4></td>
	
	<td><h4>Description</h4></td>
	
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${listCategories}" var="category">
<tr>
	
	<td>${category.categoryId}</td>
	
	<td>${category.categoryName}</td>
	
	<td>${category.categoryDesc}</td>
	
	<td>
		<a href="<c:url value="/editCategory/${category.categoryId}"/>">Edit</a> / 
		<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
	</td>
</tr>
</c:forEach>
</table>
</div>
