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


@WebServlet("/admin-login")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			
			try {
				UserDao ud = new UserDao(Dbcon.getConnection());
				User user = ud.userLogin(email, pass);
				
				if(user !=null) {
					 request.getSession().setAttribute("admin", user)	;
						response.sendRedirect("index.jsp");
				}
			}
			
			catch(Exception e) {
				System.out.println(e);
			}
		}
	}

}
