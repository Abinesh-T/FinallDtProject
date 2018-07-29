<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript"></script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<center>
			<h2>Report Filter</h2>
			<p>Enter the from and to date for filtering the reports</p>
			<form action="Report_Cmpny_Exp_Data" method="post">
				<input type="date" name="fDate"> <input type="date"
					name="tDate">
				<div class="col-sm-12 form-group">
					<center>
						<button type="submit" class="btn btn-lg btn-info">Submit</button>
						<button type="reset" class="btn btn-lg btn-info">Clear</button>
					</center>

				</div>
			</form>
		</center>
	</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>