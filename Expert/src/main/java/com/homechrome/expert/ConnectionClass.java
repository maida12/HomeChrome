package com.homechrome.expert;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {
    
    public static Connection createConnection() throws SQLException
    {
    	Connection con;
        con = null;
        
        String url = "jdbc:mysql://localhost:3306/HomeChrome?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
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
