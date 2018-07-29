<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="RetailerUploadSubmit" method="post">
		<div class="form-group">
			<label for="email">ShopName:</label> <input type="text"
				class="form-control" id="ShopName"
				placeholder="Enter ShopName" name="ShopName" required>
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