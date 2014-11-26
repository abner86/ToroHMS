package Database_Connection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by abner on 11/10/14.
 */
//connection manager for connecting mysql-java to server
public class ConnectionManager {
    private static Connection connection;
    //static String url;
    //Database connection address, password, username, and driver
    private static String url = "jdbc:mysql://localhost:3306/";
    private static String dbName = "ToroHMS";
    private static String dbUser = "abnerb86";
    private static String dbPass = "adriab2005";
    private static String driver = "com.mysql.jdbc.Driver";

    public static Connection getConnection() {
        try {
            Class.forName(driver);
            try {
                connection = DriverManager.getConnection(url + dbName, dbUser, dbPass);
                System.out.println("Connection Success"); //prints in console to track progress of connection
            } catch (Exception e) {
                System.out.println("Database.getConnection() Error -->" + e.getMessage());
                return null;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
