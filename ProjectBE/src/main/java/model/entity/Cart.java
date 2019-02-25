package model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int cartId;
	
	
	
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	

	

	public Userinfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(Userinfo userInfo) {
		this.userInfo = userInfo;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public Cart() {}
	public Cart( Userinfo userInfo, Products product) {
		super();
		
		
		this.userInfo = userInfo;
		this.product = product;
	}

	@ManyToOne
	@JoinColumn(name = "USERNAME")
	private Userinfo userInfo;
	
	@ManyToOne
	@JoinColumn(name = "PRODUCTID")
	private Products product;
	

}
