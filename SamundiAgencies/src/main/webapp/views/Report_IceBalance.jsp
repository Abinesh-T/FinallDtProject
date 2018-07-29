<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Techtronixs</title>
<!-- datatable -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="../resources/css/dataTables.bootstrap.min.css" />


<link rel="stylesheet" type="text/css"
	href="../resources/css/datatables.css" />


<link rel="stylesheet" type="text/css"
	href="../resources/css/datatables.min.css" />

<!-- end -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	<h2 align="center">Reports</h2>
	<table class="table table-striped table-bordered dt-responsive nowrap">

		<thead>
			<tr>
				<th>Actions</th>
				<th>Id</th>
				<th>Date</th>
				<th>ShopName</th>
				<th>CareOf</th>
				<th>Total</th>
				<th>Paid</th>
				<th>Balance</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${lp}" var="u">
				<tr>
					<td><a class="fa fa-pencil-square-o"
						href="./ReportIceBalanceEdit?id=${u.id}"> </a></td>
					<td>${u.getId() }</td>
					<td>${u.getDate() }</td>
					<td>${u.getShopName() }</td>
					<td>${u.getCareOf() }</td>
					<td>${u.getTotal() }</td>
					<td>${u.getPaid() }</td>
					<td>${u.getBalance() }</td>
					</tr>
			</c:forEach>
		</tbody>

	</table>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="../resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../resources/js/dataTables.bootstrap.min.css"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.table').DataTable();
		});
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>