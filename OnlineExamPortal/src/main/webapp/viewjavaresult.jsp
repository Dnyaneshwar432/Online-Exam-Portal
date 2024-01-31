<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>

<%@include file="head.jsp" %>


<!DOCTYPE html>

<html>

<head>
<title>Modify C database</title>
<style type="text/css">
.container{
	width:950px;
	height:auto;
	background-color:rgba(52, 73, 94, 0.7);
	border-radius:4px;
	margin:0 auto;
	padding-top:20px;
	padding-bottom:20px;
	margin-top:-120px;
	}
.text{
	color:white;
	font-style:oblique;
	font-size:1.2em;
	padding-left:40px;
	
}
.text1{
	color:yellow;
	font-style:oblique;
	font-size:1.3em;
	padding-left:40px;
	
}
h2{
margin-left:120px;

}
</style>


</head>

<body background="im.jpg">
	<a href="choice.jsp"><input type="button" value="Home" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px;margin-right:30px; "></a>
    <h2>Detailed result: </h2>
    <br>
    
<br><br>
 <%
   String email=(String)session.getAttribute("email");
    Connection conn=Connect_File.getConnection();
    String query1="select * from java_questions order by sno";
    String query2="select * from java_answers where email=? order by sno";
    PreparedStatement ps1=conn.prepareStatement(query1);
    PreparedStatement ps2=conn.prepareStatement(query2);
    ps2.setString(1,email);
    ResultSet rs1=ps1.executeQuery();
    ResultSet rs2=ps2.executeQuery();
    int cnum=0;
    %>
    <div class="container">
    <%
    while (rs1.next()&& rs2.next()){
    String sno=rs1.getString("sno");
    String ques=rs1.getString("question");
    String a=rs1.getString("opt1");
    String b=rs1.getString("opt2");
    String c=rs1.getString("opt3");
    String d=rs1.getString("opt4");
    String correct=rs1.getString("correct_opt");
    String userans=rs2.getString("userans");
    if(correct.equals(userans)){
       cnum++;
  }
%>

   <b class="text"> Question <%=sno%>: <%=ques%></b><br>
   <b class="text"> a) <%=a%></b><br>
   <b class="text"> b) <%=b%></b><br>
   <b class="text"> c) <%=c%></b><br>
   <b class="text"> d) <%=d%></b><br>
   <b class="text"> Correct Answer : <%=correct%></b><br>
   <b class='text1'>Your Answer: <%=userans%></b><br><br>
    
    <%
    }
    out.println("<b class='text1'>Number of Correct Answers: "+cnum+"</b>");
    %>
	</div>
	<%
    conn.close();  
    %>
       
    
<%@include file="foot.jsp" %>
</body>
</html>