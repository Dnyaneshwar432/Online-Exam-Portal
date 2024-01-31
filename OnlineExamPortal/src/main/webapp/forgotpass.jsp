<!DOCTYPE html>
<html>
<head>
<title>Forget Password</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="head.jsp" %>
<LINK rel="stylesheet" type="text/css" href="css/signup.css"></LINK>
</head>

<body>

<div class="container1">
		<img alt="signup" src="Images/resetpass.png" height="80px;" width="200px;">
		<form action="data_save.jsp" method="post">
			<table>
				<tr>
					<td><p class="pera">Username :</p></td>
					<td>
						<div class="form-input">
							<input type="text" name="user" placeholder="Enter Username" class="get">
						</div>
					</td>
				</tr>
				<tr><td><p class="pera">Password :</p></td>
					<td>
						<div class="form-input">
							<input type="password" name="pass" placeholder="Enter Password">
						</div>
					</td>
				</tr>
				<tr><td><p class="pera">Confirm Password :</p></td>
					<td>
						<div class="form-input">
							<input type="password" name="pass1" placeholder="Confirm Password">
						</div>
					</td>
				</tr>
				<tr><td><p class="pera">Email :</p></td>
					<td>
						<div class="form-input">
							<input type="text" name="email" placeholder="Enter Email Account">
						</div>
					</td>
				</tr>
				<tr><TD colspan="2">
						<input type="submit" name="submit" value="Reset" class="btn-signup">
						<a class="btn-signup" href="user.jsp">Back</a></div>
					</td>
				</tr>
			</table>
		</form>
	</div>	
</body>
</html>
<%@ include file="foot.jsp"%>