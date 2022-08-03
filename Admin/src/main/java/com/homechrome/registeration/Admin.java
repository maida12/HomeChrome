/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.homechrome.registeration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Dell
 */
public class Admin extends User{
        //private String name;
        //private String email;
        //private String password;

    public Admin(String name, String email, String password) {
        
        //this.name = name;
        //this.email = email;
        //this.password = password;
    }

    public Admin() {
    }

    public String getName() {
        //return name;
    }

    public String getEmail() {
       // return email;
    }

    public String getPassword() {
       // return password;
    }

    public void setName(String name) {
       // this.name = name;
    }

    public void setEmail(String email) {
        //this.email = email;
    }

    public void setPassword(String password) {
        //this.password = password;
    }
    
    public int deleteScheme(String id){
        int result = 0;
        Connection con = null;
        
        try {
                con = ConnectionClass.createConnection();

                PreparedStatement pst = con.prepareStatement("Delete from schemes where id = ?");
                pst.setString(1, id);

                result = pst.executeUpdate();

                
        } catch (Exception e) {
                e.printStackTrace();
        }finally {
                try {
                        con.close();
                } catch (SQLException e) {
                        e.printStackTrace();
                }

        }
        

        return result;
    }
    
    public int addScheme(String id, String location, String description, String price){
        int result = 0;
        Connection con = null;
        
        try {
                con = ConnectionClass.createConnection();
                PreparedStatement pst = con.prepareStatement("insert into schemes values (?, ?, ?, ?)");
                 
                pst.setString(1, id);
                pst.setString(2, location);
                pst.setString(3, description);
                pst.setString(4, price);

                result = pst.executeUpdate();


        } catch (Exception e) {
                e.printStackTrace();
        }finally {
                try {
                        con.close();
                } catch (SQLException e) {
                        e.printStackTrace();
                }

        }
        
        
        return result;
    }
    
    public void viewTotalHomes(){
        
    }
    
    public void viewHomesByYear(){
        
    }
    
    public int blockCustomer(String id){
        int result = 0;
        Connection con = null;
        
        try {
                con = ConnectionClass.createConnection();
                PreparedStatement pst = con.prepareStatement("Delete from customers where id = ?");
                pst.setString(1, id);
                result = pst.executeUpdate();

                
        } catch (Exception e) {
                e.printStackTrace();
        }finally {
                try {
                        con.close();
                } catch (SQLException e) {
                        e.printStackTrace();
                }
    }
        return result;
    }
    
        public int blockContractor(String id){
        int result = 0;
        Connection con = null;
        
        try {
                con = ConnectionClass.createConnection();

                PreparedStatement pst = con.prepareStatement("Delete from contractors where id = ?");
                pst.setString(1, id);

                result = pst.executeUpdate();

                
        } catch (Exception e) {
                e.printStackTrace();
        }finally {
                try {
                        con.close();
                } catch (SQLException e) {
                        e.printStackTrace();
                }
    }
        return result;
    }
        
        public int blockExpert(String id){
        int result = 0;
        Connection con = null;
        
        try {
                con = ConnectionClass.createConnection();

                PreparedStatement pst = con.prepareStatement("Delete from experts where eid = ?");
                pst.setString(1, id);

                result = pst.executeUpdate();

                
        } catch (Exception e) {
                e.printStackTrace();
        }finally {
                try {
                        con.close();
                } catch (SQLException e) {
                        e.printStackTrace();
                }
    }
        return result;
    }
    
    public void updateProfile(){
        
    }

}
