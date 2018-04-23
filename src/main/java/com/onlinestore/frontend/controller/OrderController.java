package com.onlinestore.frontend.controller;

import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onlinestore.backend.dao.CartDAO;
import com.onlinestore.backend.dao.OrderDetailDAO;
import com.onlinestore.backend.dao.UserDAO;
import com.onlinestore.backend.model.Cart;
import com.onlinestore.backend.model.OrderDetail;
import com.onlinestore.backend.model.User;

@Controller
public class OrderController {

	@Autowired
	private CartDAO cDAO;
//	@Autowired
//	private ProductDAO pDAO;
	@Autowired
	private OrderDetailDAO oDDAO;
	@Autowired
	private UserDAO uDAO;
	
	@RequestMapping("/cart")
	public ModelAndView showCartPage(HttpSession session) {
		String username = (String) session.getAttribute("username");
		
		User u = uDAO.getUser(username);
		
		Object orders = session.getAttribute("orders");
		if (orders == null) {
			session.setAttribute("orders", u.getOrders());
		}
		
		Cart c = (Cart) session.getAttribute("cart");
		if (c == null) {
			session.setAttribute("cart", u.getCart());
		}
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/add/{productId}")
	public ModelAndView addToCart(@PathVariable int productId, HttpSession session) {
		// Cart c = (Cart) session.getAttribute("cart");
		String username = (String) session.getAttribute("username");
		
		cDAO.addProduct(username, productId);
		session.setAttribute("cart", uDAO.getUser(username).getCart());
		
		// System.out.println(c.getProducts());
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/remove/{productId}")
	public ModelAndView removeFromCart(@PathVariable int productId, HttpSession session) {
		// Cart c = (Cart) session.getAttribute("cart");
		String username = (String) session.getAttribute("username");
		
		cDAO.removeProduct(username, productId);
		session.setAttribute("cart", uDAO.getUser(username).getCart());
		
		// System.out.println(c.getProducts());
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/checkout")
	public ModelAndView checkout(HttpSession session) {
		Cart c = (Cart) session.getAttribute("cart");
		cDAO.calcPrice(c.getId());
		c = cDAO.getCart(c.getId());
		session.setAttribute("cart", c);
		
		return new ModelAndView("order-details");
	}
	
	@RequestMapping("/cart/checkout/placeOrder")
	public ModelAndView placeOrder(@ModelAttribute OrderDetail oD, HttpSession session) {
		String username = (String) session.getAttribute("username");
		
		oDDAO.saveOrUpdate(oD, username);
		session.setAttribute("cart", null);
		
		User u = uDAO.getUser(username);
		session.setAttribute("orders", u.getOrders());
		
		return new ModelAndView("cart");
	}
}
