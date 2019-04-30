<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<br>  
	 
<hr>
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
			<article class="gallery-wrap"> 
				<div class="img-big-wrap">
  				<div> <a href="#">
  					<img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="200"></a>
  				</div>
  				</div>
			</article>
		</aside>
		
		
<aside class="col-sm-7">
	<article class="card-body p-5">
		<h3 class="title mb-3">${product.productName}</h3>
		

<p class="price-detail-wrap"> 
	<span class="price h3 text-warning"> 
		<span class="currency">INR</span><span class="num">${product.price}</span>
	</span> 
</p> 


<dl class="item-property">
  <dt>Description</dt>
  <dd>
  <p>${product.productDesc} </p>
  </dd>
</dl>


<dl class="param param-feature">
  <dt>Stock</dt>
  <dd>${product.stock}</dd>
</dl> 


<dl class="param param-feature">
  <dt>Supplier</dt>
  <dd>${product.supplierId}</dd>
</dl> 


<dl class="param param-feature">
	<dt>Category</dt>
	<dd>${product.categoryId}</dd>
</dl>

<hr>
	<div class="row">
		<div class="col-sm-5">
			<dl class="param param-inline">
			  <dt>Quantity: </dt>
			  <dd>
			  	<select class="form-control form-control-sm" style="width:70px;">
			  		<option> 1 </option>
			  		<option> 2 </option>
			  		<option> 3 </option>
			  	</select>
			  </dd>
			  </dl>
		</div> 
	</div> 
<hr>
		<input type="submit" class="btn btn-success btn-lg btn-outline-primary text-uppercase" value="Add To Cart">
	 
</article> 
</aside> 
</div>
</div>
</div>




