package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bk.SProducts;

public class SProductDao {

	private Connection com ;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;
	

	public SProductDao(Connection com) {
		super();
		this.com = com;
	}
	public SProducts spporoduct(int id){
		SProducts s = new SProducts();
		ArrayList<SProducts> ar = new ArrayList<>();
		try {
			query = "select * from product where id =?";
			
			ps = this.com.prepareStatement(query);
			ps.setInt(1, id);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				s.setId(rs.getInt("id"));
				s.setImage(rs.getString("image"));
				s.setCategory(rs.getString("category"));
				s.setPrice(rs.getString("price"));
				s.setName(rs.getString("name"));
				
				
			}
			System.out.println("The s id is"+s.getId());
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return s;
	}

}

