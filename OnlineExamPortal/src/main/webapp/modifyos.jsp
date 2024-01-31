<!DOCTYPE html>
<%@include file="head.jsp" %>
<html>
    <head>
        <title>OS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  
   <style type="text/css">
.container {
	width: 290px;
	height: 250px;
	padding-top:70px;
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
     <a href="admin.jsp"><input type="button" value="Home" class="signout"></a><br><br>
    <a href="updateosques.jsp"><input type="button" value="Add OS Question" class="signout"></a><br><br>
    <a href="deleteosques.jsp"><input type="button" value="Delete OS Question" class="signout"></a><br><br>
    <a href="viewdetailsosuser.jsp"><input type="button" value="View OS User Details" class="signout"></a><br><br>

  
    </div>
    
   
</body>
<%@include file="foot.jsp" %>
</html>