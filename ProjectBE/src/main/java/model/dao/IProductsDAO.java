package model.dao;
import java.util.List;

import model.entity.Products;

public interface IProductsDAO {
	public boolean insertProduct(Products p);
	public List<Products> getProducts();
	public boolean updateProduct(Products p);
	public boolean deleteProduct(int productId);
	public Products getProductById(int productId);
	public List<Products> getProductsByCategory(String category);

}
