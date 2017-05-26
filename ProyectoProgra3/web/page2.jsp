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
  <h3 class="margin">Ingresa - Busca - Compra</h3>
  <!-- img src="bird.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350"> -->
  <h3>Es Facil</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Tenemos lo Que buscas</h3>
  <p>Compra ya!</p>
  <!--
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
  -->
</div>


 

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Eventos Disponibles</h3><br>
  
     <style>
            table {
                border-collapse: collapse;
                width: 80%;
            }

            th, td {
                text-align: left;
                color: black;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
      </style>
  
  <table class="table table-striped"  >  
      <tr>
          <td>Evento</td>
          <td>Tipo  </td>
          <td>Fechas</td>
      </tr>
	
   <%  
         
        //File xml = new File("C:\\Users\\Davel-11\\Desktop\\Universidad PC\\2017\\Progra 3\\ProyectoProgra3\\web\\ejemploXML.xml");        
        File xml = new File("/home/xspacein/appservers/apache-tomcat-7.0.56/webapps/ProyectoProgra3/ejemploXML.xml");        
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse(xml);
        doc.getDocumentElement().normalize();  
                 
        NodeList eventos = doc.getElementsByTagName("EVENTO");
         out.println("<div class='row'>");
                for(int i=0;i<eventos.getLength();i++){
                    Node evento = eventos.item(i);
                    if(evento.getNodeType()== Node.ELEMENT_NODE){
                        Element e=(Element) evento;
                       // out.println("<p>Nombre: </p>"+e.getElementsByTagName("NOMBRE").item(0).getTextContent());                                                      
                        
                            out.println("<tr>");                               
                            out.println("<td><a href="+request.getContextPath()+"/index.jsp?id="+e.getElementsByTagName("CODIGO").item(0).getTextContent()+">"+e.getElementsByTagName("NOMBRE").item(0).getTextContent()+"</a></td> ");
                            out.println("<td>"+e.getElementsByTagName("CATEGORIA").item(0).getTextContent()+"</td> ");
                            out.println("<td>"+e.getElementsByTagName("FECHA").item(0).getTextContent()+"</td> ");
                            out.println(" </tr>");
                    }
           
                }
                 out.println("</div>");
            %> 
</table>  
              <!-- 
  
  <div class="row">
    <div class="col-sm-4">
      <p>Evento 1</p>  --> 
      <!-- <img src="birds1.jpg" class="img-responsive margin" style="width:100%" alt="Image">  -->
      <!-- 
    </div>
    <div class="col-sm-4"> 
      <p>Evento 2</p>      
    </div>
    <div class="col-sm-4"> 
        <p> 
         Evento 3      
        </p>      
    </div>
  </div> --> 
            
          


  
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Universidad Mariano Galvez de Guatemala</a></p> 
</footer>

</body>
</html>
