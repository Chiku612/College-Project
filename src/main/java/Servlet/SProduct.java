//package Servlet;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import bk.Product;
//import bk.SProducts;
//import db.Dbcon;
//import UserDao.SProductDao;
//
//@WebServlet("/add-to-sproduct")
//public class SProduct extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	private static final String SProducts = null;
//       
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	response.setContentType("text/html;charset=UTF-8");
//		try(PrintWriter out = response.getWriter()){
////			out.println("kam kr raha h");
////			ArrayList<SProducts> sp = new ArrayList<>();
//			
//			int id = Integer.parseInt(request.getParameter("id"));
//			out.print(id);
//			System.out.println(id);
//			
//			Product p = new Product();
//			p.setId(id);
//			
//			SProductDao spd = new SProductDao(Dbcon.getConnection());
//			SProducts s = spd.spporoduct(id);
//			
//			
//				
//			
//			System.out.println(id);
//			response.sendRedirect("sproduct.jsp");
//			
//		}
//		
//		catch(Exception e) {
//			System.out.println(e);
//		}
//	}
//
//}
