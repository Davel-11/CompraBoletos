package Controladores;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.*;
import org.w3c.dom.*;
import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

public class XMLrun extends HttpServlet {

      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParserConfigurationException, SAXException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
        File xml = new File("C:\\Users\\Davel-11\\Desktop\\Universidad PC\\2017\\Progra 3\\New TestXML\\ejemploXML.xml");        
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse(xml);
        doc.getDocumentElement().normalize();  
         
        
        NodeList eventos = doc.getElementsByTagName("EVENTO");
        for(int i=0;i<eventos.getLength();i++){
            Node evento = eventos.item(i);
            if(evento.getNodeType()== Node.ELEMENT_NODE){
                                               
                Element e=(Element) evento;
               System.out.println("Nombre: "+e.getElementsByTagName("NOMBRE").item(0).getTextContent());                               
               
                System.out.println("-----------------------");
            }
        }
            
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          try {
              processRequest(request, response);
          } catch (ParserConfigurationException ex) {
              Logger.getLogger(XMLrun.class.getName()).log(Level.SEVERE, null, ex);
          } catch (SAXException ex) {
              Logger.getLogger(XMLrun.class.getName()).log(Level.SEVERE, null, ex);
          }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          try {
              processRequest(request, response);
          } catch (ParserConfigurationException ex) {
              Logger.getLogger(XMLrun.class.getName()).log(Level.SEVERE, null, ex);
          } catch (SAXException ex) {
              Logger.getLogger(XMLrun.class.getName()).log(Level.SEVERE, null, ex);
          }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
