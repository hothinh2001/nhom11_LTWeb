package vn.edu.hcmuaf.fit.webanimalfeed.context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    public static Connection getConnection() throws Exception {
        String url = "jdbc:mysql://34.171.119.211:3306/" + dbName;
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, userID, password);
    }

    // Insert your other code right after this comment
    // Change/update information of your database connection, DO NOT change name of instance variables in this class
    private static final String dbName = "animal-feed";
    private static final String userID = "root";
    private static final String password = "admin";

    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection() + "");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}