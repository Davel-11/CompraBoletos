<%-- 
    Document   : page2
    Created on : 23-may-2017, 22:13:12
    Author     : Davel-11
--%>

<%@page import="javax.xml.*"%>
<%@page import="org.w3c.dom.*"%>
<%@page import="java.io.File"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Compra Boletos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      /*color: #f5f6f7;*/
      color: red;
  }
  /*letras */
  p {font-size: 16px;} 
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      /* parte 1 */
      background-color: #696969; /* gray */
      color: white;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
      min-height: 500px;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #191970 !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        
        <a class="navbar-brand" href="<%=request.getContextPath()%>/page2.jsp">Inicio</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       <li><a href='<%=request.getContextPath()+"/conciertos.jsp?id="+"Concierto"%>'>Conciertos</a></li>                
        <li><a href='<%=request.getContextPath()+"/deporte.jsp?id="+"Deporte"%>'>Deportes</a></li>                
        <li><a href='<%=request.getContextPath()+"/teatro.jsp?id="+"Teatro"%>'>Teatro</a></li>                
        <li><a href='<%=request.getContextPath()+"/familiares.jsp?id="+"Familiares"%>'>Familiares</a></li>                
        <li><a href='<%=request.getContextPath()+"/especiales.jsp?id="+"Especiales"%>'>Especiales</a></li>                
        <li><a href='<%=request.getContextPath()+"/estudiantes.jsp?id="+"Estudiantes"%>'>Estudiantes</a></li>    
      </ul>
    </div>
  </div>
</nav>



<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
   <img src="mariano.png" style="width:15%" alt="Image" align="middle" >
   </br>
   </br>
   <h2 class="margin">Ingenieria en Systemas 2017 </h2>
   <h2 class="margin">Inga. Rosalba Peralta </h2>
   <h2 class="margin">Programacion 3</h2>
   <h2 class="margin">Programacion 3</h2>
    
  
</div>

 

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
 
  <h3 class="margin">Christian Altan</h3>
  <h3 class="margin">Rolando Vasquez</h3>
  
  
   
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Universidad Mariano Galvez de Guatemala</a></p> 
</footer>

</body>
</html>

