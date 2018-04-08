package com.onlinestore.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.SellerDAO;
import com.onlinestore.backend.model.Product;
import com.onlinestore.backend.model.Seller;

@Controller
public class SellerController {
	
	@Autowired
	private SellerDAO sDAO;
	
	@RequestMapping(value = "/admin/seller")
	public ModelAndView adminSeller() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("adminView", "seller");
		mv.addObject("sellerList", sDAO.getAllSellers());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/seller/insert")
	public ModelAndView adminSellerInsert(@ModelAttribute("seller") Seller seller, BindingResult result) {
		sDAO.saveOrUpdate(seller);
		
		return adminSeller();
	}
	
	@RequestMapping(value = "/admin/seller/delete/{sellerId}")
	public ModelAndView adminSellerDelete(@PathVariable int sellerId) {
		List<Product> l = sDAO.getSeller(sellerId).getProducts();
		if (l != null && l.size() > 0) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("adminView", "seller");
			mv.addObject("sellerList", sDAO.getAllSellers());
			mv.addObject("sellerMsg", "cannotDelete");
			
			return mv;
		}
		else {
			sDAO.delete(sellerId);
		}
		
		return adminSeller();
	}
	
	@RequestMapping(value = "/admin/seller/update/{sellerId}")
	public ModelAndView adminSellerUpdatePage(@PathVariable int sellerId) {
		ModelAndView mv = new ModelAndView("index", "adminView", "sellerUpdate");
		
		mv.addObject("seller", sDAO.getSeller(sellerId));
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/seller/update")
	public ModelAndView adminSellerUpdate(@ModelAttribute("seller") Seller seller) {
		System.out.println(seller.getId() + " " + seller.getName());
		
		sDAO.saveOrUpdate(seller);
		
		return adminSeller();
	}
}
