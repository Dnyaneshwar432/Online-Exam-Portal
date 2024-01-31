<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html><%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<head>
<link rel="stylesheet" href="login.css">
<style type="text/css">
.container {
	width: 290px;
	height: 170px;
	padding-top:70px;
	padding-left:10px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 50px;
}

.signout {
	color: green;
	background: #F1F0D1;
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	border-radius: 4px;
	border: none;
	border-bottom: 4px solid #27aE60;
	cursor: pointer;
	height: 40px;
	width: 150px;
	
	
}

</style>
</head>
<body background="im.jpg">
<b>
<div class="container">
    <a href="modifyos.jsp"><input type="button" value="Home" class="signout"></a><br><br>
    <a href="deleteosques.jsp"><input type="button" value="Delete more questions" class="signout"></a><br><br></div><% 
   int c=Integer.parseInt(request.getParameter("delete"));
   
   Connection conn=Connect_File.getConnection();
   String query="delete from os_questions where SNO=?";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setInt(1,c);
   ps.executeUpdate();
   conn.close();
   
%>   

<br><br>
"Question deleted!!"<br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
</b>
</body> 
</html>