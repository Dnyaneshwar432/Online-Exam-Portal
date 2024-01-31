
<%
	if (session.getAttribute("adminname") == null) {
		response.sendRedirect("admin2.jsp");
	}
%>

<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
<head>
     <style type="text/css">
.container{
	width:470px;
	height:490px;
	text-align:center;
	background-color: rgba(255, 255, 255, 0.5);
	border-radius:4px;
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
	font-size:1.7em;
	padding-left:100px;

	}
</style>
</head>
<body>
	
    <form action="userlogout">
	
	<input type="submit" class="signout" value="Logout"><br><br>
    </form>
    <DIV class="container">
     <h1 class="text" style="text-align: center; margin-right:50px;   font-weight: bold; ">Admin</h1>
    <a href="modifyc.jsp"><img src="Images/DSAlogo.png" "> </a>
    <a href="modifyjava.jsp"><img src="Images/Javalogo.png" "> </a>
      <a href="modifynt.jsp"><img src="Images/NTlogo.png" "> </a>
     <a href="modifyos.jsp"><img src="Images/OSlogo.png" "> </a>
    </DIV>

</body>
<%@include file="foot.jsp" %>
</html>