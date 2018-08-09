<html>
<head>
<title>Techtronixs</title>
<meta charset="utf-8">
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
		<h2 >Computerized X-Ray Point Gold Assay Report</h2>
		<div class="form-group">
				<label for="email">Token_ID:</label> <input type="text"
					class="form-control" value="${u}" id="Userid" placeholder="Enter ID"
					name="Userid"  readonly="readonly">
					</div>
		<form  action="submit" method="post">
			<div class="form-group">
				<label for="email">Name:</label> <input type="text"
					class="form-control" id="Name" placeholder="Enter Name"
					name="Name" required >
					</div>
			<div class="form-group">
				<label for="pwd">Sample Type:</label> <input type="text"
					class="form-control" id="Sample_Type" placeholder="Enter Sample Type"
					name="Sample_Type" 	required>
			</div>
			<div class="form-group">
				<label for="pwd">Weight:</label> <input type="text"
					class="form-control" id="Weight" placeholder="Enter Weight"
					name="Weight" required>
			</div>
			<div class="form-group">
				<label for="pwd">Karat:</label> <input type="text"
					class="form-control" id="Karat" placeholder="Enter Karat"
					name="Karat" required>
			</div>
			<div class="form-group">
			<div class="col-sm-6 form-inline">
			<div >
				<label for="pwd">Gold	%	:</label> <input type="text"
					class="form-control" onfocus="this.value=''" id="Gold" value="0" placeholder="Enter Gold" name="Gold" required >
			</div>
			<div >
				<label for="pwd">Silver	%	:</label> <input type="text"
					class="form-control" onfocus="this.value=''" id="Silver" value="0" placeholder="Enter Silver"
					name="Silver" required>
			</div>
			<div >
				<label for="pwd">Copper	%	:</label> <input type="text"
					class="form-control" id="Copper" onfocus="this.value=''" value="0" placeholder="Enter Copper"
					name="Copper" required>
			</div>
			<div >
				<label for="pwd">Zinc	%	:</label> <input type="text"
					class="form-control" id="Zinc" onfocus="this.value=''" value="0" placeholder="Enter Zinc" name="Zinc" required >
			</div>
			<div >
				<label for="pwd">KDM	%	:</label> <input type="text"
					class="form-control" id="KDM" onfocus="this.value=''" value="0" placeholder="Enter KDM" name="KDM" required >
			</div>
			<div >
				<label for="pwd">Nickel	%	:</label> <input type="text"
					class="form-control" id="Nickel" onfocus="this.value=''"   value="0" placeholder="Enter Nickel" name="Nickel"  required>
			</div>
			</div>
			<div class="col-sm-6 form-inline">
			
			<div >
				<label for="pwd">Iridium	%	:</label> <input type="text"
					class="form-control" id="Iridium" onfocus="this.value=''" value="0" placeholder="Enter Iridium" name="Iridium" required>
			</div>
			<div >
				<label for="pwd">Tin	%	:</label> <input type="text"
					class="form-control" id="Tin" onfocus="this.value=''" value="0" placeholder="Enter Tin" name="Tin" required>
			</div>
			<div >
				<label for="pwd">Iron	%	:</label> <input type="text"
					class="form-control" id="Iron" onfocus="this.value=''" value="0" placeholder="Enter Iron" name="Iron" required >
			</div>
			<div >
				<label for="pwd">Platinum	%	:</label> <input type="text"
					class="form-control" onfocus="this.value=''" id="Platinum" value="0" placeholder="Enter Platinum" name="Platinum" required >
			</div>
			<div >
				<label for="pwd">Others	%	:</label> <input type="text"
					class="form-control" id="Others" onfocus="this.value=''" value="0" placeholder="Enter Others" name="Others" required>
			</div>
			</div>
			</div>
			<div  class="col-sm-12 form-group">
			<center>
					<button type="submit" class="btn btn-lg btn-info" >Submit</button>
					<button type="reset" class="btn btn-lg btn-info" >Clear</button>
			</center>				
					
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
