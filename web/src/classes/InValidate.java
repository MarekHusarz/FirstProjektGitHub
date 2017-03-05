package classes;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class InValidate extends HttpServlet {

    static Connection currentCon = null;
    static ResultSet rs = null;
    static PreparedStatement pstmt = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String strStatus = "Username is available";

        Connection currentCon = null;
        Statement statement = null;
        int number = 0;

        try {
            System.out.println("Performing check");
            String username = request.getParameter("username");
            String strQuery = "SELECT * FROM uzytkownicy WHERE user='" + username + "'";
            currentCon = ConnectionManager.getConnection();
            statement = currentCon.createStatement();
            System.out.println(strQuery);
            // execute insert SQL stetement
            rs = statement.executeQuery(strQuery);
            boolean userExists = rs.next();
            if (userExists) {
                strStatus = "Username already exists"; // Return Exist Msg
            }
        } catch (Exception e) {
            strStatus = "Some error occured. Try again"; // Return Err Msg
            e.printStackTrace();
        }
        System.out.println(strStatus);
    }
}