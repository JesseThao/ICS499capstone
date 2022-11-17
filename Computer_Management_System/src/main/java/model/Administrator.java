package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

public class Administrator implements Serializable {
	private static final long serialVersionUID = 1L;
	private List<Product> adminList = new ArrayList<Product>();
	
	public Administrator() {
		super();
	}
	
	public Product addProduct(String name) {
		Product newProduct = new Product();
		product.add(newProduct);
		return newProduct;
	}
	
	private List<AdminList> getAdminList() {
		List<AdminList> adminProducts = new ArrayList<AdminList>();
		for (Product product : adminList) {
			adminProducts.addAll(product.getProductID());
		}
		return adminProducts;
	}
	
	private void deleteProduct(Resultset rs) {
		
		Product resetProd = new Product();
		resetProd.setProductType(product.getProductType());
		
		for(int i = 0; i < adminList.size(); i++) {
			if(adminList.get(i).getProductType().equals(product.getProductType())) {
				adminList.set(i, resetProd);
			}
		}
	}
	

}
