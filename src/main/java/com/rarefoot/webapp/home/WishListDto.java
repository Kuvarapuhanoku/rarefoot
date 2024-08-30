package com.rarefoot.webapp.home;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.rarefoot.webapp.login.LoginDto;

@Entity
public class WishListDto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int wishListId;
	
	@ManyToOne
	@JoinColumn(name = "id")
	private List<LoginDto> user;
	
	@ManyToOne
	@JoinColumn(name = "sid")
	private List<ProductDto> product;

	
	
	public int getWishListId() {
		return wishListId;
	}



	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}



	public List<LoginDto> getUser() {
		return user;
	}



	public void setUser(List<LoginDto> user) {
		this.user = user;
	}



	public List<ProductDto> getProduct() {
		return product;
	}



	public void setProduct(List<ProductDto> product) {
		this.product = product;
	}



	@Override
	public String toString() {
		return "WishListDto [wishListId=" + wishListId + ", user=" + user + ", product=" + product + "]";
	}
	
}
