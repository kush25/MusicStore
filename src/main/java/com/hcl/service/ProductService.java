package com.hcl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.CartRepo;
import com.hcl.dao.ProductRepo;
import com.hcl.model.BillDetails;
import com.hcl.model.Cart;
import com.hcl.model.Products;
import com.hcl.model.User;


@Service
public class ProductService {
	
	@Autowired
	private ProductRepo prepo;

	
	@Autowired
	private CartRepo crepo;
	
	
	public List<Products> listAllProds() {
		return (List<Products>) prepo.findAll();
	}

	
	 public Products get(int pid) {
	        return prepo.findById(pid).get();
	    }

	 
	 public Cart getprd(int cid) {
	        return crepo.findById(cid).get();
	         
	    }
	 
	 public String delprd(Cart crt) {
	        crepo.delete(crt);
	        return ("redirect:/products");
	         
	    }


	 
	 
}
		
		

		  
	

	 
	

