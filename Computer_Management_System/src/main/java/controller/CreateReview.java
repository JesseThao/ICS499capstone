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

/**
 * Servlet implementation class CreateReview
 */
@WebServlet("/CreateReview")
public class CreateReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateReview() {
		super();
	}

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		log("in CreateReview servlet");

		String comment = request.getParameter("comment");
		String productID = request.getParameter("prodID");
		String msg = null;

		log("productID variable: " + productID);
		log("prodID attribute: " + request.getParameter("prodID"));

		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT MAX(id)FROM reviews");
			
			if(!request.getParameter("rating").isBlank()) {

				try {
					Review newReview = new Review().getReview(rs);
					int nextKey = newReview.getKey() + 1;
					int rating = Integer.parseInt(request.getParameter("rating"));
					int result = statement.executeUpdate("insert into reviews values('" + nextKey + "', '" + productID
							+ "','" + rating + "','" + comment + "')");
					if (result > 0) {
						// RequestDispatcher dispatcher =
						// request.getRequestDispatcher("writeReview.jsp");
						// dispatcher.forward(request, response);
						msg = "Thank you for your review";

					} else {
						msg = "There was an issue creating your review, please try again later";
					}
				} catch (java.lang.NumberFormatException e) {
					log(e.getMessage());
				} 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (java.lang.NullPointerException e) {
			e.printStackTrace();
		}

		request.setAttribute("productID", productID);
		request.setAttribute("message", msg);
		request.getRequestDispatcher("writeReview.jsp").forward(request, response);
	}

	public void destroy() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
