package com.OEP;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail=request.getParameter("email");
		String upass=request.getParameter("pass");
		HttpSession session=request.getSession();
		RequestDispatcher dis = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oep_main","root","root");
			PreparedStatement pst= con.prepareStatement("select * from studentreg where uemail=? and upass=?");
			pst.setString(1, uemail);
			pst.setString(2, upass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("uname"));
				dis=request.getRequestDispatcher("choice.jsp");
			}else {
				request.setAttribute("status","failed");
				dis=request.getRequestDispatcher("Student.jsp");
				
			}
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
