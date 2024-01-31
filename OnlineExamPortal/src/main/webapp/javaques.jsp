<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>
<%@ page import="java.util.*, beans.*" %>
<%@ include file="head.jsp"%><br>
<html>
<head>
<style type="text/css">
.timer
{
	position: relative;
	font-family: "Roboto", sans-serif;
	outline: 0;
   	background: #4CAF50;
   	font-size: 36px;
    max-width: 50px;
    text-align: center;
}
</style>
<style type="text/css">
.container {
	width: 1090px;
	height: 300px;
	margin-top:90px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	padding-top: 30px;
	padding-left: 30px;
}
</style>
</head>
<%!
ArrayList<Question> list;
int term;
int qn;
Question q1;
Question q;
Question q2;
ArrayList<Question> ques;
%>

	<%
	if(qn==30) {
		qn=0;   
		}
	if(qn==0)
	{
	
	list=(ArrayList)session.getAttribute("dbdata");
	Random r1= new Random();
	
	//create object of Arraylist ques.................
	
ques= new ArrayList<>();
	for(int i=1;i<=100;i++){
		int indexno=r1.nextInt(list.size());
		
	 q1=(Question)list.get(indexno);
		if(!ques.contains(q1)){
			ques.add(q1);
		}
		if(ques.size()==30){
			break;
		}
		}
	}
	
	if(qn==30) {
	qn=0;   
	}
	%>
	<div class="container">
	<form method="post" action="savejava.jsp">
    <b style="font-size:1.2em;color:#00ff80;"><i>
    <%
    q=(Question)ques.get(qn); 
  	 qn++;
  	String cop=q.getCorrect();
  		  	%>
 <script>
 var Timer;
 var totalSeconds;
 function CreateTimer(TimerID, Time) 
 {
     Timer = document.getElementById(TimerID);
     TotalSeconds = Time;
     UpdateTimer()
     window.setTimeout("Tick()", 1000);
 }
 function Tick() 
 {
     TotalSeconds -= 1;
     if(TotalSeconds ==-1)
       {
    	 <%
         session.setAttribute("correct",q.getCorrect() );
         %>
         
     window.location="savejava.jsp";
       }
    else
      {
     UpdateTimer()
   window.setTimeout("Tick()", 1000);
      }
 }
 function UpdateTimer() {
     Timer.innerHTML = TotalSeconds;
 }
 </script>
  		  	
<div class="timer">
<div id='timer'></div>
<script type="text/javascript">window.onload = CreateTimer("timer", 60);</script>
</div>
  		  	
 	<%	
    out.print("<br>");
    out.println("Question"+q.getSno()+". "+q.getQuestion());
    session.setAttribute("sno",q.getSno());
    session.setAttribute("sno1",ques.size());
    %>
  <table style="padding-left: 20px;">
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns1()%>" style="margin-right:150px; border:0px; width:50%; height:1.6em;"></td><td><b style="font-size:1.5em;color:#fff; margin-left:-100px;"><%=q.getAns1()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns2()%>"style="margin-right:150px; border:0px; width:50%; height:1.6em;"></td><td><b style="font-size:1.5em;color:#fff;margin-left:-100px;"><%=q.getAns2()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns3()%>"style="margin-right:150px; border:0px; width:50%; height:1.6em;"></td><td><b style="font-size:1.5em;color:#fff;margin-left:-100px;"><%=q.getAns3()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns4()%>"style="margin-right:150px; border:0px; width:50%; height:1.6em;"></td><td><b style="font-size:1.5em;color:#fff;margin-left:-100px;"><%=q.getAns4()%></b></td></tr>
          <tr><td style="text-align:right;"><i
          nput type="hidden" name="correct" value="<%=q.getCorrect()%>"></td></tr>
    <%
    if(qn==30){
    %>
        <tr><td><input type="submit" value="Submit" style="width:103px;"></td><td><input type="reset" value="Clear"></td></tr>
    <%
     }
    else{
    %>
       <tr><td><input type="submit" value="Next Question" style="padding:15px 30px;
	cursor:pointer;
	color:#FFF;
	border-radius:4px;
	border:none;
	background-color:#2Ecc71;
	border-bottom:4px solid #27aE60;
	margin-bottom:20px;"></td><td><input type="reset" value="Clear"style="padding:15px 30px;
	cursor:pointer;
	color:#FFF;
	border-radius:4px;
	border:none;
	background-color:#2Ecc71;
	border-bottom:4px solid #27aE60;
	margin-bottom:20px;"></td></tr>
    <%
     }
    %>
         </table>
     </form>
     </div>
     <br><br>
<%@ include file="foot.jsp"%>
</html>
  
            
