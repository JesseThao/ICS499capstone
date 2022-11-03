package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

public class Administrator extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Connection connection;
	private ResultSet rs = null;
    
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
	
	//suppose to read user accounts from the database
	public ArrayList<User> readUsers() throws Exception {
		return getAccounts(rs);
	}
	
	
	/**
	 * Method to manage user accounts
	 * 
	 */
	private ArrayList<User>getAccounts(ResultSet rs) throws SQLException {
		
		ArrayList<User> accounts = new ArrayList<User>();
		while (rs.next()) {
			
			String firstName = rs.getString("firstName");
			String lastName = rs.getString("lastName");
			String emailAddress = rs.getString("emailAddress");
			User obj = new User(firstName, lastName, emailAddress);
			accounts.add(obj);
		}
		
		return accounts;
	}
	
	/**
	 * Method to manage inventory of items
	 * 
	 */
	private void manageInventory() {
		
		
		
	}
	
	/**
	 * Method to manage reviews
	 * 
	 */
	private void manageReview() {
		
	}

}
