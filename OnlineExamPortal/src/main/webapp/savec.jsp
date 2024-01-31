
<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>
<%@page import="java.sql.*"%>

<html>
    <body background="im.jpg">
        <%@include file="head.jsp" %>
<%!
int count=1;
%>
<% 
	int sno=(Integer)session.getAttribute("sno");
	int sno1=(Integer)session.getAttribute("sno1");
	String atmt_ans=request.getParameter("myradio");
	String correct=null;
	if((String)session.getAttribute("correct")!=null){
		correct=(String)session.getAttribute("correct");
	}else{
		correct=request.getParameter("correct");
	}
	
    Connection conn=Connect_File.getConnection();
    String query ="insert into c_answers values(?,?,?,?) ";
    String e="";
    PreparedStatement st=conn.prepareStatement(query);
    if(((String)request.getParameter("myradio"))==null){
        e="Not Attempted";
        st.setInt(1,sno);
        st.setString(2,(String)session.getAttribute("email"));
        st.setString(3,e);
        st.setString(4,correct);  
    }
    else {
        e=atmt_ans;
    st.setInt(1,sno);
    st.setString(2,(String)session.getAttribute("email"));
    st.setString(3,e);
    st.setString(4,correct);
    }
    st.executeUpdate();
  count++;
  if(count==sno1+1) {
	  count=1;
	  request.getRequestDispatcher("calculatecresult.jsp").forward(request,response);
  }
     conn.close(); 
   %>
     <jsp:forward page="cques.jsp"/>
     <%@include file="foot.jsp" %>
        
    </body>
</html>