<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <%@include file="alljscss.jsp" %>
<title>Insert title here</title>
</head>


<body>


<div class="container-fluid p-0 m-0">
  <%@include file="navbar.jsp"%>
  </div>
    
    
    
    <div class="container">
    
    <h1 calss="mt-3">Please fill the form below</h1>
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" 
    name="title"
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter here">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note content</label>
    <textarea id="content" 
    name="content"
    placeholder="Enter your text here"
    class="form-control"
    style="height:300px;"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>
</body>
</html>