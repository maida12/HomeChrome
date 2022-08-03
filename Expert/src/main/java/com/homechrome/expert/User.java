package com.homechrome.expert;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class User {
    String Email;
    String Name;
    String Password;
    
    public abstract boolean SignUp();
    public abstract boolean updateProfile();
    
    public ResultSet logIn( String email_ , String password_,String role) {
        setEmail(email_);
        setPassword(password_);
	ResultSet resultSet = null;	
    
        
        try {
            Connection con = null;
            con = ConnectionClass.createConnection();
            
            
            String Query = null;
            if(role.equals("admin"))
            {
                 Query = "select * from admin where email = ? and password = ? ";
                 PreparedStatement pst = con.prepareStatement(Query);
                 pst.setString(1, email_);
                 pst.setString(2, password_);
            
                 resultSet = pst.executeQuery();
            }
           
            if(role.equals("expert"))
            {
                 Query = "select * from experts where email = ? and password = ? ";
                 PreparedStatement pst = con.prepareStatement(Query);
                 pst.setString(1, email_);
                 pst.setString(2, password_);
            
                 resultSet = pst.executeQuery();
            }
            if(role.equals("customer"))
            {
                 Query = "select * from customers where email = ? and password = ? ";
                 PreparedStatement pst = con.prepareStatement(Query);
                 pst.setString(1, email_);
                 pst.setString(2, password_);
            
                 resultSet = pst.executeQuery();
            }
            if(role.equals("contractor"))
            {
                 Query = "select * from contractors where email = ? and password = ? ";
                 PreparedStatement pst = con.prepareStatement(Query);
                 pst.setString(1, email_);
                 pst.setString(2, password_);
            
                 resultSet = pst.executeQuery();
            }
            else
            {
                out.print("---22");
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;
        
       // return resultSet;  
    }
    
    public void logOut() {
        // TODO implement here
      
    }
    
    public void viewContractors() {
        // TODO implement here
       
    }

    public void viewProfile() {
       
    }
    
     public String getEmail(){
        return Email;
    }
     
    public String getName(){
        return Name;
    }
    
    public String getPassword(){
        return Password ;   
    }
    
    public void setEmail(String Email_){
        Email = Email_;
    }
    
    public void setName(String Name_){
        Name = Name_;
    }
    
    public void setPassword(String Password_){
        Password = Password_;
    }
    


}
