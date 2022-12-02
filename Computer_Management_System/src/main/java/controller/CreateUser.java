package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
		String password = request.getParameter("password");
		String email =request.getParameter("email");
		
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select email from user where email='"+email+"'");
			if(rs.next() == false) {
				int result = statement.executeUpdate("insert into user values('"+firstName+"','"+lastName+"','"+email+"','"+password+"')");
				
				if(result > 0) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("createUserResult.jsp");
					dispatcher.forward(request, response);
				}
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("createUserError.jsp");
				dispatcher.forward(request, response);
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
