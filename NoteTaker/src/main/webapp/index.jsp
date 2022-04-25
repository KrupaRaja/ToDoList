<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
 
    <title>Hello, world!</title>
    <!-- File Include css and javascript -->
    <%@include file="alljscss.jsp" %>
  </head>
  <body>
  
  
  <div class="container-fluid p-0 m-0">
  <%@include file="navbar.jsp"%>
  
  
  <br>
  <div class="card">
  <img alt="" class="img-fluid mx-auto" style="width:400px;" src="img/notes.png" />
  <p class="text-primary text-uppercase text-center p-2 mt-3"><b><a href="addnotes.jsp">
  Start Taking Notes Now...!
  </a>
  </b></p>
  
  
  <div class="container text-center" action="addnotes.jsp">
  
  <a href="addnotes.jsp"></a>
  <button class="btn btn-outline-primary text-center text-uppercase" type="submit">Start here</button>
  </a></div>
  
  </div>
  
  
  
  </div>
    
    
   
    
    
    
    

   </body>
</html>