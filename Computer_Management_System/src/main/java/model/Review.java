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
	private String comment;
	private String productID;


	public String getComment() {
		return comment;
	}

	public int getKey() {
		return key;
	}
	public void setKey(int k) {
		key = k;
	}

	public String getProductID() {
		return productID;
	}

	public void setRating(int rateResult) {
		rating = rateResult;
	}

	public Review getReview(ResultSet rs) {
		Review newReview = new Review();
		try {
			rs.next();
			newReview.key = rs.getInt(1);
			newReview.setProductID(rs.getString(2));
			newReview.setRating(rs.getInt(3));
			newReview.setComment(rs.getString(4));

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return newReview;
	}

	public int getRating() {
		return rating;
	}

	public int getTotal() {
		return average;
	}

	public void setComment(String resultComment) {
		comment = resultComment;
	}

	public void setProductID(String parameter) {
		productID = parameter;
	}

	@Override
	public String toString() {
		return "[productID=" + productID + ", rating=" + rating + ", average=" + average + ", key=" + key + ", comment="
				+ comment + "]";
	}
}
