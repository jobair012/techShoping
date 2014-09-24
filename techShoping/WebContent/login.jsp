<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"/>
	</head>

    <body>
        <%@ include file = "header.html" %>  
              
       	<div class = "container">
			<form action = "profile.jsp" method = "post">
				<h1>
					Login Form
					<span>Please fill all the texts in the fields </span>
				</h1>
								
				<label>
					<span>Your Email: </span>
					<input id = "text" type = "text" name = "email" required = "required" placeholder = "Your Email Address"/>
				</label>
				
				<label>
					<span>Password: </span>
					<input id = "text" type = "password" name = "password" required = "required" placeholder = "Your Password"/>
				</label>
				<label>
        			<span>&nbsp;</span>
                                </label>
				<label>
        			<input class = "button" type = "submit" value = "Login" /> 
                                Don't have an account? <a href = "signup.jsp">Sign Up</a> 
                                </label>  
			</form>
		</div>
        
        <%@ include file = "footer.html" %>
    </body>
</html>
