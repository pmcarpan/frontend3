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

import com.onlinestore.backend.dao.CategoryDAO;
import com.onlinestore.backend.dao.ProductDAO;
import com.onlinestore.backend.model.Category;
import com.onlinestore.backend.model.Product;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO cDAO;
	@Autowired
	private ProductDAO pDAO;
	
	@RequestMapping(value = "/admin/category")
	public ModelAndView adminCategory() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("adminView", "category");
		mv.addObject("categoryList", cDAO.getAllCategories());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/category/insert")
	public ModelAndView adminCategoryInsert(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		if (result.hasErrors()) {
			return adminCategory();
		}
		
		cDAO.saveOrUpdate(category);
		
		return adminCategory();
	}
	
	@RequestMapping(value = "/admin/category/delete/{categoryId}")
	public ModelAndView adminCategoryDelete(@PathVariable int categoryId) {
		List<Product> l = pDAO.getAllProductsByCategory(categoryId);
		if (l != null && l.size() > 0) {
			ModelAndView mv = new ModelAndView("index");
			mv.addObject("adminView", "category");
			mv.addObject("categoryList", cDAO.getAllCategories());
			mv.addObject("categoryMsg", "cannotDelete");
			
			return mv;
		}
		else {
			cDAO.delete(categoryId);
		}
		
		return adminCategory();
	}
	
	@RequestMapping(value = "/admin/category/update/{categoryId}")
	public ModelAndView adminCategoryUpdatePage(@PathVariable int categoryId) {
		ModelAndView mv = new ModelAndView("index", "adminView", "categoryUpdate");
		
		mv.addObject("category", cDAO.getCategory(categoryId));
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/category/update")
	public ModelAndView adminCategoryUpdate(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		System.out.println(category.getId() + " " + category.getName());
		
		if (result.hasErrors()) {
			ModelAndView mv = new ModelAndView("index", "adminView", "categoryUpdate");
			
			mv.addObject("category", category);
			
			return mv;
		}
		
		cDAO.saveOrUpdate(category);
		
		return adminCategory();
	}
}
