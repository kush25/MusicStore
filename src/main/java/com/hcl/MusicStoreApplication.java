package com.hcl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import com.hcl.dao.CartRepo;


	

@SpringBootApplication
@ComponentScan("com.hcl")
public class MusicStoreApplication extends SpringBootServletInitializer{
	

	@Autowired
	public CartRepo repo;
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {

		return builder.sources(MusicStoreApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(MusicStoreApplication.class, args);
	}

	

	


}
