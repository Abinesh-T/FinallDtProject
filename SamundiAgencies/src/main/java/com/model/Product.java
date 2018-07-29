package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	private String Name;
	private String Cost;
	private String BillingRate;
	private String RetailerBillingRate;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCost() {
		return Cost;
	}
	public void setCost(String cost) {
		Cost = cost;
	}
	public String getBillingRate() {
		return BillingRate;
	}
	public void setBillingRate(String billingRate) {
		BillingRate = billingRate;
	}
	public String getRetailerBillingRate() {
		return RetailerBillingRate;
	}
	public void setRetailerBillingRate(String retailerBillingRate) {
		RetailerBillingRate = retailerBillingRate;
	}
	
}
