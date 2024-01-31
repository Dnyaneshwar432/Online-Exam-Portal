<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <LINK rel="stylesheet" type="text/css" href="login.css"></LINK>  
        <script>
        function adminv(){
     var user1=document.LoginF.user_admin.value
     if(user1==""){
    	 alert("Enter Your Username ");
    	 document.LoginF.user_admin.focus();
    	 return false;
     }
     var pass1=document.LoginF.pass_admin.value
     if(pass1==""){
    	 alert("Enter Your Password ");
    	 document.LoginF.pass_admin.focus();
    	 return false;
     }
        }
        </script>
    </head>
    <body  background="Images/book.jpg">
        <img src="Images/OEP.png" width="400" height="160" align="middle" style="margin-left:520px;"><br><br>
 
    <marquee><h1>Welcome To Online Exam Portal</h1></marquee>
    
    <div class="container">
		<img alt="ulogin" src="Images/admin-login.png">
		<form action="adminlogin" method="post" name="LoginF">
		<div class="form-input">
			<input type="text" name="user_admin" placeholder="Enter Username" class="get" required="">
		</div>
		<div class="form-input1">
			<input type="password" name="pass_admin" placeholder="Enter Password" class="get"required="">
		</div>
		<div>
	
			<input type="submit" name="submit" value="LOGIN" class="btn-login" onClick="adminv()" onsubmit="return valid"/><br />
			<a class="btn-login" href="index.jsp">BACK</a></div>
		</div>
		</form>
<script type="text/javascript">
function Valid(){
	let x= document.forms["adminlogin"]["user_admin"]["pass_admin"].value;
	if(x==""){
		alert("Please fill your details first");
		return false;
	}
}
</script>
	</div>
    		
        
       
    </body>

</body>
<%@include file="foot.jsp" %>
</html>