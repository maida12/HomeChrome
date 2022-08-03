/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Dell
 */
package com.homechrome.registeration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {
    
    public static Connection createConnection() throws SQLException
    {
    	Connection con;
        con = null;
        
        String url = "jdbc:mysql://localhost:3306/homechrome";
        String username = "root";
        String password = "maida";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
        }
        con = DriverManager.getConnection(url, username, password);
        System.out.println("Post establishing a DB connection - "+con);
    
	return con;
    }
}
