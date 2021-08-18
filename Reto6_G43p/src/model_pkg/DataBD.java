/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package model_pkg;

/**
 *
 * @author Patricia
 */
public class DataBD {
    private int idOwner;
    private String owner;
    private int id_hospital;
    private String hospital;


    public DataBD() {
        /*Inicializamos las variables declaradas*/
        this.idOwner = 0;
        this.owner = "";
        this.id_hospital = 0;
        this.hospital = "";

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

    /**
     * @return the idOwner
     */
    public int getIdOwner() {
        return idOwner;
    }

    /**
     * @param idOwner the idOwner to set
     */
    public void setIdOwner(int idOwner) {
        this.idOwner = idOwner;
    }

    /**
     * @return the owner
     */
    public String getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(String owner) {
        this.owner = owner;
    }

}
