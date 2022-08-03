/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.homechrome.registeration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */

public class totalHomesDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/homechrome?zeroDateTimeBehavior=CONVERT_TO_NULL";
        //private String jdbcURL = "jdbc:mysql://localhost:3306/homechrome?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "maida";

	//private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, email, country) VALUES "
	//		+ " (?, ?, ?);";

	//private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
	private static final String SELECT_ALL_HOMES = "select * from homes";
	//private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	//private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";

	public totalHomesDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
                    //System.out.println("Hello World!");
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}


	public List<homes> selectAllHomes() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<homes> Homes = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_HOMES);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
                                    
                                
                            
                                String customer = rs.getString("customer");
                                String contractor = rs.getString("contractor");
                                String location = rs.getString("location");
                                int homeFloors = rs.getInt("homeFloors");
                                double landSize = rs.getDouble("landSize");
                                double totalCost = rs.getDouble("totalCost");
                                int homeStatus = rs.getInt("homeStatus");
                          
                            //System.out.println("Hello World!");
				//int id = rs.getInt("id");
				//String name = rs.getString("name");
				//String email = rs.getString("email");
				//String country = rs.getString("country");
				Homes.add(new homes(customer, contractor, location, homeFloors, landSize, totalCost, homeStatus));
			}
		} catch (SQLException e) {
			//printSQLException(e);
                        e.printStackTrace();
		}
		return Homes;
	}



	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
