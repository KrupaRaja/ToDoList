package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.Helper;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateServlet() {
        super();
    }

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try{
			
			String titleNew=request.getParameter("title");
			String contentNew=request.getParameter("content");
			int noteId=Integer.parseInt(request.getParameter("noteId").trim());
			
			Session s=Helper.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			Note note=(Note)s.get(Note.class, noteId);
			
			note.setTitle(titleNew);
			note.setContent(contentNew);
			note.setAddedDate(new Date());
			
			tx.commit();
			
			s.close();
			
			response.sendRedirect("allnotes.jsp");
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
	}

}
