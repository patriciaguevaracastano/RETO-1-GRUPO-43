/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package controller_pkg;

/**
 *
 * @author Patricia
 */
public class ItemHospital {
   private int id_hospital;
    private String hospital;

    public ItemHospital(int id_hospital, String hospital) {
        this.id_hospital = id_hospital;
        this.hospital = hospital;
    }

    public int getId_hospital() {
        return id_hospital;
    }

    public void setId_hospital(int id_hospital) {
        this.id_hospital = id_hospital;
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }
    @Override
    public String toString(){
        return getHospital();
    }
}
 

