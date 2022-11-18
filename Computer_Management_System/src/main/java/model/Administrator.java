package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

public class Administrator implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private ArrayList<Product> adminProductList = new ArrayList<Product>();
	private ArrayList<User> adminUserList = new ArrayList<User>();
	private ArrayList<Review> adminReviewList = new ArrayList<Review>();
	
	public Administrator() {
		super();
	}
	
	private ArrayList<Product> addProduct(ResultSet rs) {
		
		try {
			while (rs.next()) {
				
				Product p = new Product();
				p.setProductID(rs.getString(1));
				p.setProductType(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setPrice(Double.valueOf(rs.getString(4)));
				p.setLink(rs.getString(5));
				
				System.out.println(p.toString());
				
				adminProductList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return adminProductList;
	}
	
	private ArrayList<User> getUser(ResultSet rs) {
		
		try {
			while (rs.next()) {
				User u = new User();
				u.setFirstName(rs.getString(1));
				u.setLastName(rs.getString(2));
				u.setEmailAddress(rs.getString(3));
				
				adminUserList.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return adminUserList;
	}
	
	
	//public Product addProduct(String name) {
	//	Product newProduct = new Product();
	//	adminList.add(newProduct);
	//	return newProduct;
	//}
	
	//private List<Product> getAdminList() {
	//	List<Product> adminProducts = new ArrayList<Product>();
	//	for (Product product : adminList) {
	//		adminProducts.addAll(product.getProductType());
	//	}
	//	return adminProducts;
	//}
	
	private void deleteProduct(Product product) {
		
		Product resetProd = new Product();
		resetProd.setProductType(product.getProductType());
		
		for(int i = 0; i < adminProductList.size(); i++) {
			if(adminProductList.get(i).getProductType().equals(product.getProductType())) {
				adminProductList.set(i, resetProd);
			}
		}
	}
	
	private void deleteReview(ReviewList review) {
		
		
	}
	
	

}
