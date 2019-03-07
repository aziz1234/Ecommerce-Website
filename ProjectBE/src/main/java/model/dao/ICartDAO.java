package model.dao;

import java.util.List;

import model.entity.Cart;
import model.entity.Products;

public interface ICartDAO {

	public boolean addCartItem(Cart c);
	public List<Products> getCartForUser(String userName);
}
