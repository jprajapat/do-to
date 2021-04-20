<%@page import="com.hibernate.model.Note"%>
<%@page import="com.hibernate.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update To_Do</title>
	<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br/>
		<h1>  Update your note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getSessionFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		
		
		
		
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId()%>" name="noteId" type="hidden">
			<div class="mb-3">
				<label for="title" class="form-label">Title </label> 
				<input
					type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" required placeholder="Enter here" value="<%= note.getTitel() %>">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" id="content" placeholder="Enter your content here"
					class="form-control" required style="height: 300px;" ><%= note.getContant() %>
					</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>
		
		
	</div>
</body>
</html>