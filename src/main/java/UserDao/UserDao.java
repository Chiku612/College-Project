package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bk.Product;
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
	
	public List<User> getAllProduct(){
		List<User> users= new ArrayList<User>();
		
		try {
			query = "select * from users";
			ps = this.com.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				User row = new User();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("username"));
				row.setEmail(rs.getString("email"));
				
				
				users.add(row);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return users;
		
	}
	
}
