<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<script>
	function sum() {
		var Cost = document.getElementById('Cost').value;
		var result = parseInt(Cost)-(parseInt(Cost)*0.18);
		var res = parseInt(Cost)-(parseInt(Cost)*0.2375);
		if (!isNaN(result)) {
			document.getElementById('BillingRate').value = result;
			document.getElementById('RetailerBillingRate').value = res;
		}
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="ProductSubmit" method="post">
		<div class="form-group">
			<label for="email">Name:</label> <input type="text"
				class="form-control" id="Name"
				placeholder="Enter Name" name="Name" required>
		</div>
		<div class="form-group">
			<div>
				<label for="pwd">Cost:</label> <input type="text"
					class="form-control" id="Cost" placeholder="Enter Cost amount"
					name="Cost" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">BillingRate:</label> <input type="text"
					class="form-control" id="BillingRate" placeholder="Enter BillingRate"
					name="BillingRate" onkeyup="sum();" readonly required>
			</div>
			<div>
				<label for="pwd">RetailerBillingRate :</label> <input type="text"
					class="form-control" id="RetailerBillingRate" placeholder="Enter RetailerBillingRate"
					name="RetailerBillingRate" onkeyup="sum();" readonly required>
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