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
	
	public Product addProduct(String name,String type,String price,String image) {
		int x = 0;
		Product pro = new Product();
		try {
			query = "INSERT INTO product (name,category,image,price) values(?,?,?,?)";
			ps = this.com.prepareStatement(query);
			
			ps.setString(1, name);
			ps.setString(2, type);
			ps.setString(3, image);
			ps.setString(4, price);
			
			x=ps.executeUpdate();
			
			if(x>0) {
				System.out.println("insert ");
			}
			else {
				System.out.println("not insert");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return pro;	
	}
	
}
