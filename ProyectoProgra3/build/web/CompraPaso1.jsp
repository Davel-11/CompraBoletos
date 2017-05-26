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
        
      <a class="navbar-brand" href="#">Inicio</a>
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

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Detalles De Tu Compra</h3>  
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Revisa Que Los Datos Sean los Correctos</h3>
  
   <style>
            table {
                border-collapse: collapse;
                width: 80%;
            }

            th, td {
                text-align: center;
                color: black;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
      </style>
  
    <table class="table table-striped"  >  
        
        <tr>
            <td>Boletos Disponibles Actualmente: </td>
            <td> <%= request.getParameter("boletosDisponibles")%> </td>            
        </tr>
        
        <tr>
            <td>Boletos a Adquirir: </td>
            <td> <%= request.getParameter("boletosComprados")%> </td>            
        </tr>
        
        <tr>
            <td>Costo Boletos:  </td>
            <td> <% HttpSession sess = request.getSession();
                out.println(sess.getAttribute("CostoBoleto"));  %> </td>            
         </tr>
         
               
         <tr>
            <td>Nombre Del Evento: </td>
            <td> <% 
                out.println(sess.getAttribute("NombreEvento"));
                %> </td>            
        </tr>
       
          <tr>
            <td>Fecha:  </td>
            <td> <% out.println(sess.getAttribute("Fecha"));  %> </td>            
         </tr>
       
         
          <tr>
            <td>Direcciones:  </td>
            <td> <% out.println(sess.getAttribute("Lugar"));  %> </td>            
         </tr>
       
         <tr>
            <td>Horario:  </td>
            <td> <% out.println(sess.getAttribute("Horario"));  %> </td>            
         </tr>
         
           <tr>
            <td class="bg-primary">Costo Total de Tu Compra es:</td>
            <td class="bg-primary">
 <% 
                float costoBoletos = Float.parseFloat((String)sess.getAttribute("CostoBoleto"));
                float  boletosComprados = Float.parseFloat(request.getParameter("boletosComprados"));
                float  total = costoBoletos * boletosComprados;
                out.println(total);
            %> </td>            
         </tr>
         
         

    </table>  
 
  <!--
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
  -->
</div>




<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center" id="formaPago">    
  <h2 class="bg-success margin" id="titulo">Forma De Pago</h2>
  
  <form name="form1" method="post" action="<%= request.getContextPath()+"/gracias.jsp" %>" >
  <div class="form-group">
    <label for="exampleInputEmail1">Nombre</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Ejemplo Juan" required="">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Numero de Tarjeta</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="" required="">
  </div>
      
  <div class="form-group">
    <label for="exampleInputPassword1">Fecha de Vencimiento</label>
    <input type="date" class="form-control" id="exampleInputPassword1" placeholder="date" required="">
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox" required="Debes Aceptar los Terminos y Condiciones">Acepto Los Terminos y Condiciones</input>
    </label>
  </div>
  <button id="myButton2" type="submit" class="btn btn-success">Realizar Compra</button>
  
 
</form>
  
  </br>
  <button id="myButton" class="btn btn-danger">Cancelar Compra</button>

<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        
        
           
            
            var r = confirm("Deseas Cancelar Tu Compra?");
            if (r == true) {
                 location.href = "<%=request.getContextPath()%>";
            }      
       
    };
</script>
    
 <style>
     #formaPago {
         width: 50%;
         
         
     }
     
     #titulo {
         padding: 3%;
         background-color: #1d61a5;
         color: white;
         
     }
     
 </style>

  </div>

<footer class="container-fluid bg-4 text-center">
  <p>Universidad Mariano Galvez de Guatemala</a></p> 
</footer>

</body>
</html>
