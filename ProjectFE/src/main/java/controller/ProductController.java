package controller;

import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.dao.IProductsDAO;
import model.daoimpl.ProductsDAOImpl;
import model.entity.Products;

@Controller
public class ProductController {
	@RequestMapping(value="/manageproducts", method= RequestMethod.GET)
	public String manageProductPage() {
		return "manageproducts";
	}
	
	@RequestMapping(value="/insertproducts",method = RequestMethod.POST)
	public String addInserProductsPage(@ModelAttribute("Products")Products p) {
		IProductsDAO ip = new ProductsDAOImpl();
		boolean b = ip.insertProduct(p);
		if(b)
			return "listallproducts";
		else
		    return "manageproducts";
	}
	
	@RequestMapping(value="/listproducts", method = RequestMethod.GET)
    public String listAllProducts(Model model){
        IProductsDAO ip = new ProductsDAOImpl(); 
        List<Products> products = ip.getProducts(); 
        model.addAttribute ("products",products);
        return "listallproducts";
      }
    
	@RequestMapping(value="/updateproducts")
	public String updateProduct(@ModelAttribute("Products")Products p) {
		IProductsDAO ip = new ProductsDAOImpl();
		boolean b = ip.updateProduct(p);
		if(b)
			return "listallproducts";
		else
			return"updateproducts";
	
	}
	@RequestMapping(value="/delete")
	public String delete() {
		return"deleteproducts";
	}
	
	@GetMapping(value="/deleteproducts")
	public String deleteProduct(@RequestParam(value="productId")String productId) {
		IProductsDAO ip = new ProductsDAOImpl();
		boolean b = ip.deleteProduct(Integer.parseInt(productId));
		if(b)
			return "listallproducts";
		else
			return "deleteproducts";
	}
	
	@RequestMapping(value="/productsbycategory", method = RequestMethod.GET)
    public String listAllProductsByCategory(Model model, @RequestParam(value="category")String category){
        IProductsDAO ip = new ProductsDAOImpl(); 
        List<Products> products = ip.getProductsByCategory(category); 
        model.addAttribute ("products",products);
        model.addAttribute("Category",category);
        return "productsbycategory";
      }
	@RequestMapping(value="/viewproduct", method = RequestMethod.GET)
	public String unitProduct(Model model, @RequestParam(value="productId")String productId) {
		IProductsDAO ip = new ProductsDAOImpl();
		Products products = ip.getProductById(Integer.parseInt(productId));
		model.addAttribute("products", products);
		return "unitproduct";
	}
}

