package edu.claflin.thesis.pojo;

public class CartItem {
	
	private String brand;
	private String product;
	private double price;
	private int quantity;
	private String gender;
	
	public CartItem() {
		
	}
	
	public CartItem( String brand, String product, double price, int quantity, String gender ) {
		
		this.brand = brand;
		this.product = product;
		this.price = price;
		this.quantity = quantity;
		this.gender = gender;
		
	}
	
	public void setBrand( String brand ) {
		
		this.brand = brand;
		
	}
	
	public String getBrand() {
		
		return brand;
		
	}
	
	public void setProduct( String product ) {
		
		this.product = product;
		
	}
	
	public String getProduct() {
		
		return product;
		
	}
	
	public void setPrice( double price ) {
		
		this.price = price;
		
	}
	
	public double getPrice() {
		
		return price;
		
	}
	
	
	public void setQuantity( int quantity ) {
		
		this.quantity = quantity;
		
	}
	
	public int getQuantity() {
		
		return quantity;
		
	}
	
	public void setGender( String gender ) {
		
		this.gender = gender;
		
	}
	
	public String getGender() {
		
		return gender;
		
	}
	
	public double getTotal() {
		
		return (double)(price * quantity);
		
	}

}
