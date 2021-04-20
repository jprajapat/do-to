<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>To_Do Note</title>
	<%@include file="all_js_css.jsp"%>

<script type="text/javascript">
	function fun() {
		var a = document.getElementById('input').value;
		if (a == "India") {
			var states = [ "Select", "Madhya Pradesh", "Maharashtra", "Delhi",
					"Goa" ];
		} else if (a == "USA") {
			var states = [ "Select", "Washington", "Texas" ];
		} else if (a == "UK") {
			var states = [ "Select", "Washington", "aaaa" ];
		} else {
			var states = [];
		}
		var string = "";
		for (i = 0; i < states.length; i++) {
			string = string + "<option>" + states[i] + "</option>";

		}
		string = "<select name='value'>" + string + "</select>";
		document.getElementById('output').innerHTML = string;
	}
</script>


</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br /> <select id="input" onchange="fun()">
			<option>Select</option>
			<option>India</option>
			<option>USA</option>
		</select>

		<div id="output">
			<select>
				<option></option>
			</select>
		</div>
	</div>
</body>
</html>