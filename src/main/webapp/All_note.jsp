<%@page import="com.hibernate.model.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>

<%@include file="all_js_css.jsp"%>



</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1 class="text-upercase">All notes:</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getSessionFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px"
						src="img/notes.png" alt="Card image cap">
					<div class="card-body px-5">

						<h5 class="card-title"><%=note.getTitel()%></h5>
						<p class="card-text"><%=note.getContant()%></p>
						<p><b class="text-primary"><%=note.getAddDate() %></b></p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
							 <a href="update.jsp?note_id=<%= note.getId() %>"class="btn btn-primary">Update</a>

						</div>

					</div>
				</div>

				<%
				}

				s.close();
				%>


			</div>


		</div>





	</div>
</body>
</html>