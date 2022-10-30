package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Review implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int rating;
	private int average;
	private int key;
	private String productID;
	
	
	public int getAverage() {
		return average;
	}
	public int getTotal() {
		return average;
	}
	public int getKey(ResultSet rs) {
		try {
				rs.next();
				key = rs.getInt(1);
				//key = rs.getString(1));

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
			return 0;
		}
		return key;
	}
	public void setProductID(String parameter) {
		productID = parameter;	
	}
	public String getProductID(String parameter) {
		return productID;	
	}
}
