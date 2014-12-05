package Hotel.Rooms;


/**
 * Created by kosu on 11/20/2014.
 */

import Database_Connection.ConnectionManager;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Reservation {

    static int roomNumber;
    static boolean vacacity = true;

    public static void reserveDates(int sdate, int edate) {


        Connection con = null;
        PreparedStatement st = null;

        setRoomNumnber(roomNumber);


        try {

            con = ConnectionManager.getConnection();

            st = con.prepareStatement("INSERT INTO " + getRNString() + "(sdates, edates) VALUES(?, ?)");
            st.setInt(1, sdate);
            st.setInt(2, edate);
            st.executeUpdate();

        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(Room.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {

            try {
                if (st != null) {
                    st.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                Logger lgr = Logger.getLogger(Room.class.getName());
                lgr.log(Level.SEVERE, ex.getMessage(), ex);
            }
        }
    }

    public static void reserveR(int sdate, int edate, int rmn) {

        setRoomNumnber(rmn);
        for (int rdate = sdate; rdate <= edate; rdate++) {
            checkDuplicant(rdate);
            if (!vacacity) {
                break;
            }
        }
        if (!vacacity) {
            System.out.println("not vacant.  checknext room");
        } else {
            reserveDates(sdate, edate);
        }
    }

    static void setRoomNumnber(int rnm) {
        roomNumber = rnm;
    }

    static int getRoomNumber() {
        return roomNumber;
    }

    static String getRNString() {
        String empt = "Room";
        return empt + getRoomNumber();
    }


    public static void checkDuplicant(int inputDate) {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        vacacity = true;


        setRoomNumnber(roomNumber);
        try {

            con = ConnectionManager.getConnection();
            pst = con.prepareStatement("SELECT * FROM " + getRNString());
            rs = pst.executeQuery();

            while (rs.next()) {
                if (rs.getInt(1) <= inputDate && rs.getInt(2) >= inputDate) {
                    vacacity = false;

                }

            }

        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(Reservation.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {

            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                Logger lgr = Logger.getLogger(Reservation.class.getName());
                lgr.log(Level.WARNING, ex.getMessage(), ex);
            }
        }
    }

    public static void cancelReserve(int sdate, int edate, int roomNumber) {

        Connection con = null;
        Statement st = null;

        setRoomNumnber(roomNumber);
        try {

            con = ConnectionManager.getConnection();
            st = con.createStatement();

            String query = "delete from " + getRNString() + " where sdates=" + sdate;
            String equery = "delete from " + getRNString() + " where edates=" + edate;

            st.executeUpdate(query);
            st.executeUpdate(equery);

        } catch (SQLException ex) {
            Logger lgr = Logger.getLogger(Room.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);

        } finally {
            try {
                if (st != null) {
                    st.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                Logger lgr = Logger.getLogger(Room.class.getName());
                lgr.log(Level.SEVERE, ex.getMessage(), ex);
            }
        }
    }
}

