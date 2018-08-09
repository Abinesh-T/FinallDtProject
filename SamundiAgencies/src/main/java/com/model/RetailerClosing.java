package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class RetailerClosing {
	
	private String Date;
	private String Name;
	private String OpeningStock;
	private String ClosingStock;
	private int Sold;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getOpeningStock() {
		return OpeningStock;
	}

	public void setOpeningStock(String openingStock) {
		OpeningStock = openingStock;
	}

	public String getClosingStock() {
		return ClosingStock;
	}

	public void setClosingStock(String closingStock) {
		ClosingStock = closingStock;
	}

	public int getSold() {
		return Sold;
	}

	public void setSold(int sold) {
		Sold = sold;
	}

	

}
