package com.example.demo8;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class MysqlConnection {
    private static String HOST = "127.0.0.1";
    private static int PORT = 3306;
    private static String DB_NAME = "bank";
    private static String USERNAME = "root";
    private static String PASSWORD = "";
    private static Connection connection ;

    public static Connection getMysqlConnection() {
        try {
            connection = DriverManager.getConnection(String.format("jdbc:mysql://%s:%d/%s",HOST,PORT,DB_NAME),USERNAME,PASSWORD);
        } catch (SQLException e) {
            Logger.getLogger(MysqlConnection.class.getName()).log(Level.SEVERE,null, e);
        }
        return connection;
    }


}
