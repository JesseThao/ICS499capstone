package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName =request.getParameter("lastName");
		String email =request.getParameter("email");
		
		try {
			Statement statement = connection.createStatement();
			int result = statement.executeUpdate("update user set firstName='"+firstName+"', lastName='"+lastName+"' where email='"+email+"'");
			
			if(result > 0) {
				request.setAttribute("firstName", firstName);
				request.setAttribute("lastName", lastName);
				RequestDispatcher dispatcher = request.getRequestDispatcher("updateProfileResult.jsp");
				dispatcher.forward(request, response);
			}else {
				System.out.println("Error Updating Profile");
			}
			
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
}