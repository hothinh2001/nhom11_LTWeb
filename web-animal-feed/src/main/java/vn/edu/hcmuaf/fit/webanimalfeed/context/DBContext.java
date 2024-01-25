package vn.edu.hcmuaf.fit.webanimalfeed.context;

import java.sql.Connection;
import java.sql.DriverManager;

//public class DBContext {
//    public static Connection getConnection() throws Exception {
////        String url = "jdbc:mysql://viaduct.proxy.rlwy.net:53895/" + dbName;
//        String url = "jdbc:mysql://localhost:3306/" + dbName;
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        return DriverManager.getConnection(url, userID, password);
//    }
//
//    // Insert your other code right after this comment
//    // Change/update information of your database connection, DO NOT change name of instance variables in this class
//
////    private static final String dbName = "animal-feed";
////    private static final String userID = "root";
////    private static final String password = "admin";
//
//    private static final String dbName = "animal-feed";
//    private static final String userID = "root";
//
//    //private static final String password = "admin";
//
//
//    private static final String password = "";
//
//
//    public static void main(String[] args) {
//        try {
//            System.out.println(new DBContext().getConnection().toString() + "");
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}

public class DBContext {
    public static Connection getConnection() throws Exception {
        String url = "jdbc:mysql://localhost:3306/" + dbName;
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