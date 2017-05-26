

import javax.xml.*;
import org.w3c.dom.*;
import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

public class XMLREAD {

    
    
    public static void main(String[] args) {
        // TODO code application logic here
        try{
        File xml = new File("C:\\Users\\Davel-11\\Desktop\\Universidad PC\\2017\\Progra 3\\New TestXML\\ejemploXML.xml");        
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse(xml);
        
        doc.getDocumentElement().normalize();
        
         
        
        NodeList eventos = doc.getElementsByTagName("EVENTO");
        for(int i=0;i<eventos.getLength();i++){
            Node evento = eventos.item(i);
            if(evento.getNodeType()== Node.ELEMENT_NODE){
                
                int contarEventos = eventos.getLength();
                
                Element e=(Element) evento;
                System.out.println("Codigo: "+e.getElementsByTagName("CODIGO").item(0).getTextContent());
                System.out.println("Nombre: "+e.getElementsByTagName("NOMBRE").item(0).getTextContent());
                System.out.println("Lugar: "+e.getElementsByTagName("LUGAR").item(0).getTextContent());
                System.out.println("Categoria: "+e.getElementsByTagName("CATEGORIA").item(0).getTextContent());
                System.out.println("Fecha Evento: "+e.getElementsByTagName("FECHA").item(0).getTextContent());
                System.out.println("Tiquets: "     +e.getElementsByTagName("TICKETS").item(0).getTextContent());
                
                System.out.println("** Numero de Eventos :" +contarEventos );
                
                NodeList localidades = e.getElementsByTagName("LOCALIDAD");
                for(int j=0; j<localidades.getLength();j++){
                    Node localidad = localidades.item(j);
                    if(localidad.getNodeType()==Node.ELEMENT_NODE){
                        Element e2=(Element) localidad;
                        System.out.println("Nombre: "+e2.getElementsByTagName("NOMBRE").item(0).getTextContent());
                        System.out.println("Precio: "+e2.getElementsByTagName("PRECIO").item(0).getTextContent());
                    }
                }
                System.out.println("-----------------------");
            }
        }
        }
        catch(Exception e){
            
        }
    }
    
}
