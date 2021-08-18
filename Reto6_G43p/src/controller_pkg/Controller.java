/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package controller_pkg;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.swing.JOptionPane;
import model_pkg.DataBD;
import model_pkg.DataModelDB;
import model_pkg.ReportClass;
import views_pkg.DialogPets;
import views_pkg.ReportGraphics;

/**
 *
 * @author Patricia
 */
public class Controller implements ActionListener {
    private final DialogPets view;
    
    DataModelDB model = new DataModelDB();

    public final void events() {
        view.cb_owner.addActionListener(this);
    }

    public Controller(DialogPets view) {
        this.view = view;
        getOwners();
        Item item = (Item) view.cb_owner.getSelectedItem();
        events();
    }

    
    

    
     public final void getOwners() {
        ArrayList<DataBD> list;
        DataModelDB model = new DataModelDB();
        list = model.getOwners(0);
        if (list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                int idOwner = list.get(i).getIdOwner();
                String owner = list.get(i).getOwner();
                view.cb_owner.addItem(new Item(idOwner, owner));
            }
        } else {
            JOptionPane.showMessageDialog(null, "No se encontraron registro de clientes", "ADVERTENCIA", JOptionPane.WARNING_MESSAGE);
        }
    }

    @Override
    public void actionPerformed(ActionEvent ae) {

    }



}
