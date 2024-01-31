<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<body background="im.jpg">
<% 
   String u=request.getParameter("user");
   String p=request.getParameter("pass");
   String p1=request.getParameter("pass1");
   String m=request.getParameter("mobile");
   String e=request.getParameter("email");
   String c=request.getParameter("city");
   Connection conn=Connect_File.getConnection();
   String query="insert into user_details values(?,?,?,?,?)";
   PreparedStatement ps=conn.prepareStatement(query);
   if(p.equals(p1)){
   ps.setString(1,u);
   ps.setString(2,p);
   ps.setString(3,m);
   ps.setString(4,e);
   ps.setString(5,c);
   ps.executeUpdate();
   response.sendRedirect("user.jsp");
   conn.close();
   }else{
	   session.setAttribute("reply","Something Wrong Please Signup Again");
	   response.sendRedirect("signup.jsp");
   }
%>
</body>
<jsp:forward page="user.jsp"/>
<%@include file="foot.jsp" %>    
</html>