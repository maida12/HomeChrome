package com.unique.registeration;

public class Customer {
private int id;
	
	private String name;
	private String email;
	private String password;
	private int HouseCount;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getHouseCount() {
		return HouseCount;
	}
	public void setHouseCount(int houseCount) {
		HouseCount = houseCount;
	}
	public long CostEstimation(int structure,int floors, int quality,int area)
	{
		long cost=0;
		if(structure == 1 &&floors==1 &&quality==1 )	//grey structure 1 floor normal quality
		{
			cost=1950*area;
		}
		if(structure == 1 &&floors==2 &&quality==1 )	//grey structure 2 floor normal quality
		{
			cost=1950*area*2;
			
		}
		if(structure == 1 &&floors==1 &&quality==2 )	//grey structure 2 floor delux quality
		{
			cost=3200*area;
		}
		
		if(structure == 1 &&floors==2 &&quality==2 )	//Grey structure 2 floor Delux quality
		{
			cost=3200*area*2;
		}
		if(structure == 2 &&floors==1 &&quality==1 )	//finishing structure 1 floor Normal quality
		{
			cost=3500*area;
		}
		if(structure == 2 &&floors==2 &&quality==1 )	//finishing structure 2 floor Normal quality
		{
			cost=3500*area*2;
		}
		if(structure == 2 &&floors==1 &&quality==2 )	//finishing structure 1 floor Delux quality
		{
			cost=3900*area;
		}
		if(structure == 2 &&floors==2 &&quality==2 )	//finishing structure 2 floor Delux quality
		{
			cost=3900*area*2;
		}
		
		return cost;
	}
	public float TimeEstimation(int structure,int floors)
	{
		
		long time=0;
		if(structure == 1 &&floors==1  )	//grey structure 1 floor normal quality
		{
			time=7;
		}
		if(structure == 1 &&floors==2  )	//grey structure 2 floor normal quality
		{
			time=9;
			
		}
		
		
		if(structure == 2 &&floors==1 )	//finishing structure 1 floor Normal quality
		{
			time=16;
		}
		if(structure == 2 &&floors==2  )	//finishing structure 2 floor Normal quality
		{
			time=21;
		}
		
		return time;
		
		
	}
}
