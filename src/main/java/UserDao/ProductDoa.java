package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bk.Product;

public class ProductDoa {
	private Connection com ;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ProductDoa(Connection com) {
		this.com = com;
	}
	
	public List<Product> getAllProduct(){
		List<Product> products= new ArrayList<Product>();
		
		try {
			query = "select * from product";
			ps = this.com.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				Product row = new Product();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setImage(rs.getString("image"));
				row.setPrice(rs.getString("price"));
				
				products.add(row);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return products;
		
	}
	
}
