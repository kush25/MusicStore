package com.hcl.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hcl.model.Products;


@Repository	
public interface ProductRepo extends JpaRepository<Products, Integer> {
	
}
