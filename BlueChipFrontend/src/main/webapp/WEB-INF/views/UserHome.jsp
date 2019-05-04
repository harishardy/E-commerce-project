<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container">

<div class="row text-center text-lg-left">
	<c:forEach items="${productlist}" var="product">
		<div class="col-lg-4 col-md-4 col-xm-6 col-xs-12">
		<a href="<c:url value="/totalproductdisplay/${product.productId}"/>">
		<img class="img-fluid img-thumbnail" src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="200" height="200"/>
		</a>
		<p><strong>${product.productName}</strong></p>
		<p>Price :INR ${product.price}/-</p>
		
		<p>Stock : <c:if test="${product.stock > 0}">
					${product.stock}
					</c:if>
					<c:if test="${product.stock <= 0}">
					<font color="red">Out Of Stock</font>
					</c:if>
					</p>
		</div>
		
	</c:forEach>
</div>

</div>
</body>
</html>