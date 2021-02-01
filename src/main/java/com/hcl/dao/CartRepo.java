package com.hcl.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hcl.model.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Integer> {

}
