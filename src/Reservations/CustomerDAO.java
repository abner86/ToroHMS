package Reservations;

import Database_Connection.ConnectionManager;
import Hotel.User;

import java.sql.*;

/**
 * Created by abner on 11/22/14.
 */
public class CustomerDAO {
    private static Connection connection = null;
    private static ResultSet resultSet = null;
    private static PreparedStatement ps = null;

    public static User Reservation(User customer){
        Statement statement = null;
        String FirstName = customer.getFirstname();
        String LastName = customer.getLastname();
        String address = customer.getAddress();
        String email = customer.getEmail();
        String phone = customer.getPhone();
        String insertQuery = "INSERT into Customer(LastName, FirstName, email, phone) values(?,?,?,?,?,?,?,?,?)";
        //this will print in the console to keep track of query process
        System.out.println("Your First Name is " + FirstName);
        System.out.println("Your Last Name is " + LastName);
        System.out.println("Your email is " + email);
        System.out.println("Your Phone Number is " + phone);
        System.out.println("Query: " + insertQuery);
        try{
            //connect to database
            connection = ConnectionManager.getConnection();
            ps = connection.prepareStatement(insertQuery);

            ps.setString(1, LastName);
            ps.setString(2, FirstName);
            ps.setString(6, email);
            ps.setString(7, phone);
            ps.executeUpdate();

            customer.setLastname(LastName);
            customer.setFirstname(FirstName);
            customer.setEmail(email);
            customer.setPhone(phone);

        }catch(Exception e){
            System.out.println(e);
        }finally{
            if(ps != null){
                try{
                    ps.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            if(connection != null){
                try{
                    connection.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
                connection = null;
            }
        }
        return customer;
    }
}
