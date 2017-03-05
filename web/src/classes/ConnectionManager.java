package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionManager {

    static Connection con;
    static String url;

    public static Connection getConnection()
    {

        try
        {
            String url = "jdbc:mysql:" + "//localhost/users?";
            // assuming "DataSource" is your DataSource name

            try {
                // The newInstance() call is a work around for some
                // broken Java implementations

                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (Exception ex) {
                // handle the error
            }

            try
            {
                con = DriverManager.getConnection( url ,"root","");

                // assuming your SQL Server's	username is "username"
                // and password is "password"

            }

            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }

        catch(Exception e)
        {
            System.out.println(e);
        }

        return con;
    }
}