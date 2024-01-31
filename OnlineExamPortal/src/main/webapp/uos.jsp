<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
    <body>
        <b>
            <a href="modifyos.jsp">HOME</a><br>
            <a href="updateosques.jsp">ADD MORE QUESTIONS</a><br>
            <a href="deleteosques.jsp">DELETE QUESTIONS</a><br>
            <a href="viewosquestions.jsp">VIEW QUESTIONS</a><br>
            <br>
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
   String query="insert into os_questions values(?,?,?,?,?,?,?)";
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
<jsp:forward page="updateosques.jsp"></jsp:forward>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="foot.jsp" %>
        </b>
</body> 
</html>