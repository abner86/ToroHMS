package Servlet;

import Hotel.User;
import Reservations.CustomerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    public BookingServlet(){
        super();
        customer = new CustomerDAO();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
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
                user.setCheckin(checkout);
            }catch (ParseException e){
                e.printStackTrace();
            }
            user.setRoomType(request.getParameter("RoomType"));
            user.setNumOfPeople(Integer.parseInt(request.getParameter("NumOfPeople")));

            customer.Reservation(user);

            RequestDispatcher view = request.getRequestDispatcher("Booking.jsp");
            request.setAttribute("users", customer.getAllUsers());
            view.forward(request, response);
        }catch (Throwable throwable){
            System.out.println("Exception is " + throwable);
        }
    }
}
