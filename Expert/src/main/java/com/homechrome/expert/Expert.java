package com.homechrome.expert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Expert extends User{

    private double pricePerMeeting;
    private String experience;
    private String available_day;
    
    public Expert() {
        Email = "";
        Name = "";
        Password = "";
        pricePerMeeting = 0;
        experience = "";
    }
    
    @Override
    public boolean SignUp() {  
        
        try {
            Connection con = null;
            con = ConnectionClass.createConnection();
            
            String query = null;
            query = "select email,Password from experts where email = this.Email; ";
            if(query == null)
            {
                return false;
            }
            PreparedStatement pst = con.prepareStatement("insert into experts(Name,email,Password,Price,Experience) values(?, ?, ?, ?, ?) ");
            pst.setString(1, this.Name);
            pst.setString(2, this.Email);
            pst.setString(3, this.Password);
            pst.setInt(4, (int) this.pricePerMeeting);
            pst.setString(5, this.experience);
            pst.executeUpdate();
            
            return true;
        } catch (SQLException ex) {
           return false;
        }
    }

    @Override
    public boolean updateProfile() {
        
        try {
            Connection con = null;
            con = ConnectionClass.createConnection();
            
            
            
            if(!"".equals(this.Name) )
            {
                String UPDATE_Expert = "update experts set Name = ? where Email = ?";
                PreparedStatement pst = con.prepareStatement(UPDATE_Expert);
                pst.setString(1, Name);
                pst.setString(2, Email);
                pst.executeUpdate();
            }
            if(!"".equals(this.Password))
            {
                String UPDATE_Expert = "update experts set Password = ? where Email = ?";
                PreparedStatement pst = con.prepareStatement(UPDATE_Expert);
                pst.setString(1, Password);
                pst.setString(2, Email);
                pst.executeUpdate();
            }
            if(!"".equals(this.pricePerMeeting))
            {
                String UPDATE_Expert = "update experts set Price = ? where Email = ?";
                PreparedStatement pst = con.prepareStatement(UPDATE_Expert);
                pst.setInt(1, (int) pricePerMeeting);
                pst.setString(2, Email);
                pst.executeUpdate();
            }
            if(!"".equals(experience))
            {

                String UPDATE_Expert = "update experts set Experience = ? where Email = ?";
                PreparedStatement pst = con.prepareStatement(UPDATE_Expert);
                pst.setString(1, experience);
                pst.setString(2, Email);
                pst.executeUpdate();
            }
            return true;
        } catch (SQLException ex) {
            return false;
           // Logger.getLogger(Expert.class.getName()).log(Level.SEVERE, null, ex);
        }   
    } 
               
    public void setExperience(String Exp) {
        experience = Exp;     
    }
    public void setDay(String day) {
        available_day = day;     
    }
    public void setPricePerMeeting(double price) {
        pricePerMeeting = price;
    }

    public double getPricePerMeeting() {
        return pricePerMeeting;
    }
    
    public String getDay() {
        return available_day;     
    }
    
    public String getExperience() {
        return experience;
    }

    public void updateMeetingSlots(String Day, String Email_e) {
        
          try {
            Connection con = null;
            con = ConnectionClass.createConnection();
            
            //String UPDATE_Expert = "update expert set day = " + Day + " where email = " + Email_e +" ";
            String UPDATE_Expert = "update experts set day = ? where email = ?";
            PreparedStatement pst = con.prepareStatement(UPDATE_Expert);
            pst.setString(1, Day);
            pst.setString(2, Email_e);
            System.out.println("Email_e");
            System.out.println("Day");
            
            pst.executeUpdate();
            //con.close();
            
        } catch (SQLException ex) {
           
        }  
    }
}
