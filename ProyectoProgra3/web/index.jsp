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
  <h3 class="margin">Detalles</h3>
  
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: center;
                color: black;
                padding: 0px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
      </style>
  
  <table class="table table-striped"  >
    
  <%
   try{
        //File xml = new File("C:\\Users\\Davel-11\\Desktop\\Universidad PC\\2017\\Progra 3\\ProyectoProgra3\\web\\ejemploXML.xml");        
        File xml = new File("/home/xspacein/appservers/apache-tomcat-7.0.56/webapps/ProyectoProgra3/ejemploXML.xml");        
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse(xml);
        
        doc.getDocumentElement().normalize();
        
        NodeList eventos = doc.getElementsByTagName("EVENTO");
        int x = Integer.parseInt(request.getParameter("id"));
        int i = x-1;
                    
            Node evento = eventos.item(i);
            if(evento.getNodeType()== Node.ELEMENT_NODE){
                                
                Element e=(Element) evento;
                //out.println("Codigo: "+e.getElementsByTagName("CODIGO").item(0).getTextContent());
                          
                
                out.println("<tr>");
                out.println("<td>Nombre: </td>");
                out.println("<td>"+e.getElementsByTagName("NOMBRE").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                
                
                out.println("<tr>");
                out.println("<td>Categoria: </td>");
                out.println("<td>"+e.getElementsByTagName("CATEGORIA").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");   
                
                out.println("<tr>");
                out.println("<td >Codigo: </td>");
                out.println("<td>"+e.getElementsByTagName("CODIGO").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                                              
                out.println("<tr>");
                out.println("<td>Lugar: </td>");
                out.println("<td>"+e.getElementsByTagName("LUGAR").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                
                out.println("<tr>");
                out.println("<td>Fecha Del Evento: </td>");
                out.println("<td>"+e.getElementsByTagName("FECHA").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                
                 out.println("<tr>");
                out.println("<td>Hora: </td>");
                out.println("<td>"+e.getElementsByTagName("HORA").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                  
                                                           
                              
                out.println("<tr>");
                out.println("<td>Boletos Disponibles: </td>");
                out.println("<td>"+e.getElementsByTagName("TICKETS").item(0).getTextContent()+"</td> ");
                out.println(" </tr>");
                                
                
                
                NodeList localidades = e.getElementsByTagName("LOCALIDAD");
                for(int j=0; j<localidades.getLength();j++){
                    Node localidad = localidades.item(j);
                    if(localidad.getNodeType()==Node.ELEMENT_NODE){
                        Element e2=(Element) localidad;
                        //out.println("Nombre: "+e2.getElementsByTagName("NOMBRE").item(0).getTextContent());
                        //out.println("Precio: "+e2.getElementsByTagName("PRECIO").item(0).getTextContent());
                        
                        
                        out.println("<tr>");
                        out.println("<td>Disponibilidad: </td>");
                        out.println("<td>"+e2.getElementsByTagName("NOMBRE").item(0).getTextContent()+"</td> ");
                        out.println(" </tr>");
                        
                        out.println("<tr>");
                        out.println("<td>Precio: </td>");
                        out.println("<td>"+e2.getElementsByTagName("PRECIO").item(0).getTextContent()+"</td> ");
                        out.println(" </tr>");
                        
                        
                    }               
                }  
                 out.println("<tr>");
                 out.println("<td>Descrpcion: </td>");
                 out.println("<td>"+e.getElementsByTagName("DESCRIPCION").item(0).getTextContent()+"</td> ");
                 out.println(" </tr>");
                 
                 
            }
        
        
        
        }
        catch(Exception e){
            
        }
  
  
  %>
                   <tr>
                       <td>                     
                                        
                    </td>
                    <td>                     
                      <button type="button" class="btn btn-primary btn-lg">Comprar Ahora</button>                      
                    </td>
                  </tr>
  
</table>
  
  
</div>


 

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Otros Eventos Disponibles</h3><br>
  
  
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

                        out.println("<div class='col-sm-4'>");                            
                            out.println("<a href="+request.getContextPath()+"/index.jsp?id="+e.getElementsByTagName("CODIGO").item(0).getTextContent()+">"+e.getElementsByTagName("NOMBRE").item(0).getTextContent()+"</a>");
                        out.println("</div>");
                    }
           
                }
                 out.println("</div>");
            %> 
  
   
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Universidad Mariano Galvez de Guatemala</a></p> 
</footer>

</body>
</html>
