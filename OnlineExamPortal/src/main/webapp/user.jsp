<!DOCTYPE html>
<html>
<head>
<LINK rel="stylesheet" type="text/css" href="login.css"></LINK>
<title>Student</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
function Userv(){
    var user1=document.Loginf.user.value
    var pass1=document.Loginf.pass.value
    if(user1==""){
   	 alert("Enter Your Username ");
   	 document.Loginf.user.focus();
   	 return false;
    }

    if(pass1==""){
   	 alert("Enter Your Password ");
   	 document.Loginf.pass.focus();
   	 return false;
    }
       }
</script>
</head>
<body background="Images/book.jpg">
	<img src="Images/OEP.png" width="400" height="160" align="middle" style="margin-left:520px;">
	
	<div>
	<span>
	<br>
	</span>
	</div>
	
	<div class="container">
		<img alt="ulogin" src="Images/button.png">
	<form action="userlogin" method="post" name="Loginf">
	
	
	 <div class="form-input">
			<input type="text" name="user" placeholder="Enter Username" class="get"  required=""/>
		    </div>
		    <div class="form-input1">
			<input type="password" name="pass" placeholder="Enter Password" class="get"  required=""/>
		     </div>
	     	<div>  <input type="submit" name="submit" value="LOGIN" onClick="Userv()" class="btn-login" /><br />
			    <a class="btn-login" href="index.jsp">BACK</a></div>
			
			<a href="forgotpass.jsp" class="a1"><b>Forget Password?</b> </a>
			<a href="signup.jsp" class="a2"><b>New User Signup </b></a> 
				
			
	   
	
	</form>
		   
	</div>		
	
		
	
</body>
</html>
