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

import model.Product;
import model.User;
import model.UserList;

/**
 * Servlet implementation class Product
 */
@WebServlet("/GetProduct")
public class RetrieveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveProduct() {
        super();
        // TODO Auto-generated constructor stub
    }
    
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Statement statement = connection.createStatement();		
			String productType = request.getParameter("prodType");
			ResultSet rs = statement.executeQuery("Select * from products where productType = '" + productType + "'");
			Product product = new Product();
			
			
			ArrayList<Product> products = product.getList(rs, productType);
			
			request.setAttribute("products", products);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("processor.jsp").forward(request, response);
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