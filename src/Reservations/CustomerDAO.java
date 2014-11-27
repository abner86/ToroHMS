package Reservations;

import Database_Connection.ConnectionManager;
import Hotel.User;

import java.sql.*;
import java.sql.Date;
import java.util.*;

/**
 * Created by abner on 11/22/14.
 */
public class CustomerDAO {
    private Connection connection;
    private static ResultSet resultSet = null;
    private static PreparedStatement preparedStatement = null;

    public CustomerDAO(){
        connection = ConnectionManager.getConnection();
    }

    public User Reservation(User customer){
        //this will print in the console to keep track what's the input in MySql
        String FirstName = customer.getFirstname();
        String LastName = customer.getLastname();
        String phone = customer.getPhone();
        String email = customer.getEmail();
        String address = customer.getAddress();
        String City = customer.getCity();
        String state = customer.getState();
        String zip = customer.getZip();
        Date checkin = new java.sql.Date(customer.getCheckin().getTime());
        Date checkout = new java.sql.Date(customer.getCheckout().getTime());
        String RoomType =  customer.getRoomType();
        int NumOfPeople = customer.getNumOfPeople();
        String insertQuery = "INSERT into Customer(id,LastName, FirstName, StreetAddress, City, state, zip, email, phone, checkin, checkout, RoomType, NumOfPeople,CreditCard,Expiration,SecurityCode,Total)" + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        System.out.println("First Name: " + FirstName);
        System.out.println("Last Name: " + LastName);
        System.out.println("Phone Number: " + phone);
        System.out.println("email: " + email);
        System.out.println("Street address: " + address);
        System.out.println("City: " + City);
        System.out.println("State: " + state);
        System.out.println("Zip: " + zip);
        System.out.println("CheckIn: " + checkin);
        System.out.println("CheckOut: " + checkout);
        System.out.println("Room Type: " + RoomType);
        System.out.println("Number of Adults: " + NumOfPeople);
        try{
            //connect to database
            connection = ConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement(insertQuery);

            preparedStatement.setInt(1,1);
            preparedStatement.setString(2, customer.getLastname());
            preparedStatement.setString(3, customer.getFirstname());
            preparedStatement.setString(4, customer.getAddress());
            preparedStatement.setString(5, customer.getCity());
            preparedStatement.setString(6, customer.getState());
            preparedStatement.setString(7, customer.getZip());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getPhone());
            preparedStatement.setDate(10, new java.sql.Date(customer.getCheckin().getTime()));
            preparedStatement.setDate(11, new java.sql.Date(customer.getCheckout().getTime()));
            preparedStatement.setString(12, customer.getRoomType());
            preparedStatement.setInt(13, customer.getNumOfPeople());
            preparedStatement.setInt(14, customer.getCreditCardNum());
            preparedStatement.setInt(15, customer.getExpiration());
            preparedStatement.setInt(16, customer.getSecurityCode());
            preparedStatement.setInt(17, customer.getTotal());
            preparedStatement.executeUpdate();
        }catch(Exception e){
            System.out.println(e);
        }finally{
            if(preparedStatement != null){
                try{
                    preparedStatement.close();
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

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from Customer");
            while (rs.next()) {
                User user = new User();
                user.setFirstname(rs.getString("FirstName"));
                user.setLastname(rs.getString("LastName"));
                user.setAddress(rs.getString("StreetAddress"));
                user.setCity(rs.getString("City"));
                user.setState(rs.getString("state"));
                user.setZip(rs.getString("zip"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setCheckin(rs.getDate("checkin"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
}
