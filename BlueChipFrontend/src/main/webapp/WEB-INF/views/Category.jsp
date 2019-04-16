<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="<c:url value="/addCategory"/>" method="post">
<table align="center">
	<tr>
		<td colspan="2"><center>Category Detail</center></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" id="catName"/></td>
	</tr>
	<tr>
		<td>Category Description</td>
		<td><textarea cols=30 rows="6" name="catDesc"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<center>
		<input type="submit" value="Add Category"/>
		</center>
		</td>
	</tr>
</table>
</form>

<table align="center">

<tr>
	<td colspan="4"><center>Category Detail</center></td>
</tr>

<tr>
	<td>ID</td>
	<td>Name</td>
	<td>Description</td>
	<td>Operation</td>
</tr>

<c:forEach items="${listCategories}" var="category">
<tr>
	<td>${category.categoryId}</td>
	<td>${category.categoryName}</td>
	<td>${category.categoryDesc}</td>
	<td>
		<a href="<c:url value="/editCategory/${category.categoryId}"/>">EDIT</a>
		<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">DELETE</a>
	</td>
</tr>
</c:forEach>
</table>

