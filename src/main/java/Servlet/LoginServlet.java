package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import bk.User;
import db.Dbcon;


@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			
			try {
				UserDao udao = new UserDao(Dbcon.getConnection());
				User user = udao.userLogin(email,pass);
				
				if(user != null) {
//					out.print("user login");
					System.out.println("login");
				    request.getSession().setAttribute("auth", user)	;
					response.sendRedirect("index.jsp");
				}
				else {
					out.print("user login fail");
					
				}
			}
			catch(Exception e) {
				System.out.println(e);
			}
		
			
//			out.println(email);
//			out.println(pass);
			
		}
	}

}
