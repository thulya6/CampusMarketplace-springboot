package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ecom",
                    "root",
                    "root");

            System.out.println("Connected to database");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}