package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class CompanyExpense {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	private String Date;
	private String OpeningAmount;
	private String Expenses;
	private String Tea;
	private String Salary;
	private String Diesel;
	private String Advance;
	private String Others;
	private String Sales;
	private String TotalSales;
	private String User;
	public String getUser() {
		return User;
	}

	public void setUser(String user) {
		User = user;
	}

	public String getSales() {
		return Sales;
	}

	public void setSales(String sales) {
		Sales = sales;
	}

	public void setId(int id) {
		Id = id;
	}
	public String getTea() {
		return Tea;
	}

	public void setTea(String tea) {
		Tea = tea;
	}

	public String getSalary() {
		return Salary;
	}

	public void setSalary(String salary) {
		Salary = salary;
	}

	public String getDiesel() {
		return Diesel;
	}

	public void setDiesel(String diesel) {
		Diesel = diesel;
	}

	public String getAdvance() {
		return Advance;
	}

	public void setAdvance(String advance) {
		Advance = advance;
	}

	public String getOthers() {
		return Others;
	}

	public void setOthers(String others) {
		Others = others;
	}

	public int getId() {
		return Id;
	}

	public void setpId(int Id) {
		this.Id = Id;
	}
	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getOpeningAmount() {
		return OpeningAmount;
	}

	public void setOpeningAmount(String openingAmount) {
		OpeningAmount = openingAmount;
	}

	public String getExpenses() {
		return Expenses;
	}

	public void setExpenses(String expenses) {
		Expenses = expenses;
	}

	public String getTotalSales() {
		return TotalSales;
	}

	public void setTotalSales(String totalSales) {
		TotalSales = totalSales;
	}

}
