package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.ProductDoa;
import bk.Product;
import db.Dbcon;

@WebServlet("/add-product")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String name = request.getParameter("name");
			String Ptype = request.getParameter("product");
			String price = request.getParameter("price");
			String image = request.getParameter("image");
			
			try {
				ProductDoa pro = new ProductDoa(Dbcon.getConnection());
				Product p = pro.addProduct(name, Ptype, price, image);
			}
			catch(Exception e) {
				System.out.println(e);
			}
		response.sendRedirect("index.jsp");
		}
		
		
	}

}
