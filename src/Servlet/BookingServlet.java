package Servlet;

import Hotel.User;
import Reservations.CustomerDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by abner on 11/22/14.
 */
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            User user = new User();
            user.setFirstname(request.getParameter("FirstName"));
            user.setLastname(request.getParameter("LastName"));
            user.setEmail(request.getParameter("email"));
            user.setPhone(request.getParameter("phone"));
            user = CustomerDAO.Reservation(user);

            if(user.isValid()){
                HttpSession session = request.getSession(true);
                session.setAttribute("currentsessionUser", user);
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("Booking.jsp");
            }
        }catch (Throwable throwable){
            System.out.println("Exception is" + throwable);
        }
    }
}
