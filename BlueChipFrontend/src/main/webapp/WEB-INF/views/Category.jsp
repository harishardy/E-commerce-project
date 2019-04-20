<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<form action="<c:url value="/addCategory"/>" method="post">
<table align="center">
	<tr>
		<h3><center> Add Category Detail</center></h3>
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



<table align="center">

<tr>
	<center><h3>Category Detail</h3></center>
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
	<td><h4>Operation</h4></td>
</tr>

<c:forEach items="${listCategories}" var="category">
<tr>
	
	<td>${category.categoryId}</td>
	<td></td>
	<td></td>
	<td>${category.categoryName}</td>
	<td></td>
	<td></td>
	<td>${category.categoryDesc}</td>
	<td></td>
	<td></td>
	<td>
		<a href="<c:url value="/editCategory/${category.categoryId}"/>"><input type="submit" value="Edit"/></a> / 
		<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"><input type="submit" value="Delete"/></a>
	</td>
</tr>
</c:forEach>
</table>

