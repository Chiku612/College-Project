package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbcon {
	
	private static Connection com = null;
	
	public static Connection getConnection() throws ClassNotFoundException,Exception{
		if(com==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				com = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_project?user=root&password=raghu");
				System.out.println("ok it will conect");
			}
			catch (Exception e){
				System.out.println(e);
			}
			
		}
		return com;
	}
}
