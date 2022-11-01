package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import controller.reviewList;

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

	/**
	 * public int getKey(ResultSet rs) { try { rs.next(); key = rs.getInt(1); // key
	 * = rs.getString(1));
	 * 
	 * } catch (SQLException e) { e.printStackTrace();
	 * System.out.print(e.getMessage()); return 0; } return key; }
	 **/

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

	/**
	 * Reads result set from query and returns an ArrayList of Review objects
	 * 
	 * @param rs
	 * @return ArrayList of Review objects
	 */
/**	public ArrayList<Review> getList(ResultSet rs) {
		ArrayList<Review> reviewList = new ArrayList<Review>();
		try {
			while (rs.next()) {
				Review r = new Review().getReview(rs);
				reviewList.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviewList;
	}
	public ArrayList<Review> buildList(Review r) {
		
		try {
			while (rs.next()) {
				Review r = new Review().getReview(rs);
				reviewList.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviewList;
	}**/

	/**
	 * Takes array list of Reviews and sets the star rating for that product
	 * 
	 * @param reviewArray
	 */
}
