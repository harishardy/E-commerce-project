<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/views/Header.jsp"%>


<form action="<c:url value="/updateCategory"/>"method="post">
<table align="center">
	<tr>
		<td colspan="2"><center>Category Detail</center></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catid"value="$(category.categoryId)"readonly/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName"value="$(category.categoryName)"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><textarea cols=30 rows="6" name="CatDesc">$(category.categoryDesc)</textarea></td>
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


</body>
</html>