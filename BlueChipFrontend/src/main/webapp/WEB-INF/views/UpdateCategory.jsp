<%@include file="Header.jsp"%>


<form action="<c:url value="/updateCategory"/>" method="post">
<table align="center">
	<tr>
		<td colspan="2"><center>Category Detail</center></td>
	</tr>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${category.categoryId}" readonly/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" value="${category.categoryName}"/></td>
	</tr>
	<tr>
		<td>Category Description</td>
		<td><textarea cols=30 rows="6" name="catDesc">${category.categoryDesc}</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<center>
		<input type="submit" value="Update Category"/>
		</center>
		</td>
	</tr>
</table>
</form>


</body>
</html>