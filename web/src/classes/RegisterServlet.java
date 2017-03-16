package classes;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try {

            UserBean user = new UserBean();
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setEmile(request.getParameter("emile"));
            user.setPhone(request.getParameter("phone"));

            user = RegisterDAO.login(user);
            if (user.isValid()) {
                response.sendRedirect("logIn.jsp"); //logged-in page
            } else
                System.out.println("registration not valid");
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}
