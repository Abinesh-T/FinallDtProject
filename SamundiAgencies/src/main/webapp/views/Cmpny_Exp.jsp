<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<script>
	function sum() {
		var Tea = document.getElementById('Tea').value;
		var Salary = document.getElementById('Salary').value;
		var Diesel = document.getElementById('Diesel').value;
		var Advance = document.getElementById('Advance').value;
		var Others = document.getElementById('Others').value;
		var Sales = document.getElementById('Sales').value;
		var OpeningAmount = document.getElementById('OpeningAmount').value;
		var result = parseInt(Tea) + parseInt(Salary)+parseInt(Diesel)+parseInt(Advance)+parseInt(Others);
		var dif =parseInt(Sales)- (parseInt(OpeningAmount)+parseInt(result));
		if (!isNaN(result)) {
			document.getElementById('Expenses').value = result;
			document.getElementById('TotalSales').value = dif;
		}
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="Cmpny_Exp_submit" method="post">
		<div class="form-group">
			<label for="email">OpeningAmount:</label> <input type="text"
				class="form-control" id="OpeningAmount"
				placeholder="Enter OpeningAmount" name="OpeningAmount" required>
		</div>
		<div class="form-group">
			<label for="pwd">Expenses:</label> <input type="text"
				class="form-control" id="Expenses" placeholder="Enter Expenses"
				name="Expenses" readonly required>
		</div>

		<div class="form-group">
			<div>
				<label for="pwd">Tea:</label> <input type="text"
					class="form-control" id="Tea" placeholder="Enter Tea amount"
					name="Tea" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Salary:</label> <input type="text"
					class="form-control" id="Salary" placeholder="Enter Salary"
					name="Salary" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Diesel :</label> <input type="text"
					class="form-control" id="Diesel" placeholder="Enter Diesel"
					name="Diesel" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Advance :</label> <input type="text"
					class="form-control" id="Advance" placeholder="Enter Advance"
					name="Advance" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Others:</label> <input type="text"
					class="form-control" id="Others" placeholder="Enter Others"
					name="Others" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Sales:</label> <input type="text"
					class="form-control" id="Sales" placeholder="Enter Sales"
					name="Sales" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">TotalSales:</label> <input type="text"
					class="form-control" id="TotalSales" placeholder="Enter TotalSales"
					name="TotalSales" readonly required>
			</div>
		</div>

		<div class="col-sm-12 form-group">
			<center>
				<button type="submit" class="btn btn-lg btn-info">Submit</button>
				<button type="reset" class="btn btn-lg btn-info">Clear</button>
			</center>
		</div>
	</form>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>