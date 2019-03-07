package model.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Userinfo {
 
	@Id
	private String userName;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	private String emailId;
	private String password;
	@Column(nullable=false, columnDefinition = "boolean default true")
	private boolean enabled;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private List<Authorities> authorities = new ArrayList<>();
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "userInfo")
	private List<Cart> cart = new ArrayList<>();
	

	public Userinfo(){}
	
	public Userinfo(String userName, String emailId, String password, boolean enabled, List<Authorities> authorities, List<Cart> cart) {
		super();
		this.enabled = enabled;
		this.userName= userName;
		this.emailId = emailId;
		this.password= password;
		this.authorities = authorities;
		this.cart = cart;
	}

	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public List<Authorities> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authorities> authorities) {
		this.authorities = authorities;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@Override
	public String toString() {
		return "Userinfo [userName=" + userName + ", userId=" + userId + ", emailId=" + emailId + ", password="
				+ password + ", enabled=" + enabled + ", authorities=" + authorities + ", cart=" + cart + "]";
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
