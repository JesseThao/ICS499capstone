package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
import model.ReviewList;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
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
			HttpSession session = request.getSession();
			Statement statement = connection.createStatement();		
			String productID = request.getParameter("prodID");
			Product product = new Product();
			ResultSet rs = statement.executeQuery("SELECT * FROM cmhs.products WHERE productID = '" + productID + "'");
			product= product.getProduct(rs);
			ResultSet rs2 = statement.executeQuery("SELECT productType FROM cmhs.components");
			
			HardwareConfig myProdList = new HardwareConfig();
			//request.setAttribute("product", product );
			
			
			if (session.getAttribute("config") != null) {
				myProdList = (HardwareConfig) session.getAttribute("config");
				myProdList.setMySelectedProducts(product);
				myProdList.setMyProducts(product);
				request.setAttribute("product", product);

			}else {
				
				//myProdList.setMySelectedProducts(product);
				//myProdList.setMyProducts(product);
				myProdList.setComponents(rs2);								
			}
			session.setAttribute("config", myProdList);
			log("MySelectedProduct size: " + myProdList.getMySelectedProducts().size());
			log("MyProducts size: " + myProdList.getMyProducts().size());
			log("Components size: " + myProdList.getComponents().size());
			log("setMySelectedProducts: " + myProdList.getMySelectedProducts().toString());
		
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("home.jsp").forward(request, response);
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
		doGet(request, response);
	}
}
