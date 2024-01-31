<!DOCTYPE html>
<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>OS View</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@ include file="head.jsp" %>   
        <style type="text/css">
.container {
	width: 600px;
	height: 800px;
	padding-left:20px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: -40px;
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
.T{
	width:350px;
	height:25px;
	border-radius:4px;
	font-size:20px;
}
.text{
	color:#ffff80;
	font-style:oblique;
	font-size:1.2em;
	
}
</style>
        
    </head>
    
    <body>
    
        
    <% 
    Connection conn=Connect_File.getConnection();
    String query="select * from user_details ";
    PreparedStatement ps=conn.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    %>
       <a href="modifyos.jsp"><input type="button" value="Back" class="signout"></a><br><br>
    <div class="container">
    <b class="text">
    <%
    while (rs.next()){
    String username=rs.getString("username");
    String email=rs.getString("email");
    %>
    
    User name : <%=username%><br>
    Email ID  : <%=email%><br><br><br>
 	
    <%
    }
    conn.close();  
    %>
    <br>
    <fieldset style="text-align: center; width: 500px;">
    <legend> Enter email ID of user you whose details you wish to view:</legend>
   
    <form action="viewosuser.jsp" method="post">
	<p>Email ID:</p><input type="text" name="email" class="T"><br>
	<br>    			
	<input type="submit" value="View" class="signout">
	<br> 
	<br>
	
	</form>
	</fieldset>
	</b>
	</div>
    </body>
    </html>
<%@include file="foot.jsp" %>