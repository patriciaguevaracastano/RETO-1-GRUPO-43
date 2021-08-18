/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package controller_pkg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import javax.swing.JOptionPane;
import model_pkg.Conexion;
import model_pkg.ReportClass;
import views_pkg.ReportGraphics;

/**
 *
 * @author Patricia
 */
public class ControllerReport {

     public LinkedList<ReportClass> ListPetType() {
        Conexion con = new Conexion();
        Connection cn;
        Statement st;
        ResultSet rs;
        LinkedList<ReportClass> report = new LinkedList<>();
        try {
            String sql = "SELECT pet_type,count(pet_type) FROM `tb_pet` GROUP BY pet_type";
            cn = con.getConnection();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (cn != null) {
                System.out.println("Conexión éxitosa Base de datos tb_pet");
                while (rs.next()) {
                    ReportClass record = new ReportClass();
                    String pet_type = rs.getString(1);
                    int amount = rs.getInt(2);
                    record.setPet_type(pet_type);
                    record.setAmount_pet_type(amount);
                    report.add(record);
                }
            } else {
                JOptionPane.showMessageDialog(null, ".::Error al realizar la consulta::.", "ERROR", JOptionPane.ERROR_MESSAGE);
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, ".::Error en la conexión::.", "ERROR", JOptionPane.ERROR_MESSAGE);
        }
        return report;
    }
    
/*public LinkedList<ReportClass> ListPetType() {
        LinkedList<ReportClass> report = this.model.ListPetType();
        return report;
    }*/
}