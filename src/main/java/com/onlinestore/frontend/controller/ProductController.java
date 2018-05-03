package com.onlinestore.frontend.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.CategoryDAO;
import com.onlinestore.backend.dao.ProductDAO;
import com.onlinestore.backend.dao.SellerDAO;
import com.onlinestore.backend.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private CategoryDAO cDAO;
	@Autowired
	private ProductDAO pDAO;
	@Autowired
	private SellerDAO sDAO;
	
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
		mv.addObject("categoryList", cDAO.getAllCategories());
		mv.addObject("sellerList", sDAO.getAllSellers());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/product/insert")
	public ModelAndView adminProductInsert(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		System.out.println("adminProductInsert");
		System.out.println("IMG " + product.getImage().getOriginalFilename());
		
		MultipartFile img = product.getImage();
		if (img == null || img.isEmpty()) {
			System.out.println("rejecting image");
			result.rejectValue("image", "error.product", "Please input an image");
		}
		else {
			String type = img.getContentType();
			if (!type.equals("image/jpe") && !type.equals("image/jpg") 
					&& !type.equals("image/jpeg") && !type.equals("image/png") && !type.equals("image/gif")) {
				System.out.println("rejecting image");
				result.rejectValue("image", "error.product", "Please input an image");
			}
		}
		
		if (result.hasErrors()) {
			return adminProduct();
		}
		
		pDAO.saveOrUpdate(product);
		
		return adminProduct();
	}
	
	@RequestMapping(value = "/admin/product/delete/{productId}")
	public ModelAndView adminProductDelete(@PathVariable int productId) {
		pDAO.delete(productId);
		
		return adminProduct();
	}
	
	@RequestMapping(value = "/admin/product/update/{productId}")
	public ModelAndView adminProductUpdatePage(@PathVariable int productId) {
		ModelAndView mv = new ModelAndView("index", "adminView", "productUpdate");
		
		mv.addObject("product", pDAO.getProduct(productId));
		mv.addObject("categoryList", cDAO.getAllCategories());
		mv.addObject("sellerList", sDAO.getAllSellers());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/product/update")
	public ModelAndView adminProductUpdate(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		System.out.println(product.getId() + " " + product.getName());
		System.out.println(product.getImage().getSize());
		
		MultipartFile img = product.getImage();
		
		// if a file is input, validate it for image
		if (img != null && !img.isEmpty()) {
			String type = img.getContentType();
			if (!type.equals("image/jpe") && !type.equals("image/jpg") 
					&& !type.equals("image/jpeg") && !type.equals("image/png") && !type.equals("image/gif")) {
				System.out.println("rejecting image");
				result.rejectValue("image", "error.product", "Please input an image");
			}
		}
		
		if (result.hasErrors()) {
			ModelAndView mv = new ModelAndView("index", "adminView", "productUpdate");
			
			mv.addObject("product", product);
			mv.addObject("categoryList", cDAO.getAllCategories());
			mv.addObject("sellerList", sDAO.getAllSellers());
			
			return mv;
		}
		
		// pDAO.delete(product.getId());
		pDAO.saveOrUpdate(product);
		
		return adminProduct();
	}
}
