<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.Helper"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@include file="alljscss.jsp"%>
</head>
<body>

<div class="container-fluid p-0 m-0">
  <%@include file="navbar.jsp"%>
  </div>
  
  <h1>Edit your note</h1>
  
  <%
  
  int noteId=Integer.parseInt(request.getParameter("note_id").trim());
  
    Session s=Helper.getFactory().openSession();
	Transaction tx=s.beginTransaction();
	Note note=(Note)s.get(Note.class, noteId);	
	
  %>
  
  <div class="container">
  <form action="UpdateServlet" method="post">
  
  <input type="hidden" name="noteId" value="<%=note.getId() %>" />
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" 
    name="title"
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter here"
    value="<%=note.getTitle() %>"
    >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note content</label>
    <textarea id="content" 
    name="content"
    placeholder="Enter your text here"
    class="form-control"
    style="height:300px;"><%=note.getContent() %></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
  </div>
</form>

</div>
  
  
</body>
</html>