package model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity
public class Products {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productId;
	@Size(min=1)
	private String productName;
	@Min(value=1, message = "Value cannot be zero or negative")
	private double unitPrice;
	@Size(min=1)
	private String productDescription;
	@Size(min=1)
	private String category; 
	@Min(value = 1, message = " Quantity should be greater than zero and positive")
	@Max(value= 99, message = " Quantity limit exceeded, value should be less than 100")
	private int productQty;
	
	public Products() {}
	
	public Products(int productId, String productName, double unitPrice, String productDescription, String category, int productQty) {
		super();
		this.productQty = productQty;
		this.productId = productId;
		this.productName = productName;
		this.unitPrice = unitPrice;
		this.productDescription = productDescription;
		this.category = category;
	}

	public int getProductQty() {
		return productQty;
	}

	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
		

}
