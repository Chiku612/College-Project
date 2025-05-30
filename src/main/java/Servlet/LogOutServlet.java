package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user-logout")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			if(request.getSession().getAttribute("auth")!=null) {
				request.getSession().removeAttribute("auth");
				response.sendRedirect("index.jsp");
			}
			if(request.getSession().getAttribute("admin")!=null) {
				request.getSession().removeAttribute("admin");
				response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("index.jsp");
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
	}


}
