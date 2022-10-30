package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String productType;
	private String productID;
	private String description;
	private Double price;
	private String brand;
	private String model;
	
	public String getBrand() {
		return brand;
	}
	public String getDescription() {
		return description;
	}
	public ArrayList<Product> getList(ResultSet rs, String type) {
		ArrayList<Product> productList = new ArrayList<Product>();

		try {
			while (rs.next()) {
				
				Product p = new Product();
				p.setProductID(rs.getString(1));
				p.setProductType(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setPrice(Double.valueOf(rs.getString(4)));				
				//p.setBrand(rs.getString(3));
				//p.setModel(rs.getString(3));
				
				productList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return productList;		
	}
	public Double getPrice() {
		return price;
	}
	public String getProductID() {
		return productID;
	}
	public String getProductType() {
		return productType;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	private String setModel(String string) {
		return model;	
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
		
}
