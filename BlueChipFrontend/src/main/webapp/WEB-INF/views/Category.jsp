<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="<c:url value="/addCategory"/>"method="post">
<table align="center">

	<tr>
		<td colspan="2"><center>Category Detail</center></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName"id="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><textarea cols=30 rows="6" name="CatDesc"></textarea></td>
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

