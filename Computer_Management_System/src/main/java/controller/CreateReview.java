package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Review;
import model.User;
import model.UserList;

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
        // TODO Auto-generated constructor stub
    }
	public void init() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://cmhs.cdrxbvksu13u.us-east-1.rds.amazonaws.com/cmhs", "admin", "IW2Radlf!");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}	
	}	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		log("in CreateReview servlet");
		String rating = request.getParameter("rating");
		String comment =request.getParameter("comment");
		String productID = request.getParameter("productID");
		
		try {
			Statement statement = connection.createStatement();
			
			ResultSet rs = statement.executeQuery("SELECT MAX(id)FROM reviews");
			
			Review newReview = new Review();
			
			int nextKey = newReview.getKey(rs) + 1;
			
			/**int result = statement.executeUpdate("insert into user values('"+nextKey+"', '"+rating+"','"+productID+"','"+comment+"')");
			
			if(result > 0) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("writeReview.jsp");
				dispatcher.forward(request, response);
			}else {
				System.out.println("Error Creating Review");
			}**/
			
			log("NewReview Bean: " + newReview.toString());
			log("nextKey value: " + String.valueOf(nextKey));
			log("Rating: " + request.getParameter("rating"));
			log("Product ID: " + request.getParameter("productID"));
			log("Comment: " + request.getParameter("comment"));
			
			request.setAttribute("productID", productID);
			request.getRequestDispatcher("writeReview.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void destroy(){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
