package com.onlinestore.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.ProductDAO;
import com.onlinestore.backend.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO pDAO;
	
	@RequestMapping(value = "/product/viewAll")
	public ModelAndView allProducts() {
		return new ModelAndView("products", "productList", pDAO.getAllProducts());
	}
	
	@RequestMapping(value = "/product/view/{productId}")
	public ModelAndView viewProduct(@PathVariable int productId) {
		return new ModelAndView("product", "product", pDAO.getProduct(productId));
	}
	
	@RequestMapping(value = "/admin/product")
	public ModelAndView adminProduct() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("adminView", "product");
		mv.addObject("productList", pDAO.getAllProducts());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/product/insert")
	public ModelAndView adminProductInsert(@ModelAttribute("product") Product product, BindingResult result) {
		pDAO.saveOrUpdate(product);
		
		return adminProduct();
	}
	
	@RequestMapping(value = "/admin/product/delete/{productId}")
	public ModelAndView adminProductDelete(@PathVariable int productId) {
		pDAO.delete(productId);
		
		return adminProduct();
	}
	
	@RequestMapping(value = "/admin/product/update/{productId}")
	public ModelAndView adminProductrUpdatePage(@PathVariable int productId) {
		ModelAndView mv = new ModelAndView("index", "adminView", "productUpdate");
		
		mv.addObject("product", pDAO.getProduct(productId));
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/product/update")
	public ModelAndView adminProductUpdate(@ModelAttribute("product") Product product) {
		System.out.println(product.getId() + " " + product.getName());
		
		// pDAO.delete(product.getId());
		pDAO.saveOrUpdate(product);
		
		return adminProduct();
	}
}
