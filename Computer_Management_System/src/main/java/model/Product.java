package model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String productType;
	private String productID;
	private String description;
	private Double price;
	private String link;
	private Double reviewAverage;
	private Connection connection;
	
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
				p.setLink(rs.getString(5));
				
				System.out.println(p.toString());
				
				productList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return productList;		
	}
	public ArrayList<Product> getList(ResultSet rs) {
		ArrayList<Product> productList = new ArrayList<Product>();

		try {
			while (rs.next()) {
				
				Product p = new Product();
				p.setProductID(rs.getString(1));
				p.setProductType(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setPrice(Double.valueOf(rs.getString(4)));
				p.setLink(rs.getString(5));
				
				productList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return productList;		
	}
	@Override
	public String toString() {
		return "[productID=" + productID + ", description=" + description + ", price=" + price
				+ ", Link=" + link + ", productType=" + productType + "]";
	}
	public Product getProduct(ResultSet rs) {
		Product product = new Product();
		try {
			if (rs.getFetchSize() > 1) {
				product.getList(rs);
			}
			while (rs.next()) {
				product.setProductID(rs.getString(1));
				product.setProductType(rs.getString(2));
				product.setDescription(rs.getString(3));
				product.setPrice(Double.valueOf(rs.getString(4)));
				product.setLink(rs.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return product;
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
	public void setDescription(String description) {
		this.description = description;
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
	public Double getReviewAverage() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://cmhs.cdrxbvksu13u.us-east-1.rds.amazonaws.com/cmhs", "admin", "IW2Radlf!");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("Select * from reviews where productID = '" + getProductID() + "'");
			ReviewList rL = new ReviewList();
			rL.readReviews(rs);	
			reviewAverage = rL.getAverageRating();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviewAverage;	
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
