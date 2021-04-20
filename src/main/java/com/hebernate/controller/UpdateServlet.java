package com.hebernate.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.helper.FactoryProvider;
import com.hibernate.model.Note;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			
			
			
			
//			System.out.println(note.getId()+note.getTitel());
			
			Session session = FactoryProvider.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();
			Note note = (Note) session.get(Note.class, noteId);
			note.setTitel(title);
			note.setContant(content);
			note.setAddDate(new Date());
			
			transaction.commit();
			session.close();
			
			response.sendRedirect("All_note.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
