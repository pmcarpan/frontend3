package com.onlinestore.frontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.CartDAO;
import com.onlinestore.backend.dao.OrderDetailDAO;
import com.onlinestore.backend.dao.ProductDAO;
import com.onlinestore.backend.dao.UserDAO;
import com.onlinestore.backend.model.Cart;
import com.onlinestore.backend.model.OrderDetail;
import com.onlinestore.backend.model.User;

@Controller
public class OrderController {

	@Autowired
	private CartDAO cDAO;
	@Autowired
	private ProductDAO pDAO;
	@Autowired
	private OrderDetailDAO oDDAO;
	@Autowired
	private UserDAO uDAO;
	
	@RequestMapping("/cart")
	public ModelAndView showCartPage(HttpSession session) {
		String username = (String) session.getAttribute("username");
		
		User u = uDAO.getUser(username);
		
		// System.out.println(username);
		// System.out.println(u.getOrders());
		session.setAttribute("orders", u.getOrders());
		
		Cart c = (Cart) session.getAttribute("cart");
		if (c == null) session.setAttribute("cart", new Cart());
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/add/{productId}")
	public ModelAndView addToCart(@PathVariable int productId, HttpSession session) {
		Cart c = (Cart) session.getAttribute("cart");
		
		if (c == null) c = new Cart();
		cDAO.addProduct(c, pDAO.getProduct(productId));
		session.setAttribute("cart", c);
		
		// System.out.println(c.getProducts());
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/checkout")
	public ModelAndView checkout() {
		return new ModelAndView("order-details");
	}
	
	@RequestMapping("/cart/checkout/placeOrder")
	public ModelAndView placeOrder(@ModelAttribute OrderDetail oD, HttpSession session) {
		String username = (String) session.getAttribute("username");
		Cart c = (Cart) session.getAttribute("cart");
		
		oDDAO.saveOrUpdate(oD, username, c);
		session.setAttribute("cart", null);
		
		session.setAttribute("orders", uDAO.getUser(username).getOrders());
		
		return new ModelAndView("cart");
	}
}
