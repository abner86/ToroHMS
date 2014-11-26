package Reservations;

import Database_Connection.ConnectionManager;
import Hotel.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
        String FirstName = customer.getFirstname();
        String LastName = customer.getLastname();
        String insertQuery = "INSERT into Customer(LastName, FirstName, StreetAddress, City, state, zip, email, phone, checkin, checkout, RoomType, NumOfPeople) values(?,?,?,?,?,?,?,?,?,?,?,?)";

        System.out.println("Your First Name is " + FirstName);
        System.out.println("Your Last Name is " + LastName);
        try{
            //connect to database
            connection = ConnectionManager.getConnection();
            preparedStatement = connection.prepareStatement(insertQuery);

            preparedStatement.setString(1, customer.getLastname());
            preparedStatement.setString(2, customer.getFirstname());
            preparedStatement.setString(3, customer.getAddress());
            preparedStatement.setString(4, customer.getCity());
            preparedStatement.setString(5, customer.getState());
            preparedStatement.setString(6, customer.getZip());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getPhone());
            preparedStatement.setDate(9, new java.sql.Date(customer.getCheckin().getTime()));
            preparedStatement.setDate(10, new java.sql.Date(customer.getCheckout().getTime()));
            preparedStatement.setString(11, customer.getRoomType());

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
