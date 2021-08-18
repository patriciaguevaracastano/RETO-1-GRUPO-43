/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reto6_g43p;
import model_pkg.Conexion;
import model_pkg.DataModelDB;
import views_pkg.FrameHospitals;
/**
 *
 * @author Patricia
 */
public class Reto6_G43p {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
   // TODO code application logic here
        //Para probar la conexión se crea la instancia de la clase Conexion en el main de la clase principal del proyecto.

        Conexion inst_connect = new Conexion();
        DataModelDB inst_data = new DataModelDB();
        
        //Se procede a Instanciar el frame en el método Main de la clase Prinicpal

        FrameHospitals inst_frame = new FrameHospitals();
        inst_connect.getConnection();
        inst_frame.setVisible(true);
        inst_data.getOwners(1);

    }
    
    
}
