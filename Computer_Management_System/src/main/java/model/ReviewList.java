package model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewList implements Serializable {
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
	private int fiveStarCount = 0;
	private int fourStarCount = 0;
	private int threeStarCount = 0;
	private int twoStarCount = 0;
	private int oneStarCount = 0;
	private double total;
	private double averageRating;
	private int fiveStarWidth;
	private int fourStarWidth;
	private int threeStarWidth;
	private int twoStarWidth;
	private int oneStarWidth;

	public ArrayList<Review> getReviewList() {
		return reviewList;
	}

	public void setReviewList(Review newReview) {
		reviewList.add(newReview);
	}

	public Double getAverageRating() {

		averageRating = (double) ((fiveStarCount * FIVE) + (fourStarCount * FOUR) + (threeStarCount * THREE)
				+ (twoStarCount * TWO) + (oneStarCount)) / total;
		return averageRating;
	}

	public int getFiveStarCount() {
		return fiveStarCount;
	}

	public double getFiveStarWidth() {
		return fiveStarWidth;
	}

	public int getFourStarCount() {
		return fourStarCount;
	}

	public double getFourStarWidth() {
		return fourStarWidth;
	}

	public int getOneStarCount() {
		return oneStarCount;
	}

	public double getOneStarWidth() {
		return oneStarWidth;
	}

	public int getThreeStarCount() {
		return threeStarCount;
	}

	public double getThreeStarWidth() {
		return threeStarWidth;
	}

	public double getTotal() {
		return total;
	}

	public int getTwoStarCount() {
		return twoStarCount;
	}

	public double getTwoStarWidth() {
		return twoStarWidth;
	}

	public void readReviews(ResultSet rs) {
		
		try {
			while (rs.next()) {
				Review newReview = new Review();
				newReview.setKey(rs.getInt(1));
				newReview.setProductID(rs.getString(2));
				newReview.setRating(rs.getInt(3));
				setRatingCount(newReview.getRating());
				newReview.setComment(rs.getString(4));
				reviewList.add(newReview);
			}
			setWidth();
			System.out.print("review list array: " + reviewList.toString());

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
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

	public void setWidth() {
		fiveStarWidth = (int) ((fiveStarCount / total) * 100);
		fourStarWidth = (int) ((fourStarCount / total) * 100);
		threeStarWidth = (int) ((threeStarCount / total) * 100);
		twoStarWidth = (int) ((twoStarCount / total) * 100); 
		oneStarWidth = (int) ((oneStarCount / total) * 100);
	}
}
