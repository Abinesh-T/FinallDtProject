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

<style type="text/css">
@media print {
	* {
		display: none;
	}
	#printableTable {
		display: block;
	}
}
</style>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	<div id="printableTable">
		<h2 align="center">Reports</h2>
		<table class="table table-striped table-bordered dt-responsive nowrap">

			<thead>
				<tr>
					<th>Actions</th>
					<th>User</th>
					<th>Id</th>
					<th>Date</th>
					<th>OpeningAmount</th>
					<th>Expenses</th>
					<th>Tea</th>
					<th>Salary</th>
					<th>Diesel</th>
					<th>Advance</th>
					<th>Others</th>
					<th>Sales</th>
					<th>TotalSales</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lp}" var="u">
					<tr>
						<td><a class="fa fa-pencil-square-o"
							href="./CompanyExpense_edit?id=${u.id}"> </a></td>
						<td>${u.getUser() }</td>
						<td>${u.getId() }</td>
						<td>${u.getDate() }</td>
						<td>${u.getOpeningAmount() }</td>
						<td>${u.getExpenses() }</td>
						<td>${u.getTea() }</td>
						<td>${u.getSalary() }</td>
						<td>${u.getDiesel() }</td>
						<td>${u.getAdvance() }</td>
						<td>${u.getOthers() }</td>
						<td>${u.getSales() }</td>
						<td>${u.getTotalSales() }</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<iframe name="print_frame" width="0" height="0" frameborder="0"
		src="about:blank"></iframe>
	<center>
		<button class="btn btn-lg btn-info" onclick="printDiv()">Print</button>
	</center>
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
	<script type="text/javascript">
		function printDiv() {
			window.frames["print_frame"].document.body.innerHTML = document
					.getElementById("printableTable").innerHTML;
			window.frames["print_frame"].window.focus();
			window.frames["print_frame"].window.print();
		}
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>