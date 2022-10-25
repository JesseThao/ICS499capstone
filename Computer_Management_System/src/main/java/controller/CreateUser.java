package controller;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/CreateUser")
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
       
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName =request.getParameter("lastName");
		String password = request.getParameter("password");
		String email =request.getParameter("email");
		
		try {
			Statement statement = connection.createStatement();
			int result = statement.executeUpdate("insert into user values('"+firstName+"','"+lastName+"','"+email+"','"+password+"')");
			
			if(result > 0) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("createUserResult.jsp");
				dispatcher.forward(request, response);
			}else {
				System.out.println("Error Creating User");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void destroty(){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
