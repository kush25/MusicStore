package com.hcl.model;


import javax.persistence.*;

@Entity
public class Products {
	
		@Id
		@GeneratedValue
		private int pid;

		private String pimage;
		
		private String pname;
		private String pcategory;
		private String pcondition;
		private int price;
		private String links;
	
	
		
		
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getPimage() {
			return pimage;
		}
		public void setPimage(String pimage) {
			this.pimage = pimage;
		}
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public String getPcategory() {
			return pcategory;
		}
		public void setPcategory(String pcategory) {
			this.pcategory = pcategory;
		}
		public String getPcondition() {
			return pcondition;
		}
		public void setPcondition(String pcondition) {
			this.pcondition = pcondition;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
		
		
		public String getLinks() {
			return links;
		}
		public void setLinks(String links) {
			this.links = links;
		}
		public Products() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
		public Products(String pimage, String pname, String pcategory, String pcondition, int price, String links) {
			
			this.pimage = pimage;
			this.pname = pname;
			this.pcategory = pcategory;
			this.pcondition = pcondition;
			this.price = price;
			this.links = links;
		}
		
		
	
		
		

}
