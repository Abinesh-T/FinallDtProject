<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="icon" href="./resources/images/Arun_brandings/Hatsun_icon.jpg">

    <title>Hatsun_Daily</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style> 
.high{width:100px; image-resolution:25dpi; } 
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
  .backgroundclr
  { 
    background-color: #59503e;
  }
</style>

<!-- datatable -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css" href="./resources/css/dataTables.bootstrap.min.css"/>

<link rel="stylesheet" type="text/css" href="./resources/css/ss.css"/>


<link rel="stylesheet" type="text/css" href="./resources/css/datatables.css"/>


<link rel="stylesheet" type="text/css" href="./resources/css/datatables.min.css"/>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="./resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="./resources/js/dataTables.bootstrap.min.css"></script>

<script type="text/javascript">
$(document).ready(function(){
    $('.table').DataTable();
});
</script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <img class="" src="./resources/images/Arun_brandings/Home_Icon.png" >
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li class="dropdown" style="font-family:Times New Roman"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"  style="font-size:20px;color:white">Categorys <span class="caret"></span></a>
					<ul class="dropdown-menu">
									
						<c:forEach items="${clist}" var="p">
						 <li><a href="categoryproductlist?id=${p.categoryid}">${p.categoryname}</a></li> 
						 <%-- <li><a href='<c:url value="categoryproductlist?id=${p.categoryid}">${p.categoryname}"/>'</a></li> --%>
						</c:forEach>
	 </li>
      <li><a href="ProductAdding">ManageProducts</a></li>
      <li><a href="AddCategory">ManageCategory</a></li>
      <li><form  class="form-inline mt-2 mt-md-4">
            <input class="form-control mr-sm-6" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-2" type="submit">Search</button>
          </form></li>
      </ul>
  <!-- <li><a href="<c:url value="admin/productlistview"/>" style="font-family: fantasy;">PRODUCTLIST</a>-->
			
			
				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
                
			  <ul class="nav navbar-nav navbar-right">
			  <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li>
					<%-- <a href=' <c:url value="/login" />'>Login</a> --%>
					</li>
					<li ><a href="<c:url value="admin/add"/>" role="button" aria-haspopup="true"
					aria-expanded="false" class="fa fa-user" style="font-size:20px;color:white">Login</a> </li>
				<li style="font-family:Times New Roman"><a href=' <c:url value="/reg" />'class="fa fa-users" style="font-size:20px;color:white">Signup</a></li>
				
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />'>Signout</a></li>
                 </c:if>
				 
				</ul>
  </div>
</nav>
</body>
</html>