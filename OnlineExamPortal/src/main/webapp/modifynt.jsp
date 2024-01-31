<!DOCTYPE html>
<%@include file="head.jsp" %>
<html>
    <head>
        <title>NT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  
   <style type="text/css">
.container {
	width: 290px;
	height: 250px;
	padding-top:70px;
	padding-left:120px;
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
    <a href="admin.jsp"><input type="button" value="Home" class="signout"></a><br><br>
    <a href="updatentques.jsp"><input type="button" value="Add NT Question" class="signout"></a><br><br>
    <a href="deletentques.jsp"><input type="button" value="Delete NT Question" class="signout"></a><br><br>
    <a href="viewdetailsntuser.jsp"><input type="button" value="View NT User Details" class="signout"></a>
    </div>
    
   
</body>
<%@include file="foot.jsp" %>
</html>