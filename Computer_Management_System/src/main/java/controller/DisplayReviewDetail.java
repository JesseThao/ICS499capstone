package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Review;
import model.ReviewList;

/**
 * Servlet implementation class DisplayReviewDetail
 */
@WebServlet("/ReviewDetail")
public class DisplayReviewDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://cmhs.cdrxbvksu13u.us-east-1.rds.amazonaws.com/cmhs",
					"admin", "IW2Radlf!");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayReviewDetail() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log("in DisplayReviewDetail servlet");
		Review newReview = new Review();	
	
		try {
			Statement statement = connection.createStatement();
			newReview.setProductID(request.getParameter("prodID"));
			ResultSet rs = statement.executeQuery("Select * from reviews where productID = '" + newReview.getProductID() + "'");	
			var rL = new ReviewList(); 
			rL.readReviews(rs);
		
			request.setAttribute("productID", newReview.getProductID());
			request.setAttribute("reviewList", rL);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (java.lang.NumberFormatException e) {
			log(e.getMessage());
		}
		
		request.getRequestDispatcher("reviewDetail.jsp").forward(request, response);
	}
}
