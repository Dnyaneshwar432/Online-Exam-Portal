<%@include file="head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> DSA </title>
<style type="text/css">
.container {
	width: 950px;
	height: 440px;
	padding-left:80px;
	padding-top:40px;
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
.text{
	color:#ffff80;
	font-style:oblique;
	font-size:1.2em;
	
}
</style>


</head>
<body>
 <a href="modifyc.jsp"><input type="button" value="Back" class="signout"></a><br><br>
	<div class="container">
		<form action="ucq.jsp" method="post">
			<b class="text">S.No.-</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="snumber"><br> <br>
			<b class="text">Question</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" size="100" style="height: 100px" name="question"><br>
			<br> 
			<b class="text">Option a)</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="text" size="50" name="opt1"><br> <br>
			<b class="text">Option b)</b> 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" size="50" name="opt2"><br> <br>
			<b class="text">Option c)</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				type="text" size="50" name="opt3"><br> <br> 
			<b class="text">Option d)</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" size="50" name="opt4"><br> <br>
			<b class="text">Correct Answer-</b>
			<input type="text" size="50" name="correct_opt"><br>
			<br> <input type="submit" value="ADD QUESTION" class="signout" style="margin-left:200px;">
			 <a	href="viewcquestions.jsp">
			<input type="button" value="VIEW QUESTIONS" class="signout"></a>
			<a href="deletecques.jsp"><input type="button" value="DELETE QUESTIONS" class="signout"></a>
		</form>
	</div>
</body>
</html>
<%@include file="foot.jsp"%>