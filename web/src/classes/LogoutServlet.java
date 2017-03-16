package classes;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LogoutServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        try {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("logIn.jsp"); //logged-in page
            System.out.println("You are successfully logged out!");
        } catch (Throwable theException) {
            System.out.println(theException);
        }

    }
}
