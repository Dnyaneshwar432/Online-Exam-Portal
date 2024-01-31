<!DOCTYPE html>
<html>

<head>
<title>Student Login</title>
<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<div class="main">
		<input type="checkbox" id="chk" aria-hidden="true">

		<div class="signup">
			<form action="Reg" method="post">
				<label for="chk" aria-hidden="true">Sign up</label> <input
					type="text" name="name" placeholder="User name" required="">
				<input type="email" name="email" placeholder="Email" required="">
				<input type="password" name="pass" placeholder="Password"
					required="">
				<button>Sign up</button>
				<button class="Back">
					<a href="index.jsp">Back</a>
				</button>
			</form>
		</div>

		<div class="login">
			<form action="Login" method="post">
				<label for="chk" aria-hidden="true">Login</label> <input
					type="email" name="email" placeholder="Email" required="">
				<input type="password" name="pass" placeholder="Password"
					required="">
				<button>Login</button>
				<button class="Back">
					<a href="index.jsp">Back</a>
				</button>
			</form>
		</div>
	</div>
</body>

</html>

</body>

</html>