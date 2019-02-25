package controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import model.dao.ICartDAO;
import model.daoimpl.CartDAOImpl;
import model.entity.Cart;
import model.entity.Products;
import model.entity.Userinfo;

@Controller
public class CartController {
	
	public String getLoggedInUserName() {
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	String name = authentication.getName();
	return name;
	}

	@GetMapping(value = "/addcartitem")
	public String addCartItem(@RequestParam(value="productId")String productId,
			@ModelAttribute("Cart")Cart c, @ModelAttribute("User")Userinfo u, @ModelAttribute("Product")Products p) { 
		ICartDAO ic = new CartDAOImpl();
		boolean b;
		u.setUserName(getLoggedInUserName());
		p.setProductId(Integer.parseInt(productId));
		c.setProduct(p);
		c.setUserInfo(u);
		b=ic.addCartItem(c);
		if(b) 
		 return "success";
		else 
			return "newhomepage";

	
}
}