package com.onlinestore.frontend.controller;

import java.security.GeneralSecurityException;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
import com.onlinestore.backend.utility.SHAUtil;

@Controller
public class OrderController {

	@Autowired
	private CartDAO cDAO;
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
			session.setAttribute("orders", oDDAO.getAllOrders(username));
		}
		
		Cart c = (Cart) session.getAttribute("cart");
		if (c == null) {
			session.setAttribute("cart", u.getCart());
		}
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/add/{productId}")
	public ModelAndView addToCart(@PathVariable int productId, HttpSession session) {
		String username = (String) session.getAttribute("username");
		
		cDAO.addProduct(username, productId);
		session.setAttribute("cart", uDAO.getUser(username).getCart());
		
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/cart/remove/{productId}")
	public ModelAndView removeFromCart(@PathVariable int productId, HttpSession session) {
		String username = (String) session.getAttribute("username");
		
		cDAO.removeProduct(username, productId);
		session.setAttribute("cart", uDAO.getUser(username).getCart());
		
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
	public ModelAndView placeOrder(@Valid @ModelAttribute OrderDetail oD, BindingResult result, HttpSession session) {
		if (result.hasErrors()) {
			return new ModelAndView("order-details");
		}
		
		oD.setDate(new Date());
		try {
			oD.setSecCode(SHAUtil.encode(oD.getSecCode()));
		} 
		catch (GeneralSecurityException e) {
			e.printStackTrace();
		}
		String username = (String) session.getAttribute("username");
		
		oDDAO.saveOrUpdate(oD, username);
		session.setAttribute("cart", null);
		
		session.setAttribute("orders", oDDAO.getAllOrders(username));
		
		String cardNum = oD.getCardNumber();
		cardNum = "**" + cardNum.substring(cardNum.length()-4, cardNum.length());
		oD.setCardNumber(cardNum);
		
		return new ModelAndView("invoice", "order", oD);
	}
}
