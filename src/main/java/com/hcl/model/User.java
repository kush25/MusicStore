package com.hcl.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	
		@Id
		@GeneratedValue
		private long id;
		private String uName;
		private String email;
		private String username;
		private String password;
	
		
		@OneToOne(mappedBy="user",cascade=CascadeType.ALL)
		public BillDetails billdetails;


		public long getId() {
			return id;
		}


		public void setId(long id) {
			this.id = id;
		}


		public String getuName() {
			return uName;
		}


		public void setuName(String uName) {
			this.uName = uName;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		public String getUsername() {
			return username;
		}


		public void setUsername(String username) {
			this.username = username;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}


		public BillDetails getBilldetails() {
			return billdetails;
		}


		public void setBilldetails(BillDetails billdetails) {
			this.billdetails = billdetails;
		}


		public User() {
			super();
			// TODO Auto-generated constructor stub
		}


		public User(String uName, String email, String username, String password) {
			super();
			this.uName = uName;
			this.email = email;
			this.username = username;
			this.password = password;
		}
		
		
		
	
		
		
		
		
		
		
		
		
		
		
	
		
		
		

	

	
	
	
}
