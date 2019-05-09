<%@ page language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<div class="w3-container">
  <h2>Hello, ${sessionScope.username}</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active" >
        <img src="<c:url value="/resources/images/headphones.jpg"/>"alt="HEAD PHONES" style="width:100%;">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/earphone.jpg"/>" alt="EAR PHONES" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/smartspeaker.jpg"/>" alt="SMART SPEAKER" style="width:100%;">
      </div>
        <div class="item">
        <img src="<c:url value="/resources/images/smartwatch.jpg"/>" alt="SMART WATCH" style="width:100%;">
      </div>
        <div class="item">
        <img src="<c:url value="/resources/images/macbook.jpg"/>" alt="MACBOOK" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<p></p>


<div class="w3-container">

<div class="row text-center text-lg-left">

	<c:forEach items="${categorylist}" var="category">
		<div class="col-lg-4 col-md-4 col-xm-6 col-xs-12">
			 	<a href="<c:url value="/productCategoryWise/${category.categoryId}"/>">
			 	<img class="img-fluid img-rounded" src="<c:url value="/resources/images/${category.categoryId}.jpg"/>" width="250" height="250"/>
			 	</a>
			 	<h4><strong>${category.categoryName}</strong></h4>
			 	<p>Number of Products : 7</p>
			 	
			 	<p>    </p>
			 	</div>
			 	</c:forEach>
			 	
			 	
</div>
</div>




