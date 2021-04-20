<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>

<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Please fill your note detail</h1>
		<br>

		<!-- this is add form  -->

		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Title </label> 
				<input
					type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" required placeholder="Enter here">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" id="content" placeholder="Enter your content here"
					class="form-control" required style="height: 300px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>

	</div>

</body>
</html>