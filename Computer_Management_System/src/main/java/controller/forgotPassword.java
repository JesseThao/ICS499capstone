package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;

//ResultSet rs = stmt.executeQuery("select email, password from user where email = '"+email+"' and password = '"+password+"'");
@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		HttpSession session = request.getSession();
		int check = 0;
		try {
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from user where email = '"+email+"' and firstName = '"+firstName+"' and lastName = '"+lastName+"'");
			
			while(rs.next()) {
				check = 1;
				st.executeUpdate("update user set password = '"+password+"' where email = '"+email+"'");
				response.sendRedirect("forgotPassword.jsp?msg=done");
				
			}if(check == 0) {
				response.sendRedirect("forgotPassword.jsp?msg=invalid");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	public void destroty(){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
