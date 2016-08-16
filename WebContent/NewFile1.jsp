<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />

<title>PSUdo MRI</title>

<style type="text/css">

body {

	margin: 0px;

	padding: 0px;

}

 

#wrapper {

	border: 1px solid #848484;

	width: 1000px;

	height: 800px;

	padding: 10px;

	position: absolute;

	top: 10px;

	left: 50%;

	margin-left: -538px;

	padding: 10px;

}

 

#logo {

	border: 1px solid #FFFFFF;

	width: 981px;

	height: 100px;

	float: left;

	padding: 10px;

	float: left;

}

 

#study {

	border: 1px solid #848484;

	width: 500px;

	height: 100px;

	float: left;

	padding: 10px;

}

 

#system {

	border: 1px solid #848484;

	width: 500px;

	height: 350px;

	float: left;

	padding: 10px;

}

 

#parameter {

	border: 1px solid #848484;

	width: 500px;

	height: 150px;

	float: left;

	padding: 10px;

}

 

#geometry_editor {

	border: 1px solid #848484;

	width: 450px;

	height: 420px;

	padding: 10px;

	margin-left: 530px;

	margin-top: 122px;

}

 

#simulator {

	border: 1px solid #FFFFFF;

	width: 450px;

	height: 120px;

	padding: 10px;

	margin-left: 530px;

}

</style>

<script type="text/javascript">

	function doOnLoad() {

		try {

			//iFrame 세션 종료 처리

 

		} catch (err) {

		}

	}

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	

</script>

</head>

 

<body onload="doOnLoad();">

	<div id="wrapper">

		<div id="logo">

			<form action="" method="post" name="form"

				onsubmit="return checkForm()">

				<tr>

					<td><img src="C:\Users\Kyeol\Desktop/logo.png"></td>

				</tr>

			</form>

		</div>

		<div id="study">

			Study

			<tr height="55">

				<table border="0" width="330" height="50" cellpadding="0"

					cellspacing="0" align="left" valign="middle">

 

					<tr>

						<br>

						<br>

						<td>Study List</td>

						<td><select name="job">

								<option value="">SC_0920</option>

								<option value="SC_0920">SC_0930</option>

								<option value="SC_0930">SC_0940</option>

								<option value="SC_0940">SC_0950</option>

						</select></td>

						<td>|</td>

						<td><select name="1">

								<option value="1">1</option>

								<option value="2">2</option>

								<option value="3">3</option>

								<option value="4">4</option>

						</select></td>

					</tr>

					<tr>

						<td><input type="submit" style="width: 90%;" name="New Study"

							value="New Study"></td>

						<td><input type="submit" style="width: 90%;" name="New ID"

							value="New ID"></td>

					</tr>

				</table>

				</td>

			</tr>

		</div>

		<div id="system">

			Experimental System Setup <br> <br>

			<tr height="55">

				<table border="0" width="330" height="50" cellpadding="0"

					cellspacing="0" align="left" valign="middle">

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;"

							name="Geometry file" value="Geometry file"></td>

						<td><input type="file" accept=".bin"></td>

					</tr>

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;"

							name="Tissue_file" value="Tissue file"></td>

						<td><input type="file" accept=".jpg"></td>

					</tr>

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;" name="B0"

							value="B0"></td>

						<td><input type="file" accept=".png"></td>

					</tr>

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;" name="B1+"

							value="B1+"></td>

						<td><input type="file" accept=".gif, .jpg, .png"></td>

					</tr>

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;" name="B1-"

							value="B1-"></td>

						<td><input type="file" accept=".gif,.png"></td>

					</tr>

				</table>

			</tr>

			<tr>

				<br>

				<br>

				<br>

				<br>

				<br>

				<br>

				<br>

				<td>Field Strength (Tesla)</td>

				<td>RF</td>

				<td><select name="job">

						<option value="">HP Birdcage</option>

						<option value="SC_0920">SC_0930</option>

						<option value="SC_0930">SC_0940</option>

						<option value="SC_0940">SC_0950</option>

				</select></td>

			<tr>

				<br>

				<br>

				<td>Gradiant ON</td>

				<td><input type="checkbox"></td>

				<td>Slice Selection</td>

				<td><input type="checkbox"></td>

				<td>Frequency Encoding</td>

				<td><input type="checkbox"></td>

			</tr>

			<tr>

				<br>

				<br> Grid size of geometry file(mm * mm * mm)

				<td><input type="text" value=""></td>

			</tr>

			</tr>

		</div>

		<div id="parameter">

			Imaging Parameter Setup <br>

			<tr height="55">

				<table border="0" width="400" height="50" cellpadding="0"

					cellspacing="0" align="middle" valign="middle">

					<tr>

						<td nowrap>Pulse Sequence</td>

						<td><select name="job">

								<option value="">Gradient echo</option>

								<option value="SC_0920">SC_0930</option>

								<option value="SC_0930">SC_0940</option>

								<option value="SC_0940">SC_0950</option>

						</select></td>

						<td nowrap>RF Pulse Shape</td>

						<td><select name="job">

								<option value="">Sinc</option>

								<option value="SC_0920">SC_0930</option>

								<option value="SC_0930">SC_0940</option>

								<option value="SC_0940">SC_0950</option>

						</select></td>

					</tr>

					<tr>

						<td>TR (ms)</td>

						<td><input type="text" value=""></td>

						<td>TE (ms)</td>

						<td><input type="text" value=""></td>

					</tr>

					<tr>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;"

							name="Generate Sequence" value="Generate Sequence"></td>

						<td width="90"></td>

						<td><input type="submit" style="width: 90%;" name="Seq.plot"

							value="Seq.plot"></td>

					</tr>

				</table>

				</td>

			</tr>

		</div>

		<div id="geometry_editor">Geometry Editor</div>

		<div id="simulator">

			<tr height="55">

				<table border="0" width="400" height="50" cellpadding="0"

					cellspacing="0" align="middle" valign="middle">

					<tr>

					<br><br>

						<td width="90"></td>

						<td><input type="submit"  style="width: 100pt; height: 30pt"

							name="Run Simulator" value="Run Simulator"></td>

						<td width="90"></td>

						<td><input type="submit" style="width: 30pt; height: 20pt"

							value="Exit"></td>

					</tr>

				</table>

				</td>

			</tr>

		</div>

	</div>

</body>

</html>
