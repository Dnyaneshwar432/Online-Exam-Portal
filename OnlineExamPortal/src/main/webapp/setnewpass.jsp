<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<body >
<% 
   String u=request.getParameter("user");

   String e=request.getParameter("email");
   
   String p1=request.getParameter("pass");
   String p2=request.getParameter("pass1");

   
	String sql="update user_details set pass=? where email=? and username=?";

   if(p1.equals(p2)) {
	   
	   Connection conn=Connect_File.getConnection();
	   PreparedStatement ps=conn.prepareStatement(sql);
	   ps.setString(1,p1);
	   ps.setString(2,e);
	   ps.setString(3,u);
	   ps.executeUpdate();	   
	   
   }
   else {
	   response.sendRedirect("forgotpass.jsp");
   }
   
   
%>
</body>
<jsp:forward page="user.jsp"/>
<%@include file="foot.jsp" %>    
</html>