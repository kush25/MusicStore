package com.hcl.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.dao.BdetailsRepo;
import com.hcl.dao.UserRepo;
import com.hcl.model.BillDetails;
import com.hcl.model.User;

@Service
public class UserService {

	@Autowired
	public UserRepo repo;

	@Autowired
	public BdetailsRepo repos;

	public List<User> loadUser() {
		List<User> list = (List<User>) repo.findAll();
		return list;
	}
	
	

	public boolean addusers(String username, String password ,User user, BillDetails bdts) {
		
		User usr = new User();
		usr.setUsername(username);
		usr.setPassword(password);
		

		long checker = this.loadUser().stream().filter(e -> e.getUsername().equalsIgnoreCase(username)).count();
		if (checker > 0) { 
			return false;
		}
		
		else {
		
//		BillDetails bts = new BillDetails();
		repo.save(user);
		repos.save(bdts);
		return true;
		
		}
	}
	
	
	
	

	public boolean loginUser(String username, String password) {
//		List<User> list = this.loadUser();

		Optional<User> u = this.loadUser().stream()
				.filter(e -> e.getUsername().equalsIgnoreCase(username) && e.getPassword().equalsIgnoreCase(password))
				.limit(1).findFirst();
		if (u.isPresent()) {
			return true;

		} else {
			return false;

		}

	}

}
