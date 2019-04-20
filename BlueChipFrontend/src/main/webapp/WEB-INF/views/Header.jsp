<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>BlueChip=${title}</title>
</head>
<body>

<table style="width:100%">
<tr>
<th align="left">
<a href="<c:url value='/'/>"><input type="submit" value="Home"/></a>
<a href="<c:url value='/category'/>"><input type="submit" value="Category"/></a>
<a href="<c:url value='/product'/>"><input type="submit" value="Product"/></a>
<a href="<c:url value='/supplier'/>"><input type="submit" value="Supplier"/></a>
</th>
<th align="right">
<a href="<c:url value='/login'/>"><input type="submit" value="Login"/></a>
<a href="<c:url value='/register'/>"><input type="submit" value="Register"/></a>

</th>
</tr>
</table>




</body>
</html>