package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.HardwareConfig;
import model.Product;

/**
 * Servlet implementation class SaveConfig
 */
@WebServlet("/Save")
public class SaveConfig extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveConfig() {
        super();

    } 
    Connection connection;
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
		
		HardwareConfig myProdList = new HardwareConfig();
		HttpSession session = request.getSession();
		myProdList = (HardwareConfig) session.getAttribute("config");
		
		if(request.getParameter("email").isEmpty() || request.getParameter("email").isBlank()) {
			String err = "Email address must be populated";
			request.setAttribute("err", err);
		}else if (request.getParameter("saveID").isEmpty() || request.getParameter("saveID").isBlank()) {
			String err = "You must name your file";
			request.setAttribute("err", err);
		}else {
			myProdList.setEmail(request.getParameter("email"));
			myProdList.setSaveID(request.getParameter("saveID"));
			insert(myProdList);	
			request.setAttribute("success", "true");
		}
		
		request.getRequestDispatcher("save.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void insert(HardwareConfig myProdList) {
		
		String QUERY = "INSERT INTO cmhs.savedConfig VALUES (?,?,?,?)";

		try {

			for(int i = 0; i < myProdList.getMySelectedProducts().size(); i++) {
				var pStmt = createInsertProductStmt(connection, QUERY, myProdList.getMySelectedProducts().get(i), myProdList);
				pStmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	private PreparedStatement createInsertProductStmt(Connection conn, String stmt, Product product, HardwareConfig myProdList) throws SQLException {
		final var pStmt = connection.prepareStatement(stmt);
		HardwareConfig hC = new HardwareConfig();
		hC = myProdList;
	    
		pStmt.setString(1, null);
		pStmt.setString(2, hC.getSaveID());
		pStmt.setString(3, product.getProductID());
		pStmt.setObject(4, hC.getEmail());
		
		return pStmt;
	}
}
