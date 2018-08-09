<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Techtronixs</title>
<style type="text/css">
@media print {
	.bg-primary {
		background-color: #6ee2ef !important;
		 
        
	}
	.primary {
		background-color: #86efe8 !important;
		 color: yellow !important;
        
	}
	.table td {
		background-color: transparent !important;
	}
}

p.thicker {
	font-weight: 900;
}

h2.thicker {
	font-weight: 900;
}

h3.thicker {
	font-weight: 900;
}

h5.thicker {
	font-weight: 900;
}

h4.thicker {
	font-weight: 900;
}

h4.font {
	font-size: 25px;
	font-weight: 900;
	font-color: red;
}

h4.abi {
	font-size: 40px;
	font-weight: 900;
	font-color: red;
}
</style>
</head>
<body>
	<jsp:include page="BillHeader.jsp"></jsp:include>
	<div class="bg-primary" class="container">
		<div class="form-group">
			<div class="col-sm-2 form-inline">
				<img
					src="http://www.wordzz.com/wp-content/uploads/2017/04/Lakshmi.png"
					class="img-responsive" width="100" height="200">
				<h4 class="thicker">AGT</h4>

			</div>
			<div class="col-sm-8 form-inline">
				<h2 class="thicker" align="center">SRI ANANDA</h2>
				<h4 class="thicker" align="center">Gold & Silver Testings</h4>
				<h4 class="thicker" align="center">Computerized X-Ray Point
					Gold Assay Report</h4>
				<h4 class="thicker" align="center">101/1 Dhurairaj complex,Main
					Road,Dindigul</h4>
				<h4 class="thicker" align="center">cell:-9965976916</h4>

			</div>

			<div class="form-group" class="col-sm-2 form-inline">
				<img
					src="http://www.tirutanigaimurugan.tnhrce.in/images/rajaalangaram.png"
					class="img-responsive" width="100" height="200">
				<h4 class="thicker" align="left">AGT</h4>


			</div>
		</div>
	</div>
	<table class="table"
		class="table table-striped table-bordered dt-responsive nowrap"
		class="thicker">

		<tbody>
			<tr>
				<td>
					<div class="col-sm-2 form-inline">
						<h4 class="thicker">TOKEN_NO</h4>
						<h4 class="thicker">DATE</h4>
						<h4 class="thicker">NAME</h4>
					</div>
					<div class="col-sm-3 form-inline" align="left">
						<h4 class="thicker">:- ${u.getUserid() }</h4>
						<h4 class="thicker">:- ${u.getDate() }</h4>
						<h4 class="thicker">:- ${u.getName() }</h4>
					</div>
					<div class="col-sm-2 form-inline">
						<h4 class="thicker">WEIGHT</h4>
						<h4 class="thicker">SAMPLE_TYPE</h4>
						<h4 class="thicker">KARAT</h4>
					</div>
					<div class="col-sm-2 form-inline" align="left">
						<h4 class="thicker">:- ${u.getWeight() }</h4>
						<h4 class="thicker">:- ${u.getSample_type() }</h4>
						<h4 class="thicker">:- ${u.getKarat() }</h4>
					</div>
					<div class="col-sm-2 form-inline" >
						<div class="primary" style="border: 5px solid black">
						<h4 class="font"  class="primary" align="center">
							GOLD
						</h4>
						<h4  class="abi"  class="primary" align="center">
							 ${u.getGold() } 
						</h4>
						</div>
					</div>

				</td>
			</tr>
			<tr>
				<td>
					<div class="col-sm-2 form-inline">
						<h4 class="thicker">SILVER</h4>
						<h4 class="thicker">COPPER</h4>
						<h4 class="thicker">ZINC</h4>
						<h4 class="thicker">KDM</h4>
						<h4 class="thicker">NICKEL</h4>
					</div>
					<div class="col-sm-4 form-inline" align="left">

						<h4 class="thicker">:- ${u.getSilver()}</h4>
						<h4 class="thicker">:- ${u.getCopper() }</h4>
						<h4 class="thicker">:- ${u.getZinc() }</h4>
						<h4 class="thicker">:- ${u.getKDM() }</h4>
						<h4 class="thicker">:- ${u.getNickel() }</h4>
					</div>
					<div class="col-sm-2 form-inline">
						<h4 class="thicker">IRIDIUM</h4>
						<h4 class="thicker">TIN</h4>
						<h4 class="thicker">IRON</h4>
						<h4 class="thicker">PLATINUM</h4>
						<h4 class="thicker">OTHERS</h4>
					</div>
					<div class="col-sm-4 form-inline" align="left">

						<h4 class="thicker">:- ${u.getIridium() }</h4>
						<h4 class="thicker">:- ${u.getTin() }</h4>
						<h4 class="thicker">:- ${u.getIron() }</h4>
						<h4 class="thicker">:- ${u.getPlatinum() }</h4>
						<h4 class="thicker">:- ${u.getOthers() }</h4>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="col-sm-6 form-inline">
						<h4 class="thicker">Remarks:-</h4>
					</div>
					<div class="col-sm-6 form-inline">
						<h4 class="thicker">For SRI ANANDA:-</h4>
					</div>
					</div>
				</td>
			</tr>
		</tbody>

	</table>
	<div class="p-3 mb-2 bg-primary text-white" class="container"
		class="thicker">
			<h5 class="bg-primary"   class="thicker" >ASSAYING METHOD : FIRE ASSAY METHOD AS PER
				NATIONAL & INTERNATIONAL STANDARDS /NOTE : TEST REPORT RELATES ONLY TO THE ITEM
				TESTED </h5>
	</div>
	<div class="col-sm-12 form-group">
		<center>
			<input class="btn btn-lg btn-info" class="text-center"
				id="printpagebutton" type="button" value="Print"
				onclick="printpage()" />
		</center>
	</div>

	<script type="text/javascript">
		function printpage() {
			var printButton = document.getElementById("printpagebutton");
			printButton.style.visibility = 'hidden';
			window.print()
			printButton.style.visibility = 'visible';
			window.location.href = "index";
		}
	</script>
</body>
</html>
