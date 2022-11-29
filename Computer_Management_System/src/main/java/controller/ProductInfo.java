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

		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select productType from products where productID='"+product+"'");
			String id = product;
			rs.next();
			product = rs.getString(1);
			System.out.println(product);
			if(product.matches("Processor")) {
				rs = statement.executeQuery("select * from processor where id='"+id+"'");
				rs.next();
				String name = rs.getString(2);
				String cores = rs.getString(3);
				String speed = rs.getString(4);
				String socket = rs.getString(5);
				String power = rs.getString(6);
				String released = rs.getString(7);
				
				request.setAttribute("name", name);
				request.setAttribute("cores", cores);
				request.setAttribute("speed", speed);
				request.setAttribute("socket", socket);
				request.setAttribute("power", power);
				request.setAttribute("released", released);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productCPU.jsp");
				dispatcher.forward(request, response);
				
			}
			if (product.matches("Motherboard")) {
				rs = statement.executeQuery("select * from motherboard where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String chipset = rs.getString(3);
				String socket = rs.getString(4);
				String formFactor = rs.getString(5);
				String ramType = rs.getString(6);
				String graphicsCard = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("chipset", chipset);
				request.setAttribute("socket", socket);
				request.setAttribute("formFactor", formFactor);
				request.setAttribute("ramType", ramType);
				request.setAttribute("graphicsCard", graphicsCard);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productMB.jsp");
				dispatcher.forward(request, response);
			}
			else if (product.matches("Graphic Card")) {
				rs = statement.executeQuery("select * from graphicCard where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String speed = rs.getString(3);
				String memoryType = rs.getString(4);
				String memorySize = rs.getString(5);
				String power = rs.getString(6);
				String model = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("speed", speed);
				request.setAttribute("memoryType", memoryType);
				request.setAttribute("memorySize", memorySize);
				request.setAttribute("power", power);
				request.setAttribute("model", model);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productGPU.jsp");
				dispatcher.forward(request, response);
			}
			else if (product.matches("Power Supply")) {
				rs = statement.executeQuery("select * from powerSupply where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String type = rs.getString(3);
				String modular = rs.getString(4);
				String memorySize = rs.getString(5);
				String power = rs.getString(6);
				String model = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("type", type);
				request.setAttribute("modular", modular);
				request.setAttribute("memorySize", memorySize);
				request.setAttribute("power", power);
				request.setAttribute("model", model);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productPSU.jsp");
				dispatcher.forward(request, response);
			}
			else if (product.matches("Ram")) {
				rs = statement.executeQuery("select * from ram where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String size = rs.getString(3);
				String type = rs.getString(4);
				String latency = rs.getString(5);
				String frequency = rs.getString(6);
				String led = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("size", size);
				request.setAttribute("type", type);
				request.setAttribute("latency", latency);
				request.setAttribute("frequency", frequency);
				request.setAttribute("led", led);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productRam.jsp");
				dispatcher.forward(request, response);
			}
			else if (product.matches("Storage")) {
				rs = statement.executeQuery("select * from storage where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String size = rs.getString(3);
				String type = rs.getString(4);
				String read = rs.getString(5);
				String write = rs.getString(6);
				String model = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("size", size);
				request.setAttribute("type", type);
				request.setAttribute("read", read);
				request.setAttribute("write", write );
				request.setAttribute("model", model);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productStorage.jsp");
				dispatcher.forward(request, response);
			}	
			else if (product.matches("Case")) {
				rs = statement.executeQuery("select * from pcCase where id='"+id+"'");
				rs.next();
				String brand = rs.getString(2);
				String type = rs.getString(3);
				String color = rs.getString(4);
				String weight = rs.getString(5);
				String model = rs.getString(6);
				String released = rs.getString(7);
				
				request.setAttribute("brand", brand);
				request.setAttribute("type", type);
				request.setAttribute("color", color);
				request.setAttribute("weight", weight);
				request.setAttribute("model ", model );
				request.setAttribute("released", released);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("productCase.jsp");
				dispatcher.forward(request, response);
			}
			else if (product.matches("Accessories")) {
				rs = statement.executeQuery("select * from accessories where id='"+id+"'");
				rs.next();
				String type = rs.getString(2);
				
				request.setAttribute("type", type);

				RequestDispatcher dispatcher = request.getRequestDispatcher("productAssessories.jsp");
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
