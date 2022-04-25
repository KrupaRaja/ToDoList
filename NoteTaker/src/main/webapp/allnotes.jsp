<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.Helper"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes | Notes Taker</title>

<%@include file="alljscss.jsp"%>
</head>
<body>

<div class="container-fluid p-0 m-0">
  <%@include file="navbar.jsp"%>
  </div>
  <br>
  
 <div class="container"> 
 <h1>All Notes</h1>
  <%
   Session s=Helper.getFactory().openSession();
  Query q=s.createQuery("from Note");
  List<Note> list=q.list();
  
  for(Note note:list){
	 
  
  %>
  
  
  <div class="card mt-4" style="">
  <img class="card-img-top m-2" src="img/notes.png" style="width:50px;"alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    
    <p class="card-text"><%=note.getContent() %></p>
    
    <p class="text-right"><b class="text-primary"><%=note.getAddedDate() %></b></p>
    
    <div class="container text-center p-4">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
    </div>
  </div>
</div>
  
  <%
  /*  out.println(note.getId()+" "+note.getTitle()+"<br>");*/
  }
  
  s.close();
  
  %>
    

</div>

</body>
</html>