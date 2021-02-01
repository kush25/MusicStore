package com.hcl.model;
import javax.persistence.*;

@Entity
public class Cart {
	
	@Id
	@GeneratedValue
	private int cid;
	private String category;
	private String conditions;
	private String musicnames;
	private int price;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	public String getMusicnames() {
		return musicnames;
	}
	public void setMusicnames(String musicnames) {
		this.musicnames = musicnames;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public Cart(String category, String conditions, String musicnames, int price) {
		super();
		this.category = category;
		this.conditions = conditions;
		this.musicnames = musicnames;
		this.price = price;
	}
	
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	
	
}
