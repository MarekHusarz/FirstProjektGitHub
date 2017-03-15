package classes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {


        try {

            UserBean user = new UserBean();
            user.setUsername(request.getParameter("login"));
            user.setPassword(request.getParameter("haslo"));

            user = UserDAO.login(user);

            if (user.isValid()) {

                HttpSession session = request.getSession(true);
                session.setAttribute("currentSessionUser", user);
                response.sendRedirect("index.jsp"); //logged-in page
            } else
                System.out.println("not valid");
                response.sendRedirect("logIn.jsp");

        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}
