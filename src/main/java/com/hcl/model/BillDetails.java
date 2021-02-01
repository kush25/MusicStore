package com.hcl.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "billdts")
public class BillDetails {

	@Id
	@GeneratedValue
	private long bId;
	private String custAddress;
	private String custCity;
	private String custState;
	private String custCountry;
	private int custZip;
	

	@OneToOne
	@PrimaryKeyJoinColumn
	public User user;


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

	
	
	
	public long getbId() {
		return bId;
	}


	public void setbId(long bId) {
		this.bId = bId;
	}


	public String getCustAddress() {
		return custAddress;
	}


	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}


	public String getCustCity() {
		return custCity;
	}


	public void setCustCity(String custCity) {
		this.custCity = custCity;
	}


	public String getCustState() {
		return custState;
	}


	public void setCustState(String custState) {
		this.custState = custState;
	}


	public String getCustCountry() {
		return custCountry;
	}


	public void setCustCountry(String custCountry) {
		this.custCountry = custCountry;
	}


	public int getCustZip() {
		return custZip;
	}


	public void setCustZip(int custZip) {
		this.custZip = custZip;
	}


	public BillDetails() {
		super();
		// TODO Auto-generated constructor stub
	}


	public BillDetails(String custAddress, String custCity, String custState, String custCountry,
			int custZip) {

		this.custAddress = custAddress;
		this.custCity = custCity;
		this.custState = custState;
		this.custCountry = custCountry;
		this.custZip = custZip;
	}
}









