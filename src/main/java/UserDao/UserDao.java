package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bk.User;


public class UserDao {
	private Connection com ;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	public UserDao(Connection com) {
		this.com = com;
	}
	
	public User userLogin(String email ,String pass) {
		User user = null;
		try {
			query = "select * from users where email=? and password=?";
			ps = this.com.prepareStatement(query);
			
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("username"));
				user.setEmail(rs.getString("email"));
			}
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		return user;
		
	}
	
	
}
