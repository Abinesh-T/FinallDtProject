package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class IceBalance {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	private String Date;
	private String ShopName;
	private String CareOf;
	private String Balance;
	private String Paid;
	private String Total;
	private String User;
	public String getUser() {
		return User;
	}
	public void setUser(String user) {
		User = user;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getShopName() {
		return ShopName;
	}
	public void setShopName(String shopName) {
		ShopName = shopName;
	}
	public String getCareOf() {
		return CareOf;
	}
	public void setCareOf(String careOf) {
		CareOf = careOf;
	}
	public String getBalance() {
		return Balance;
	}
	public void setBalance(String balance) {
		Balance = balance;
	}
	public String getPaid() {
		return Paid;
	}
	public void setPaid(String paid) {
		Paid = paid;
	}
	public String getTotal() {
		return Total;
	}
	public void setTotal(String total) {
		Total = total;
	}
	
}
