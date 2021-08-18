/*
 * Here comes the text of your license
 * Each line should be prefixed with  * 
 */
package model_pkg;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Patricia
 */
public class Conexion {
    //Se procede a establecer conexión con la base de datos localhost:3306/reto6_g43.

    Connection connection;
    public Conexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/reto6_g43", "root", "");
            if (connection != null) {
                System.out.println("Conexión exitosa");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Conexión fallida");
        }
    }

    public Connection getConnection() {
        return connection;
    }

   

}
