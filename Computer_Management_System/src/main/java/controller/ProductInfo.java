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

/**
 * Servlet implementation class ProductInfo
 */
@WebServlet("/ProductInfo")
public class ProductInfo extends HttpServlet {
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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String product = request.getParameter("product");
		PrintWriter out = response.getWriter();
		out.print("<table>");
		out.print("<tr>");
		out.print("<th>");
		out.print(product);
		out.print("</th>");
		out.print("<th>");
		out.print("Last Name");
		out.print("</th>");
		out.print("<th>");
		out.print("Email");
		out.print("</th>");
		out.print("</tr>");
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select productType from products where productID='"+product+"'");
			String id = product;
			rs.next();
			product = rs.getString(1);
			if(product.matches("Processor")) {
				rs = statement.executeQuery("select * from processor where id='"+id+"'");
				rs.next();
				String name = rs.getString(2);
				String cores = rs.getString(3);
				String speed = rs.getString(4);
				String socket = rs.getString(5);
				String tdp = rs.getString(6);
				String released = rs.getString(7);
				
				request.setAttribute("name", name);
				request.setAttribute("cores", cores);
				request.setAttribute("speed", speed);
				request.setAttribute("socket", socket);
				request.setAttribute("tdp", tdp);
				request.setAttribute("released", released);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productCPU.jsp");
				dispatcher.forward(request, response);
				
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
