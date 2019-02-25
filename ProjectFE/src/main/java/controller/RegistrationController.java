package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.daoimpl.AuthoritiesDAOImpl;
import model.daoimpl.ProductsDAOImpl;
import model.daoimpl.UserinfoDaoImpl;
import model.dao.IAuthoritiesDAO;
import model.dao.IProductsDAO;
import model.dao.IUserinfoDAO;
import model.entity.Authorities;
import model.entity.Products;
import model.entity.Userinfo;

@Controller
public class RegistrationController {
	@RequestMapping(value="/registration",method = RequestMethod.GET)
	public String addRegistrationPage() {
		return "registrationpage";
	}
	@Autowired
	PasswordEncoder password;
	 
	
	@RequestMapping(value="/uregistration",method = RequestMethod.POST)
	public String addURegistrationPage(@ModelAttribute("User")Userinfo u, @ModelAttribute("Authorities")Authorities a) {
		IUserinfoDAO iu = new UserinfoDaoImpl();
		IAuthoritiesDAO ia = new AuthoritiesDAOImpl();
		BCryptPasswordEncoder passwordEncoder = (BCryptPasswordEncoder) password();
		u.setPassword(passwordEncoder.encode(u.getPassword()));
        u.setEnabled(true);
        a.setUser(u);
        a.setAuthority("ROLE_USER");
		boolean b = iu.insertInfo(u);
		boolean c = ia.setAuthorities(a);
		if(b&&c)
			return "success";
		else
		    return "registrationpage";
	}
	@Bean
	public PasswordEncoder password() {
		return new BCryptPasswordEncoder();
	}
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String loginPage(@RequestParam(value= "error", required = false)String error,
			@RequestParam(value="logout", required= false)String logout, Model model) {
		
		String errorMessage = null;
		if(error !=null) {
			errorMessage = "UserName or Password is incorrect !!!";
		}
		if(logout != null) {
			errorMessage = "You have been successfully logged out !!!";
		}
		model.addAttribute("errorMessage", errorMessage);
		return "registrationpage";	
	}
	
	@RequestMapping(value="/logout", method= RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout=true";
	}
	
	@RequestMapping(value="/newhomepage", method = RequestMethod.GET)
    public String listProducts(Model model){
        IProductsDAO ip = new ProductsDAOImpl(); 
        List<Products> products = ip.getProducts(); 
        model.addAttribute ("products",products);
        return "newhomepage";
      }
	
	

}
