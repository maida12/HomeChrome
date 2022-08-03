/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.homechrome.registeration;

/**
 *
 * @author Dell
 */
public class homes {
  
        private String customer;
        private String contractor;
        private String location;
        private int homeFloors;
        private double landSize;
        private double totalCost;
        private int homeStatus;

    public homes() {
    }

    public homes(String customer, String contractor, String location, int homeFloors, double landSize, double totalCost, int homeStatus) {
        this.customer = customer;
        this.contractor = contractor;
        this.location = location;
        this.homeFloors = homeFloors;
        this.landSize = landSize;
        this.totalCost = totalCost;
        this.homeStatus = homeStatus;
    }

    public String getCustomer() {
        return customer;
    }

    public String getContractor() {
        return contractor;
    }

    public String getLocation() {
        return location;
    }

    public int getHomeFloors() {
        return homeFloors;
    }

    public double getLandSize() {
        return landSize;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public int getHomeStatus() {
        return homeStatus;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public void setContractor(String contractor) {
        this.contractor = contractor;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setHomeFloors(int homeFloors) {
        this.homeFloors = homeFloors;
    }

    public void setLandSize(double landSize) {
        this.landSize = landSize;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public void setHomeStatus(int homeStatus) {
        this.homeStatus = homeStatus;
    }


}

