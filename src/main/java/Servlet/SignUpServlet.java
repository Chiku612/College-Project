package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UserDao;
import UserDao.UserSignUp;
import bk.User;
import db.Dbcon;

@WebServlet("/user-signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			out.print("ok bro jod de db");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			String confirmPassword = request.getParameter("confirmPassword");
//			int id = 0;
			
			System.out.println(pass+"   "+confirmPassword);
			if(pass.equals(confirmPassword)) {
				try {
					
					UserSignUp udao = new UserSignUp(Dbcon.getConnection());
					User user = udao.userSignUp(email,pass,name);
					
				}
				catch(Exception e) {
					System.out.println(e);
				}
			}
			else {
				response.sendRedirect("signup.jsp");
			}
			System.out.println(pass+"   "+confirmPassword);
		
		}
	}

}
