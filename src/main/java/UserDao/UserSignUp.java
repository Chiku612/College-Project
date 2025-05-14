package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bk.User;

public class UserSignUp {
	private Connection com ;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	public UserSignUp(Connection com) {
		this.com = com;
	}
	
//	public User userSignUp(User us) {
//		User user = null;
//		int x = 0;
//		try {
//			query = "INSER INTO userinfo value(?,?,?)";
//			ps = this.com.prepareStatement(query);
//			
//			ps.setString(1, us.getName());
//			ps.setString(2, us.getEmail());
//			ps.setString(3, us.getPass());
//			x = ps.executeUpdate();
//			
//			if(x>0) {
//				System.out.println("succesfully insert");
//			}
//			else {
//				System.out.println("no insert");
//			}
//			
//		
//		}
//		
//		catch(Exception e) {
//			System.out.println(e);
//		}
//		return user;
//		
//	}

	public User userSignUp( String email, String pass, String name) {
		User user = new User();
		int x = 0;
		try {
			query = "INSERT INTO users(username,email,password) values(?,?,?)";
			ps = this.com.prepareStatement(query);
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			x = ps.executeUpdate();
			
			if(x>0) {
				System.out.println("succesfully insert");
			}
			else {
				System.out.println("no insert");
			}
			
		
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		return user;
	
		
	
	}
}
