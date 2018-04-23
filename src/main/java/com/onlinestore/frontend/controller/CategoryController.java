package com.onlinestore.frontend.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.CategoryDAO;
import com.onlinestore.backend.model.Category;
import com.onlinestore.backend.model.Product;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO cDAO;
	
	@RequestMapping(value = "/admin/category")
	public ModelAndView adminCategory() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("adminView", "category");
		mv.addObject("categoryList", cDAO.getAllCategories());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/category/insert")
	public ModelAndView adminCategoryInsert(@ModelAttribute("category") Category category, BindingResult result) {
		cDAO.saveOrUpdate(category);
		
		return adminCategory();
	}
	
	@RequestMapping(value = "/admin/category/delete/{categoryId}")
	public ModelAndView adminCategoryDelete(@PathVariable int categoryId) {
		Set<Product> l = cDAO.getCategory(categoryId).getProducts();
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
	public ModelAndView adminCategoryUpdate(@ModelAttribute("category") Category category) {
		System.out.println(category.getId() + " " + category.getName());
		
		cDAO.saveOrUpdate(category);
		
		return adminCategory();
	}
}
