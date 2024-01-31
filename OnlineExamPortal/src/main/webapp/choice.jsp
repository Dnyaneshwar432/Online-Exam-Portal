
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>
<%@include file="head.jsp" %>
<!DOCTYPE body PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <style type="text/css">
.container{
	width:470px;
	height:490px;
	text-align:center;
	background-color: rgba(255, 255, 255, 0.5);
	border-radius:8px;
	margin:0 auto;
	margin-top:-550px;	
	padding-right:70px;

	
	}
	.container a{
	display:flex;
	margin-left:100px;
	justify-content:space-around;
	padding:12px;
	height:80px;
}
.signout{
color:green;
background:#F1F0D1;
padding-top:5px;
padding-right:5px;
padding-bottom:5px;
padding-left:5px;
border-radius:4px;
border:none;
border-bottom:6px solid #27aE60;
cursor:pointer;
height:50px;
width:120px;
margin-left:1380px;
margin-top:470px;


}
.text{
	color:black;
	font-style:calibri;
	font-size:1.5em;
	padding-left:100px;

	}
</style>
          

</head>
<body>
	
    <form action="userlogout">
	
	<input type="submit" class="signout" value="Logout"><br><br>
    </form>
    <DIV class="container">
     <h1 class="text" style="text-align: center;   font-weight: bold; ">STUDENT NAME: ${name}</h1>
    <a href="beginc.jsp"><img src="Images/DSAlogo.png" "> </a>
    <a href="beginjava.jsp"><img src="Images/Javalogo.png" "> </a>
      <a href="beginnt.jsp"><img src="Images/NTlogo.png" "> </a>
     <a href="beginos.jsp"><img src="Images/OSlogo.png""> </a>
    </DIV>

</body>
</html>
<%@include file="foot.jsp" %>