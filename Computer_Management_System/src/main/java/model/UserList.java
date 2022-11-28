package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserList {
	private ArrayList<User> userList = new ArrayList<User>();
	
	public ArrayList<User> createList(ResultSet rs){
		
		try {
			while (rs.next()) {
				User u = new User();
				u.setFirstName(rs.getString(1));
				u.setLastName(rs.getString(2));
				u.setEmailAddress(rs.getString(3));
				u.setPassword(rs.getString(4));
				
				userList.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userList;
		
	}
}
