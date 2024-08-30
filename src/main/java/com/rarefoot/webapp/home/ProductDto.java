package com.rarefoot.webapp.home;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class ProductDto {
	@Id
	private int sid;
	private String shoeName;
	private String shoeImage;
	private int rating;
	private double prize;
	private int stock;
	private String category;
	private String brand;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getShoeName() {
		return shoeName;
	}
	public void setShoeName(String shoeName) {
		this.shoeName = shoeName;
	}
	public String getShoeImage() {
		return shoeImage;
	}
	public void setShoeImage(String shoeImage) {
		this.shoeImage = shoeImage;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public double getPrize() {
		return prize;
	}
	public void setPrize(double prize) {
		this.prize = prize;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	@Override
	public String toString() {
		return "ProductDto [sid=" + sid + ", shoeName=" + shoeName + ", shoeImage=" + shoeImage + ", rating=" + rating
				+ ", prize=" + prize + ", stock=" + stock + ", category=" + category + ", brand=" + brand + "]";
	}
	
}
