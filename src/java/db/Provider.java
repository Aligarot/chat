package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Dima on 06.12.2016.
 */
public class Provider {
    private static final String password= "root";
    private static final String user= "root";
    private static final String url= "jdbc:mysql://localhost:3306/ky";
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException e) {
            System.out.println("ssssssss");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Provider() {
    }

    public static Connection getConnection() throws SQLException {
        try {
            if(connection.isClosed()){
                return connection = DriverManager.getConnection(url,user,password);
            }else{
                return connection;
            }
        } catch (SQLException e) {
            return connection = DriverManager.getConnection(url,user,password);
        }
    }

    public static void close() throws SQLException {
        connection.close();
    }
}
