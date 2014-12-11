package Hotel.Rooms;

/**
 * Created by kosu on 11/20/2014.
 */
import Database_Connection.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//change class from abnstract to public
public class Room {
    private static Connection con = null;
    static int roomNumber;
    String roomType;
    float rates;
    int maxNumOfPeople;
    int indexCounter;//for table
    // static int roomCounter=0;
    static boolean vacacity = true;
    private static String url = "jdbc:mysql://localhost:3306/ToroHMS";
    private static String dbUser = "abnerb86";
    private static String dbPass = "adriab2005";
    private static String driver = "com.mysql.jdbc.Driver";
    static final Hotel.Rooms.Reservation r = new Reservation();


    float getPrice() {
        return rates;
    }

    void setRoomRates(float newRates) {
        rates = newRates;
    }

    void setRoomType(String rType) {
        roomType = rType;
    }

    void setMaxPeople(int max) {
        maxNumOfPeople = max;
    }
    String getRoomType() {
        return roomType;
    }
    static void setRoomNumber(int rmn) {
        roomNumber = rmn;
    }
    static int getRoomNumber() {
        return roomNumber;
    }
    static String getRNString() {
        String empt = "Room";
        return empt + getRoomNumber();
    }
    public static void reserve(int sdate, int edate, int roomNumber) {
        Reservation.reserveR(sdate, edate, roomNumber);
    }
    public static void addTable(String x) {
        //Connection con = null;
        PreparedStatement pst = null;
        try {


            con = ConnectionManager.getConnection();

            // insert successfull
            pst = con.prepareStatement("Create table if not exists " + x + "(sdates int, edates int)");

            //pst.setString(1,"x");

            pst.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
            //Logger lgr = Logger.getLogger(Room.class.getName());
            //lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {

            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                ex.printStackTrace();
                //Logger lgr = Logger.getLogger(Room.class.getName());
                //lgr.log(Level.SEVERE, ex.getMessage(), ex);
            }
        }
    }

    public static void cancelR(int sdate, int edate, int rmn) {
        r.cancelReserve(sdate, edate, rmn);
    }
}