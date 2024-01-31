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

@WebServlet("/Alogin")
public class ALogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aemail=request.getParameter("email");
		String apass=request.getParameter("pass");
		HttpSession session=request.getSession();
		RequestDispatcher dis = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oep_main","root","root");
			PreparedStatement pst= con.prepareStatement("select * from adminreg where aemail=? and apass=?");
			pst.setString(1, aemail);
			pst.setString(2, apass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("aname"));
				dis=request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status","failed");
				dis=request.getRequestDispatcher("Admin.jsp");
				
			}
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
