package Servlet;

import Hotel.Rooms.Reservation;
import Hotel.User;
import Reservations.CustomerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by abner on 11/22/14.
 */
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CustomerDAO customer;
    private Reservation reservation;
    public BookingServlet(){
        super();
        customer = new CustomerDAO();
        reservation = new Reservation();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            User user = new User();
            user.setFirstname(request.getParameter("FirstName"));
            user.setLastname(request.getParameter("LastName"));
            user.setAddress(request.getParameter("StreetAddress"));
            user.setCity(request.getParameter("City"));
            user.setState(request.getParameter("state"));
            user.setZip(request.getParameter("zip"));
            user.setEmail(request.getParameter("email"));
            user.setPhone(request.getParameter("phone"));
            try{
                Date checkin = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("checkin"));
                System.out.println(" " + checkin);
                user.setCheckin(checkin);
            }catch (ParseException e){
                e.printStackTrace();
            }
            try{
                Date checkout = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("checkout"));
                System.out.println(" " + checkout);
                user.setCheckout(checkout);
            }catch (ParseException e){
                e.printStackTrace();
            }
            user.setRoomType(request.getParameter("RoomType"));
            user.setNumOfPeople(Integer.parseInt(request.getParameter("NumOfPeople")));
            user.setCreditCardNum(Integer.parseInt(request.getParameter("CreditCard")));
            user.setExpiration(Integer.parseInt(request.getParameter("Expiration")));
            user.setSecurityCode(Integer.parseInt(request.getParameter("SecurityCode")));

            user = customer.Reservation(user);

            if (user.isValid()) {
                HttpSession session = request.getSession(true);
                session.setAttribute("customers", user);
                response.sendRedirect("index.jsp");
            } else {
                RequestDispatcher rd=request.getRequestDispatcher("Booking.jsp");
                rd.include(request,response);
            }
    }
}
