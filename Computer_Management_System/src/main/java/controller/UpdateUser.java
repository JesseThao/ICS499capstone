package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.HardwareConfig;
import model.Product;
import model.User;
import model.UserList;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private Connection connection;
    String errorMsg = null;
    
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
			User userUpdate = new User();
			HttpSession session = request.getSession();
			userUpdate.setEmailAddress(request.getParameter("userEmail"));
			userUpdate.setFirstName(request.getParameter("fname"));
			userUpdate.setLastName(request.getParameter("lname"));
			userUpdate.setPassword(request.getParameter("password"));
			errorMsg = null;
			
			
			if(request.getParameter("updateUser") != null) {
				updateUser(userUpdate);
				request.setAttribute("errorMsg", errorMsg);
				request.getRequestDispatcher("adminHomepage.jsp").forward(request, response);
			}
			
			if(request.getParameter("deleteUser") != null) {
				deleteUser(userUpdate);
				request.setAttribute("errorMsg", errorMsg);
				request.getRequestDispatcher("adminHomepage.jsp").forward(request, response);
			}
			if(request.getParameter("updateProfile") != null) {
				userUpdate.setEmailAddress(request.getParameter("email"));
				userUpdate.setFirstName(request.getParameter("firstName"));
				userUpdate.setLastName(request.getParameter("lastName"));
				updateUser(userUpdate);
				session.setAttribute("loggedInUser", userUpdate);
				request.getRequestDispatcher("updateProfileResult.jsp").forward(request, response);
			}
			
			
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void updateUser(User user) {
		
		String QUERY = "UPDATE cmhs.user SET firstName = ?, lastName = ?, password = ? WHERE email = ?";

		try {
			var pStmt = createUpdateUserStmt(connection, QUERY, user);
			log("SQL statement: " + pStmt);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	public void deleteUser(User user) {
			
			String QUERY = "DELETE FROM cmhs.user WHERE email = ?";
			try {
				var pStmt = createDeleteUserStmt(connection, QUERY, user);
				log("SQL statement: " + pStmt);
				pStmt.executeUpdate();
			} catch (java.sql.SQLIntegrityConstraintViolationException e) {
				e.printStackTrace();
				errorMsg = "Cannot delete or update a parent row: Foreign Key constraint";
			} catch (SQLException e) {
				e.printStackTrace();
				errorMsg = e.getMessage();
			} 
		}
	
	private PreparedStatement createUpdateUserStmt(Connection conn, String stmt, User user) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		pStmt.setString(1, user.getFirstName());
		pStmt.setString(2, user.getLastName());
		pStmt.setString(3, user.getPassword());
		pStmt.setString(4, user.getEmailAddress());
		
		return pStmt;
	}
	
	private PreparedStatement createDeleteUserStmt(Connection conn, String stmt, User user) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		
		pStmt.setString(1, user.getEmailAddress());
		
		return pStmt;
	}
	
	public void destroty(){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
