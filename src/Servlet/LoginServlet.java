package Servlet;

import Hotel.User;
import Login.EmployeeDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by abner on 11/10/14.
 */
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            User user = new User();
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user = EmployeeDAO.login(user);

            if (user.isValid()) {
                HttpSession session = request.getSession(true);
                session.setAttribute("currentSessionUser", user);
                response.sendRedirect("userLogged.jsp");
            } else {
                out.print("<p style=\"color:red\">Sorry Wrong Password or Username</p>");
                RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
                rd.include(request,response);
            }
        } catch (Throwable throwable) {
            System.out.println("Exception is" + throwable);
        }
    }
}
