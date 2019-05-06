<%@ page language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GadgetsGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>


<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp">GadgetsGo</a>
</div>
<ul class="nav navbar-nav">
<c:if test="${!sessionScope.loggedIn}">
<li><a href="index.jsp">Home</a></li>
<li><a href="aboutUs.jsp">About Us</a></li>

<li><a href="<c:url value='/productDisplay'/>">Products</a></li>
</c:if>


<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
<li><a href="<c:url value='/category'/>">Manage Category</a></li>
<li><a href="<c:url value='/product'/>">Manage Product</a></li>
<li><a href="<c:url value='/supplier'/>">Manage Supplier</a></li>
</c:if>
<c:if test="${sessionScope.role=='ROLE_USER'}">
<li><a href="<c:url value='/showCart'/>"><span class="glyphicon glyphicon-shopping-cart">Cart(${sessionScope.cartSize})</span></a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
<ul class="dropdown-menu">
			<c:forEach items="${sessionScope.categorylist}" var="category">
			 	<li><a href="<c:url value='/productCategoryWise/${category.categoryId}'/>">${category.categoryName}</a></li>
			 	</c:forEach>
			 </ul>
</li>
<li><a href="<c:url value='/productDisplay'/>">Products</a></li>
</c:if>
</c:if>
</ul>
<c:if test="${!sessionScope.loggedIn}">
<ul class="nav navbar-nav navbar-right">
<li><a href="<c:url value='/register'/>"><span class="glyphicon glyphicon-register"></span>Sign Up</a></li>
<li><a href="<c:url value='/login'/>"><span class="glyphicon glyphicon-login"></span>LogIn</a></li>
</ul>
</c:if>

<c:if test="${sessionScope.loggedIn}">
<ul class="nav navbar-nav navbar-right">
<li><a href=""><span class="glyphicon glyphicon-user"></span>${sessionScope.username}</a></li>
<li><a href="<c:url value='/perform_logout'/>"><span class="glyphicon glyphicon-logout"></span>Logout</a></li>
</ul>
</c:if>

</div>
</nav>
</body>
</html>