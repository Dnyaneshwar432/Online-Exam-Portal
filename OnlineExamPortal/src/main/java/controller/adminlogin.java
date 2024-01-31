package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String u=request.getParameter("user_admin");
        String p=request.getParameter("pass_admin");
        if(u.equals("system") && p.equals("system")){
        	
        	HttpSession session= request.getSession();
        	session.setAttribute("adminname", u);
        	response.sendRedirect("admin.jsp");
        }
        else{
        	response.sendRedirect("admin2.jsp");
        }
	}

}
