/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package controller_pkg;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model_pkg.DataBD;
import model_pkg.DataModelDB;
import views_pkg.DialogDoctors;

/**
 *
 * @author Patricia
 */
public class ControllerDoctors implements ActionListener{
  private final DialogDoctors view;

    public ControllerDoctors(DialogDoctors view) {
        this.view = view;
        getClinicas();
        ItemHospital item = (ItemHospital) view.cb_hospitals.getSelectedItem();
        events();
    }

    public final void events() {
        view.cb_hospitals.addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent ae) {

    }

    public final void getClinicas() {
        ArrayList<DataBD> list;
        DataModelDB model = new DataModelDB();
        list = model.getHospitals(0);
        if (list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                int id_hospital = list.get(i).getId_hospital();
                String hospital = list.get(i).getHospital();
                view.cb_hospitals.addItem(new ItemHospital(id_hospital, hospital));
            }
        } else {
            JOptionPane.showMessageDialog(null, "No se encontraron registro de clinicas", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        }
    }
  
}
