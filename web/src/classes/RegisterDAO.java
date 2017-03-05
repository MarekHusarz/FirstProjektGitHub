package classes;

import java.sql.*;

public class RegisterDAO {


    public static UserBean login(UserBean bean) throws SQLException {

        //preparing some objects for connectiondds
        Connection currentCon = null;
        Statement statement = null;
        int number = 0;

        String username = bean.getUsername();
        String password = bean.getPassword();
        String emile = bean.getEmile();
        String phone = bean.getPhone();
        String country = bean.getCountry();
        String date = bean.getDate();


        String query =
                "INSERT INTO uzytkownicy (user, pass, email) VALUES ('" + username + "','" + password + "','" + emile + "')";

        // "System.out.println" prints in the console; Normally used to trace the process
        System.out.println("Your user name is " + username);
        System.out.println("Your password is " + password);
        System.out.println("Query: " + query);

        try {
            currentCon = ConnectionManager.getConnection();
            statement = currentCon.createStatement();
            System.out.println(query);
            // execute insert SQL stetement
            number = statement.executeUpdate(query);
            System.out.println("Record is inserted into DBUSER table!");

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
            if (statement != null) {
                try {
                    statement.close();
                } catch (Exception e) {
                }
                statement = null;
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