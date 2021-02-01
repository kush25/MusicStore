package com.hcl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.model.BillDetails;
import com.hcl.model.Products;
import com.hcl.model.User;
import com.hcl.service.AdminService;
import com.hcl.service.ProductService;


@RestController
public class AdminController {

	
	@Autowired
	public AdminService aservice;
	
	@Autowired
	public ProductService pservices;
	
	@GetMapping("/loginadmin")
	public ModelAndView loginAd() {
		return new ModelAndView("loginadmin");
	}
	
	

	
	@PostMapping("/loginadmin")
	public ModelAndView loginAdmins(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletRequest request,Model model) {
		if (aservice.loginAdmin(username, password)) {
			request.getSession().setAttribute("name", username);
			
			return new ModelAndView("redirect:/choices");
			
		} else {
			model.addAttribute("error","No matching credential found on db");
			return new ModelAndView("loginadmin");
		}
		
		

	}
	
	
	
	
	
	
	
	@GetMapping("/choices")
	public ModelAndView ch() {
		
		return new ModelAndView("choices");
	}
	
	@GetMapping("/userdts")
	public ModelAndView listtask() {
		List<User> usr = aservice.loadUser();
		
		return new ModelAndView("customers", "cust", usr);
	}
	
	
	@GetMapping("/billdts")
	public ModelAndView listadd() {
		List<BillDetails> bdts = aservice.loadAdd();
		return new ModelAndView("loadusradd", "add", bdts);
	}
	
	
	
	@GetMapping("/usredit/{id}")
	public ModelAndView editusr(@PathVariable("id") long id) {
		ModelAndView mav = new ModelAndView("editusr");
		User usr = aservice.get(id);
		mav.addObject("updusr", usr);
		return mav;
	}
	
	
	
	 @PostMapping("/usredit/{id}")
     public ModelAndView editsaveUsr(@ModelAttribute("user") User usr) {
		 aservice.saveusr(usr);
        return new ModelAndView("redirect:/userdts");
        }
	 
	 
	 
	 @GetMapping("/addedit/{bId}")
		public ModelAndView editadd(@PathVariable("bId") long bId) {
			ModelAndView mav = new ModelAndView("editadd");
			BillDetails bdts = aservice.getb(bId);
			mav.addObject("updadd", bdts);
			return mav;
		}
		
		
		
		 @PostMapping("/addedit/{bId}")
	     public ModelAndView editsaveAdd(@ModelAttribute("bdts") BillDetails bdts) {
	         
			 aservice.saveadd(bdts);
	        return new ModelAndView("redirect:/billdts");
	        }
	
	
		 
		 @GetMapping("/delusr/{id}")
			public ModelAndView delUsr(@PathVariable("id") long id) {
				ModelAndView mav = new ModelAndView("deleteusr");
				 User usr1 = aservice.get(id);
				mav.addObject("delusr", usr1);
				return mav;
			}
			
		 
		 @PostMapping("/delusr/{id}")
	     public ModelAndView deleteUsr(@ModelAttribute("usr1") User usr1) {
	         
	        aservice.deleteUsr(usr1);
	        return new ModelAndView("redirect:/userdts");
	        }
		 
		 
		 
		 
		 
		 @GetMapping("/deladd/{bId}")
			public ModelAndView delEmp(@PathVariable("bId") long bId) {
				ModelAndView mav = new ModelAndView("deleteadd");
				 BillDetails bdts1 = aservice.getb(bId);
				mav.addObject("deladd", bdts1);
				return mav;
			}
			
		 
		 @PostMapping("/deladd/{bId}")
	     public ModelAndView deleteEmp(@ModelAttribute("tsk1") BillDetails bdts1) {
	         
	        aservice.deleteAdd(bdts1);
	        return new ModelAndView("redirect:/billdts");
	        }
	
		 
		 @GetMapping("/productlist")
			public ModelAndView viewProds() {
				List<Products> pds = pservices.listAllProds();
				return new ModelAndView("adminprods", "pd", pds);
			}
			
		 
		 
		 @GetMapping("/addprd/{pid}")
			public ModelAndView editprd(@PathVariable("pid") int pid) {
				ModelAndView mav = new ModelAndView("editprd");
				Products prds = aservice.getprod(pid);
				mav.addObject("uptprod", prds);
				return mav;
			}
			
			
			
			 @PostMapping("/addprd/{pid}")
		     public ModelAndView editsavePrd(@ModelAttribute("prds") Products prds) {
		         
				 aservice.saveprod(prds);
		        return new ModelAndView("redirect:/productlist");
		        }
			 
			 
			 
			 @GetMapping("/delprd/{pid}")
				public ModelAndView delPrd(@PathVariable("pid") int pid) {
					ModelAndView mav = new ModelAndView("deleteprd");
					Products prds = aservice.getprod(pid);
					mav.addObject("delprd", prds);
					return mav;
				}
				
			 
			 @PostMapping("/delprd/{pid}")
		     public ModelAndView deletePrd(@ModelAttribute("prds") Products prds) {
		         
		        aservice.deleteprd(prds);
		        return new ModelAndView("redirect:/productlist");
		        }
			 
			 
			 
			 @GetMapping("/addprods")
			 public ModelAndView addprod() {
				 
				 
				 return new ModelAndView("addproduct");
			 }
				
				
				@PostMapping("/addprods")
				public ModelAndView addmore(Products prds) {

				aservice.addprods(prds);
				return new ModelAndView("redirect:/productlist");
				
					
				}
				
			 		 
			 
	
}
