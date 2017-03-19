package classes;

import java.sql.*;

public class RegisterDAO {

    public static UserBean login(UserBean bean) throws SQLException {
        Connection currentCon = null;
        PreparedStatement pstmt = null;
        int number = 0;

        String username = bean.getUsername();
        String password = bean.getPassword();
        String emile = bean.getEmile();
        String phone = bean.getPhone();
        String country = bean.getCountry();
        String date = bean.getDate();

        try {
            String query =
                    "INSERT INTO pageusers (username, password, emile, phone, country, date) VALUES"
                            + "(?, ?, ?, ?, ?, ?)";
            currentCon = ConnectionManager.getConnection();
            pstmt = currentCon.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, emile);
            pstmt.setString(4, phone);
            pstmt.setString(5, country);
            pstmt.setString(6, date);
            System.out.println("Query: " + query);

            number = pstmt.executeUpdate();
            System.out.println("Record is inserted into pageusers table!");

            if (number > 0) {
                bean.setValid(true);

            } else {
                bean.setValid(false);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (number != 0) {
                number = 0;
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