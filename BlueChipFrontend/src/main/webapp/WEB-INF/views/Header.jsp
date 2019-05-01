<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>GadgetsGo=${title}</title>
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
      <li class="active"><a href="/BlueChipFrontend">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/categoryList'/>">Category List<span class="caret"></span></a>
        <ul class="dropdown-menu">
        
			<c:forEach items="${categorylist}" var="category">
			 	<li><a href="#">${category.categoryName}</a></li>
			 	</c:forEach>
			

        </ul>
      </li>
     
      <li><a href="<c:url value='/productdisplay'/>">Products</a></li>
      <li><a href="<c:url value='/category'/>">Manage Category</a></li>
      <li><a href="<c:url value='/product'/>">Manage Product</a></li>
      <li><a href="<c:url value='/supplier'/>">Manage Supplier</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/register'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<c:url value='/login'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  









</body>
</html>