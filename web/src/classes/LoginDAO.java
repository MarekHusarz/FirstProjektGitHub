package classes;

import java.io.FileReader;
import java.sql.*;

public class LoginDAO {


    public static UserBean login(UserBean bean) {

        Connection currentCon = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;

        String username = bean.getUsername();
        String password = bean.getPassword();
        try {
            String query =
                    "select * from pageusers where username=? AND password=?";
            currentCon = ConnectionManager.getConnection();
            pstmt = currentCon.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            System.out.println("Query: " + query);

            rs = pstmt.executeQuery();
            boolean more = rs.next();

            // if user does not exist set the isValid variable to false
            if (!more) {
                System.out.println("Sorry, you are not a registered user! Please sign up first");
                bean.setValid(false);
            } else if (more) {
                bean.setValid(true);
                System.out.println("User is Log in");
            }
        } catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
                rs = null;
            }

            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (Exception e) {
                }
                pstmt = null;
            }

            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }

                currentCon = null;
            }
        }

        return bean;

    }
}