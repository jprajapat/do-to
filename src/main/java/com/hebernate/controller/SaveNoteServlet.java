package com.hebernate.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.helper.FactoryProvider;
import com.hibernate.model.Note;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());
//			System.out.println(note.getId()+note.getTitel());

			Session session = FactoryProvider.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();
			session.save(note);
			transaction.commit();

			session.close();
			out.println("<h1>Note is added successfully</h1>");
			out.println("<h1><a href = 'All_note.jsp'>View all notes</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
