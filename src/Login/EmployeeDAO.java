package Login;

import Hotel.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by abner on 11/10/14.
 */
public class EmployeeDAO {
    private static Connection connection = null;
    private static ResultSet resultSet = null;

    public static User login(User info) {
        //preparing some objects for connection
        Statement statement = null;
        String username = info.getUsername();
        String password = info.getPassword();
        String searchQuery = "select * from staff where username='" + username + "' AND password='" + password + "'";
        //This will pring in the console to keep track of query process
        System.out.println("Your username is " + username);
        System.out.println("Your password is " + password);
        System.out.println("Query: " + searchQuery);
        try {
            //connect to database
            connection = ConnectionManager.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(searchQuery);
            boolean more = resultSet.next();
            // if user does not exist set the isValid variable to false
            if (!more) {
                System.out.println("Not Authorize");
                info.setValid(false);
                // if user does not exist set the isValid variable to true
            } else {
                String FirstName = resultSet.getString("FirstName");
                String LastName = resultSet.getString("LastName");
                System.out.println("Welcome " + FirstName + " " + LastName);
                info.setFirstname(FirstName);
                info.setLastname(LastName);
                info.setValid(true);
            }
        } catch (Exception e) {
            System.out.println("login failed" + e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                resultSet = null;
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                connection = null;
            }
        }
        return info;
    }
}
