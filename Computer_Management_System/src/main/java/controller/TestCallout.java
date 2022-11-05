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

/**
 * Servlet implementation class TestCallout
 */
@WebServlet("/TestCallout")
public class TestCallout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection;
    
	public void init() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "Team3ics");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
			
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select email from user where email='"+email+"'");
			
			if (rs.next() == true) {
				if (rs.getString(1).compareTo(email) == 0) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("MyProfile");
					dispatcher.forward(request, response);
				}else {
					response.sendRedirect("testCall.jsp?msg=hi");
				}
				
			}else {
				response.sendRedirect("testCall.jsp?msg=hi");
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
