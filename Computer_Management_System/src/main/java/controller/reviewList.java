package controller;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Review;

public class reviewList implements Serializable{
	/**
	 * default serial version ID
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<Review> reviewList = new ArrayList<Review>();
	private int FIVE = 5;
	private int FOUR = 4;
	private int THREE = 3;
	private int TWO = 2;
	private int ONE = 1;
	private int fiveStarCount;
	private int fourStarCount;
	private int threeStarCount;
	private int twoStarCount;
	private int oneStarCount;
	private double total;	
	private double averageRating;

	public void readReviews(ResultSet rs) {
		Review newReview = new Review();
		try {
			while (rs.next()) {
				newReview.setKey(rs.getInt(1));
				newReview.setProductID(rs.getString(2));
				newReview.setRating(rs.getInt(3));
				setRatingCount(newReview.getRating());
				newReview.setComment(rs.getString(4));
				System.out.print(newReview.toString());
				createReviewList(newReview);				
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
	}

	private void createReviewList(Review newReview) {
		reviewList.add(newReview);		
	}
	
	public void setRatingCount(int rating) {
		
		if (rating == FIVE) {
			fiveStarCount++;
			total++;
		}
		if (rating == FOUR) {
			fourStarCount++;
			total++;
		}
		if (rating == THREE) {
			threeStarCount++;
			total++;
		}
		if (rating == TWO) {
			twoStarCount++;
			total++;
		}
		if (rating == ONE) {
			oneStarCount++;
			total++;
		}
	}

	public Double getAverageRating() {

		averageRating = (double) ((fiveStarCount * FIVE) + (fourStarCount * FOUR) + (threeStarCount * THREE) + (twoStarCount * TWO)
				+ (oneStarCount)) / total;
		return  averageRating;
	}
	public double getTotal() {
		return total;
	}

	public int getFiveStarCount() {
		return fiveStarCount;
	}

	public int getFourStarCount() {
		return fourStarCount;
	}

	public int getThreeStarCount() {
		return threeStarCount;
	}

	public int getTwoStarCount() {
		return twoStarCount;
	}

	public int getOneStarCount() {
		return oneStarCount;
	}
}
