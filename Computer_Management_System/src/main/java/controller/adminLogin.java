package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/adminLogin")
public class adminLogin extends HttpServlet {
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
		HttpSession session = request.getSession(true);
		String password = request.getParameter("password");
		String email =request.getParameter("email");
		int z = 0;
		try {
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery("select email, password from admin where email = '"+email+"' and password = '"+password+"'");
			
			while(result.next()) {
				z=1;
				session.setAttribute("email", email);
				request.setAttribute("email", email);
				request.getRequestDispatcher("adminHomepage.jsp").forward(request, response);
			}if(z==0){
				response.sendRedirect("adminHomepage.jsp?msg=doesnotexist");
				request.getRequestDispatcher("adminHomepage.jsp").forward(request, response);
			}
			
		} catch (SQLException e) {
			System.out.println(e);
			response.sendRedirect("adminHomepage.jsp?msg=invalid");
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
