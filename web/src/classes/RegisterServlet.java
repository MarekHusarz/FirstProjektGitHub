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
                HttpSession session = request.getSession(true);
                session.setAttribute("currentSessionUser", user);
                response.sendRedirect("LogIn.jsp"); //logged-in page
            } else
                System.out.println("user nie jest valid");
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}
