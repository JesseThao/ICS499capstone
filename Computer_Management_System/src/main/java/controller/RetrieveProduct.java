package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.HardwareConfig;
import model.Product;
import model.ReviewList;


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
		try {
			Statement statement = connection.createStatement();		
			String productType = request.getParameter("selectProd");
			ResultSet rs = statement.executeQuery("Select * from products where productType = '" + productType + "'");
			Product product = new Product();			
			ArrayList<Product> products = product.getList(rs);
			ArrayList<ReviewList> reviewListArray = new ArrayList<ReviewList>();
			request.setAttribute("products", products);
			request.setAttribute("reviewList", reviewListArray);
			
			if(request.getParameter("deleteProd") != null) {
				HttpSession session = request.getSession();
				product.setProductID(request.getParameter("deleteProd"));
				ResultSet rs2 = statement.executeQuery("Select * from products where productID = '" + product.getProductID() + "'");
				product = product.getProduct(rs2);
				
				HardwareConfig myProdList = new HardwareConfig();
				myProdList = (HardwareConfig) session.getAttribute("config");
				myProdList.deleteMySelectedProducts(product);
				session.setAttribute("config", myProdList);
				
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
			else
				request.getRequestDispatcher("product.jsp").forward(request, response);
			
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
