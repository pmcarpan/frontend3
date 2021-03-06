package com.onlinestore.frontend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.ProductDAO;
import com.onlinestore.backend.dao.SellerDAO;
import com.onlinestore.backend.model.Product;
import com.onlinestore.backend.model.Seller;

@Controller
public class SellerController {
	
	@Autowired
	private SellerDAO sDAO;
	@Autowired
	private ProductDAO pDAO;
	
	@RequestMapping(value = "/admin/seller")
	public ModelAndView adminSeller() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("adminView", "seller");
		mv.addObject("sellerList", sDAO.getAllSellers());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/seller/insert")
	public ModelAndView adminSellerInsert(@Valid @ModelAttribute("seller") Seller seller, BindingResult result) {
		if (result.hasErrors()) {
			return adminSeller();
		}
		
		sDAO.saveOrUpdate(seller);
		
		return adminSeller();
	}
	
	@RequestMapping(value = "/admin/seller/delete/{sellerId}")
	public ModelAndView adminSellerDelete(@PathVariable int sellerId) {
		List<Product> l = pDAO.getAllProductsBySeller(sellerId);
		if (l != null && l.size() > 0) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("adminView", "seller");
			mv.addObject("sellerList", sDAO.getAllSellers());
			mv.addObject("sellerMsg", "cannotDelete");
			
			return mv;
		}
			
		sDAO.delete(sellerId);
		
		return adminSeller();
	}
	
	@RequestMapping(value = "/admin/seller/update/{sellerId}")
	public ModelAndView adminSellerUpdatePage(@PathVariable int sellerId) {
		ModelAndView mv = new ModelAndView("index", "adminView", "sellerUpdate");
		
		mv.addObject("seller", sDAO.getSeller(sellerId));
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/seller/update")
	public ModelAndView adminSellerUpdate(@Valid @ModelAttribute("seller") Seller seller, BindingResult result) {	
		if (result.hasErrors()) {
			ModelAndView mv = new ModelAndView("index", "adminView", "sellerUpdate");
			mv.addObject("seller", seller);
			
			return mv;
		}
		
		sDAO.saveOrUpdate(seller);
		
		return adminSeller();
	}
}
