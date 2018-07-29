<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/security/tags" prefix="sec" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<!-- To Access the Bootstrap link -->

<link rel="stylesheet" href="../resources/css/headercss.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<script>
	function sum() {
		var Total = document.getElementById('Total').value;
		var Paid = document.getElementById('Paid').value;
		var result = parseInt(Total) - parseInt(Paid);
		if (!isNaN(result)) {
			document.getElementById('Balance').value = result;
		}
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="IceBalancesubmit" method="post">
		<div class="form-group">
			<label for="pwd">ShopName:</label><select id="ShopName" name="ShopName" class="form-control">

				<c:forEach items="${lp}" var="u">
			
					<option value="${u.getShopName()}">${u.getShopName()}</option>
				</c:forEach>
			</select>
		</div>
		<div class="form-group">
			<label for="pwd">CareOf:</label> <input type="text"
				class="form-control" id="CareOf" placeholder="Enter CareOf"
				name="CareOf" required>
		</div>

		<div class="form-group">
			<div>
				<label for="pwd">Total :</label> <input type="text"
					class="form-control" id="Total" placeholder="Enter Total"
					name="Total" onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Paid:</label> <input type="text"
					class="form-control" id="Paid" placeholder="Enter Paid" name="Paid"
					onkeyup="sum();" required>
			</div>
			<div>
				<label for="pwd">Balance:</label> <input type="text"
					class="form-control" id="Balance"
					placeholder="Enter Balance amount" name="Balance" readonly
					onkeyup="sum();" required>
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