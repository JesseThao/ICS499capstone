package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;

/**
 * Servlet implementation class CreateProduct
 */
@WebServlet("/MaintainProduct")
public class MaintainProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection connection;
	String errorMsg = null;
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
		Product product = new Product();
		product.setProductID(request.getParameter("productID"));
		product.setDescription(request.getParameter("productDescription"));
		product.setProductType(request.getParameter("productType"));
		try {
			product.setPrice(Double.parseDouble(request.getParameter("productPrice")));
	
		}catch(java.lang.NumberFormatException e){
			e.printStackTrace();
		}catch(java.lang.NullPointerException e){
			e.printStackTrace();
		}
		
		product.setLink(request.getParameter("productLink"));
		
		
		if(request.getParameter("searchProduct") !=null) {
		
			product = searchProduct(product);
			request.setAttribute("product", product);
		}
		
		if(request.getParameter("createProduct") != null) {
			createProduct(product);
		}
		
		if(request.getParameter("deleteProduct") != null) {
			deleteProduct(product);
		}
		if(request.getParameter("editProduct") != null) {
			
			updateProduct(product);
		}
		request.setAttribute("errorMsg", errorMsg);
		request.setAttribute("product", product);
		request.getRequestDispatcher("adminHomepage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private Product searchProduct(Product findProduct) {
		String QUERY = "SELECT * FROM cmhs.products WHERE productID = ?";
		
		Product product = new Product();

		try {
			var pStmt = createSearchProductStmt(connection, QUERY, findProduct);
			var rs = pStmt.executeQuery();
			log("SQL statement: " + pStmt);
			while (rs.next()) {
				product.setProductID(rs.getString(1));
				product.setProductType(rs.getString(2));
				product.setDescription(rs.getString(3));
				product.setPrice(Double.valueOf(rs.getString(4)));
				product.setLink(rs.getString(5));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return product;
	}
	private void createProduct(Product product) {
		String QUERY = "INSERT INTO cmhs.products (productID,productType,description,price,link) VALUES (?,?,?,?,?)";
				
				
		
		try {
			var pStmt = createProductStmt(connection, QUERY, product);
			log("SQL statement: " + pStmt);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}			
	}
	

	public void updateProduct(Product product) {
		
		String QUERY = "UPDATE cmhs.products SET productType = ?, description = ?, price = ?, link = ? WHERE productID = ?";

		try {
			var pStmt = createUpdateProductStmt(connection, QUERY, product);
			log("SQL statement: " + pStmt);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	public void deleteProduct(Product product) {
			
			String QUERY = "DELETE FROM cmhs.products WHERE productID = ?";
			try {
				var pStmt = createDeleteProductStmt(connection, QUERY, product);
				log("SQL statement: " + pStmt);
				pStmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				errorMsg = e.getMessage();
			}
				
		}
	
	private PreparedStatement createProductStmt(Connection conn, String stmt, Product product) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		pStmt.setString(1, product.getProductID());
		pStmt.setString(2, product.getProductType());
		pStmt.setString(3, product.getDescription());
		pStmt.setDouble(4, product.getPrice());
		pStmt.setString(5, product.getLink());
		
		
		return pStmt;
	}
	
	private PreparedStatement createUpdateProductStmt(Connection conn, String stmt, Product product) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		pStmt.setString(1, product.getProductType());
		pStmt.setString(2, product.getDescription());
		pStmt.setDouble(3, product.getPrice());
		pStmt.setString(4, product.getLink());
		pStmt.setString(5, product.getProductID());
		
		
		return pStmt;
	}
	
	private PreparedStatement createSearchProductStmt(Connection conn, String stmt, Product product) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		pStmt.setString(1, product.getProductID());
		
		return pStmt;
	}
	
	private PreparedStatement createDeleteProductStmt(Connection conn, String stmt, Product product) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
	    
		
		pStmt.setString(1, product.getProductID());
		
		return pStmt;
	}
	
	public void destroy(){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

