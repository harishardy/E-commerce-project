<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/views/Header.jsp" %>
<%@include file="/WEB-INF/views/Carousel.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>Hub For Gadgets Shopping</h1>
  <p>Trusted Tech products With Verified Certificates</p> 
</div>


<div class="w3-container">
  <div class="col-lg-4 col-md-4 col-xm-6 col-xs-12">
  <a href="<c:url value='/productDisplay'/>">           
  <img src="<c:url value="/resources/images/1000.jpg"/>" class="img-rounded"  alt="Cinque Terre" width="400" height="400"> </a>
 <h2><center><strong>Gadgets</strong></center></h2>	
 	</div>
 	</div>
  
  <div class="w3-container">
  <div class="col-lg-4 col-md-4 col-xm-6 col-xs-12">
  <a href="<c:url value='/productDisplay'/>">  
  <img src="<c:url value="/resources/images/2000.jpg"/>" class="img-rounded"  alt="Cinque Terre" width="400" height="400"></a>
  <h2><center><strong>Categories</strong></center></h2>
  </div>
  </div>
  
  
  <div class="w3-container">
  <div class="col-lg-4 col-md-4 col-xm-6 col-xs-12">
  <a href="<c:url value='/productDisplay'/>">  
  <img src="<c:url value="/resources/images/3000.jpg"/>" class="img-rounded"  alt="Cinque Terre" width="400" height="400"></a>
  <h2><center><strong>Products</strong></center></h2>
  </div>
 
</div>










  
<div class="w3-container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Smart Phones</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Drones</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Speakers</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>



<div class="w3-container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Smart Lights</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Ear Phones</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Cameras</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>




<div class="w3-container">
  <div class="row">
    <div class="col-sm-4">
      <h3>VR Headsets</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Smart Watches</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Laptops</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>











<div class="jumbotron text-center">
  <h1>GadgetsGo.com</h1>
  <p>Australia  /  Brazil / Canada / China / France / Germany / Italy / Japan / Mexico / Netherlands / Spain / UnitedArab / Emirates / United Kingdom / United States</p> 
</div>

</body>
</html>

