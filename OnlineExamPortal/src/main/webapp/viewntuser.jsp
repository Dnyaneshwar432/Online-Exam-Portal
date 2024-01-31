<!DOCTYPE html>
<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<html>
<%@include file="head.jsp" %>
<a href="modifynt.jsp"><input type="button" value="Admin Home" class="signout"></a>
<head>
<title>Modify C database</title>
              <style type="text/css">
.container {
	width: 600px;
	height: 1400px;
	padding-left:20px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 40px;
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
	width: 100px;
	margin-left: 30px;
	margin-top: -30px;
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
   String email=request.getParameter("email");
    Connection conn=Connect_File.getConnection();
    String query1="select * from nt_questions";
    String query2="select * from nt_answers where email=?";
    PreparedStatement ps1=conn.prepareStatement(query1);
    PreparedStatement ps2=conn.prepareStatement(query2);
    ps2.setString(1,email);
    ResultSet rs1=ps1.executeQuery();
    ResultSet rs2=ps2.executeQuery();
    int cnum=0;
    %>
    <div class="container">
    
    <b class="text">
    <h2 style="text-align: center;">Detailed result: </h2>
    <%
    while (rs1.next()&& rs2.next()){
    String sno=rs1.getString("sno");
    String ques=rs1.getString("questions");
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

    Question <%=sno%>: <%=ques%><br>
    a) <%=a%><br>
    b) <%=b%><br>
    c) <%=c%><br>
    d) <%=d%><br>
    Correct Choice: <%=correct%><br>
    User's Choice: <%=userans%><br><br>
    
    <%
    }
    out.println("Number of correct answers: "+cnum);
    conn.close();  
    %>
       </b>
      </div>   
<%@include file="foot.jsp" %>
</body>
</html>