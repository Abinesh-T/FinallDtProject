<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div  class="container">
		<form  action="product_update" method="post">
			<div class="form-group">
				<label for="email">Token_ID:</label> <input type="text"
					class="form-control" value="${u.userid}" id="Userid" placeholder="Enter ID"
					name="Userid"  readonly="readonly">
					</div>
			<div class="form-group">
				<label for="email">Name:</label> <input type="text"
					class="form-control" id="Name" placeholder="Enter Name"
					name="Name" value="${u.getName() }" required>
					</div>
			<div class="form-group">
				<label for="pwd">Sample Type:</label> <input type="text"
					class="form-control" id="Sample_Type" placeholder="Enter Sample Type"
					name="Sample_Type" value="${u.getSample_type() }" required>
			</div>
			<div class="form-group">
				<label for="pwd">Weight:</label> <input type="text"
					class="form-control" id="Weight" placeholder="Enter Weight"
					name="Weight" value="${u.getWeight() }" required>
			</div>
			<div class="form-group">
				<label for="pwd">Karat:</label> <input type="text"
					class="form-control" id="Karat" value="${u.getKarat() }" placeholder="Enter Karat"
					name="Karat" required>
			</div>
			<div class="form-group">
			<div class="col-sm-6 form-inline">
			<div >
				<label for="pwd">Gold	%	:</label> <input type="text"
					class="form-control" id="Gold" value="${u.getGold() }" placeholder="Enter Gold" name="Gold" required>
			</div>
			<div >
				<label for="pwd">Silver	%	:</label> <input type="text"
					class="form-control" id="Silver" value="${u.getSilver() }" placeholder="Enter Silver" required 
					name="Silver" >
			</div>
			<div >
				<label for="pwd">Copper	%	:</label> <input type="text"
					class="form-control" id="Copper" value="${u.getCopper() }" placeholder="Enter Copper"
					name="Copper" required>
			</div>
			<div >
				<label for="pwd">Zinc	%	:</label> <input type="text"
					class="form-control" id="Zinc" value="${u.getZinc() }" placeholder="Enter Zinc" name="Zinc" required >
			</div>
			<div >
				<label for="pwd">KDM	%	:</label> <input type="text"
					class="form-control" id="KDM" value="${u.getKDM() }" placeholder="Enter KDM" name="KDM" required >
			</div>
			</div>
			<div class="col-sm-6 form-inline">
			<div >
				<label for="pwd">Nickel	%	:</label> <input type="text"
					class="form-control" id="Nickel" value="${u.getNickel() }" placeholder="Enter Nickel" name="Nickel" required>
			</div>
			<div >
				<label for="pwd">Iridium	%	:</label> <input type="text"
					class="form-control" id="Iridium" value="${u.getIridium() }" placeholder="Enter Iridium" name="Iridium" required>
			</div>
			<div >
				<label for="pwd">Tin	%	:</label> <input type="text"
					class="form-control" id="Tin" value="${u.getTin() }" placeholder="Enter Tin" name="Tin" required>
			</div>
			<div >
				<label for="pwd">Iron	%	:</label> <input type="text"
					class="form-control" id="Iron" value="${u.getIron() }" placeholder="Enter Iron" name="Iron" required>
			</div>
			<div >
				<label for="pwd">Platinum	%	:</label> <input type="text"
					class="form-control" id="Platinum" value="${u.getPlatinum() }" placeholder="Enter Platinum" name="Platinum" required>
			</div>
			<div >
				<label for="pwd">Others	%	:</label> <input type="text"
					class="form-control" id="Others" value="${u.getOthers() }" placeholder="Enter Others" name="Others" required>
			</div>
			</div>
			</div>
			<div  class="col-sm-12 form-group">
			<center>
					<button type="submit" class="btn btn-lg btn-info"  >Update</button>
			</center>				
					
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>