package com.hcl.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.dao.BdetailsRepo;
import com.hcl.dao.ProductRepo;
import com.hcl.model.BillDetails;
import com.hcl.model.Cart;
import com.hcl.model.Products;
import com.hcl.model.User;
import com.hcl.service.AdminService;
import com.hcl.service.ProductService;
import com.hcl.service.UserService;

@RestController
public class ProductController {
	

	
	@Autowired
	private ProductService pservice;
	
	
	@Autowired
	private AdminService aservice;
	
	
	@Autowired
	private BdetailsRepo brepos;
	

	
	@GetMapping("/product")
	public ModelAndView viewProds() {
		List<Products> pds = pservice.listAllProds();
		return new ModelAndView("viewproducts", "pd", pds);
	}
	

	@GetMapping("/products")
	public ModelAndView listtask() {
		List<Products> pds = pservice.listAllProds();
		return new ModelAndView("products", "pd", pds);
	}
	
	@PostMapping("/products")
	public ModelAndView listprods() {
		List<Products> pds = pservice.listAllProds();
		return new ModelAndView("products", "pd", pds);
	}


	@GetMapping("/m1/{pid}")
	public ModelAndView m1(@PathVariable("pid") int pid) {
		ModelAndView mav = new ModelAndView("m1");
		Products prds = pservice.get(pid);
		mav.addObject("prods", prds);
		return mav;
	}


	@GetMapping("/m2/{pid}")
	public ModelAndView m2(@PathVariable("pid") int pid) {
		ModelAndView mav = new ModelAndView("m2");
		Products prds = pservice.get(pid);
		mav.addObject("prods", prds);
		return mav;
	}
	
	
	@GetMapping("/m3/{pid}")
	public ModelAndView m3(@PathVariable("pid") int pid) {
		ModelAndView mav = new ModelAndView("m3");
		Products prds = pservice.get(pid);
		mav.addObject("prods", prds);
		return mav;
	}
	
	@GetMapping("/m4/{pid}")
	public ModelAndView m4(@PathVariable("pid") int pid) {
		ModelAndView mav = new ModelAndView("m4");
		Products prds = pservice.get(pid);
		mav.addObject("prods", prds);
		return mav;
	}
	
	@GetMapping("/m5/{pid}")
	public ModelAndView m5(@PathVariable("pid") int pid) {
		ModelAndView mav = new ModelAndView("m5");
		Products prds = pservice.get(pid);
		mav.addObject("prods", prds);
		return mav;
	}
	
	
	@GetMapping("/cart")
	public ModelAndView getCart(HttpSession session) {
		List<Cart> carts = (List<Cart>) session.getAttribute("cart");
		
		if (carts == null) {
			carts = new ArrayList<Cart>();
			session.setAttribute("cart", carts);
		}
		User user = (User) session.getAttribute("user");
		ModelAndView mv = new ModelAndView("cart", "cart", carts);
		mv.addObject("user", user);
		return mv;
	}
	
	
	@GetMapping("/addcart/{cid}")
	public ModelAndView getAddCart(@PathVariable int cid, HttpSession session) {
		Cart crtadd = pservice.getprd(cid);
		
		List<Cart> carts = (List<Cart>) session.getAttribute("cart");
		if (carts == null) {
			carts = new ArrayList<Cart>();
		}
		carts.add(crtadd);
		session.setAttribute("cart", carts);
		return new ModelAndView("redirect:/cart");
	
	}
	
	
	@GetMapping("/checkout")
	public ModelAndView getCheckout(HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Cart> carts = (List<Cart>) session.getAttribute("cart");
		if (carts == null) {
			return new ModelAndView("redirect:/checkout");
		}
		ModelAndView mv =  new ModelAndView("checkout","cart", carts);
		mv.addObject("user", user);
		double total = carts.stream().mapToDouble(p -> p.getPrice()).sum();
		mv.addObject("total", total);
		return mv;
	}
	

	
			@GetMapping("/delcrt/{cid}")
			public ModelAndView delUsr(@PathVariable("cid") int cid) {
			ModelAndView mav = new ModelAndView("deletecrt");
			Cart crt = pservice.getprd(cid);
			mav.addObject("delprd", crt);
			return mav;
		}
		
	 
	 @PostMapping("/delcrt/{cid}")
	 public ModelAndView deleteUsr(@ModelAttribute("crt") Cart crt) {
      
     pservice.delprd(crt);
     return new ModelAndView("redirect:/cart");
     }
	
	 
	
	@GetMapping("/completed")
	public ModelAndView completed() {
		
		return new ModelAndView("final");
		
	}

}
	
