package controller;

import java.io.IOException;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		try {
			String u=request.getParameter("user");
			String p=request.getParameter("pass");
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/project","root","root");
		String query="select * from user_details where username=? and pass=?";
		PreparedStatement ps=conn.prepareStatement(query);
		ps.setString(1,u); ps.setString(2,p);
		ResultSet rs=ps.executeQuery();
		   
		   if(rs.next()){
			 HttpSession session= request.getSession();
		   session.setAttribute("email", rs.getString("email"));
		   session.setAttribute("name", rs.getString("username"));
		   
		  
		   	response.sendRedirect("choice.jsp");
		   }
		   else
		   {
			   
			   response.sendRedirect("user.jsp");
			   
			   
		   
		   }
		   conn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
	}

}
