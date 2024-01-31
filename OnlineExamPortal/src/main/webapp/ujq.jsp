<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<head>
   <style type="text/css">
.container {
	width: 290px;
	height: 250px;
	padding-top:50px;
	padding-left:150px;
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
    <body>
    
    <div class="container">
     <a href="modifyjava.jsp"><input type="button" value="Home" class="signout"></a><br><br>
    <a href="updatejavaques.jsp"><input type="button" value="Add Java Question" class="signout"></a><br><br>
    <a href="deletejavaques.jsp"><input type="button" value="Delete Java Question" class="signout"></a><br><br>
    <a href="viewjavaquestions.jsp"><input type="button" value="View Java Question" class="signout"></a>
    </div>
<% 
   String sn=request.getParameter("snumber");
   int sno=Integer.parseInt(sn);
   String q=request.getParameter("question");
   String opt1=request.getParameter("opt1");
   String opt2=request.getParameter("opt2");
   String opt3=request.getParameter("opt3");
   String opt4=request.getParameter("opt4");
   String correct_opt=request.getParameter("correct_opt");
   Connection conn=Connect_File.getConnection();
   String query="insert into java_questions values(?,?,?,?,?,?,?)";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setInt(1,sno);
   ps.setString(2,q);
   ps.setString(3,opt1);
   ps.setString(4,opt2);
   ps.setString(5,opt3);
   ps.setString(6,opt4);
   ps.setString(7,correct_opt);
   ps.executeUpdate();
   
   out.println("Question Added!"); 
   conn.close();
%>              
<jsp:forward page="updatejavaques.jsp"></jsp:forward>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
        </b>
</body> 
</html>