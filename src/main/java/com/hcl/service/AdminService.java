package com.hcl.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.BdetailsRepo;
import com.hcl.dao.ProductRepo;
import com.hcl.dao.UserRepo;
import com.hcl.model.BillDetails;
import com.hcl.model.Products;
import com.hcl.model.User;


@Service
public class AdminService {

	@Autowired
	public UserRepo urepo1;
	
	@Autowired
	public BdetailsRepo brepo2;
	
	
	@Autowired
	public ProductRepo prepo3;
	
	public List<User> loadUser() {
		List<User> list = (List<User>) urepo1.findAll();
		return list;
	}
	
	
	public List<BillDetails> loadAdd() {
		List<BillDetails> bdts = (List<BillDetails>) brepo2.findAll();
		return bdts;
	}
	

	
	public boolean loginAdmin(String username, String password) {
//		List<User> list = this.loadUser();

		Optional<User> u = this.loadUser().stream()
				.filter(e -> e.getUsername().equalsIgnoreCase("admin") && e.getPassword().equalsIgnoreCase(password))
				.limit(1).findFirst();
		if (u.isPresent()) {
			return true;

		} else {
			return false;

		}

	}
	
	 public User get(long id) {
	        return urepo1.findById(id).get();
	    }
	 
	 
	  public User saveusr(User user) {
	        return urepo1.save(user);
	    }
	  
	  
	 
	 public BillDetails getb(long bId) {
	        return brepo2.findById(bId).get();
	    }
	 
	
	
	  public BillDetails saveadd(BillDetails bdts) {
	        return brepo2.save(bdts);
	    }
	
	  
	  public String deleteUsr(User usr) {
		  urepo1.delete(usr);
		  return ("redirect:/choices");
		  
	  }
	
	  public String deleteAdd(BillDetails bdts) {
		  brepo2.delete(bdts);
		  return ("redirect:/choices");
		  
	  }
	
	
		 
		 public Products getprod(int pid) {
		        return prepo3.findById(pid).get();
		    }
		 
		
		
		  public Products saveprod(Products prds) {
		        return prepo3.save(prds);
		    }
		
	
		  public String deleteprd(Products prds) {
			  prepo3.delete(prds);
			  return ("redirect:/choices");
			  
		  }
	
			public boolean addprods(Products prds) {
				
				prepo3.save(prds);
				return true;
				
			}
	

}
