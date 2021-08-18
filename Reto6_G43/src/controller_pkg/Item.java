/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package controller_pkg;

/**
 *
 * @author Patricia
 */
public class Item {
  private int idOwner;
    private String owner;

    public Item(int idOwner, String owner) {
        this.idOwner = idOwner;
        this.owner = owner;
    }

    public int getIdOwner() {
        return idOwner;
    }

    public void setIdOwner(int idOwner) {
        this.idOwner = idOwner;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString(){
        return getOwner();
    }
  
}
