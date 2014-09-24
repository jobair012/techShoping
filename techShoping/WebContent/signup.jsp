<%@ include file = "dbConnection.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Signup</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"/>
	</head>

    <body>
        <%@ include file = "header.html" %> 
               
        <div class = "container">
			<form action = "register.jsp" method = "post">
				<h1>
					Registration Form
					<span>Please fill all the texts in the fields </span>
				</h1>
				
				<label>
					<span>Your Name: </span>
					<input id = "text" type="text" name="name" placeholder = "Your Full Name" />
				</label>
				
				<label>
					<span>Your Email: </span>
					<input id = "text" type = "text" name = "email" required = "required" placeholder = "Your Email Address"/>
				</label>
				
				<label>
					<span>Password: </span>
					<input id = "text" type = "password" name = "password" required = "required" placeholder = "Your Password"/>
				</label>
				
				<label>
					<span>Retype Password: </span>
					<input id = "text" type = "password" name = "repassword" required = "required" placeholder = "Your Password"/>
				</label>
				
				<label>
					<span>City: </span>				
					<select id = "dropDown" name = "city">
					<% 
						ResultSet rs = stmnt.executeQuery("SELECT * FROM city");
						while(rs.next()) { %>
						<option>
							<%= rs.getString(2) %>
						</option>
					<% } %>
					</select>
				</label>
                            
                <label id = "checkbox_magrin">
                    <span>&nbsp;</span> 
                    <input type ="checkbox" required="required"/>I agree to the terms of service and privacy policy
                </label>  

				<label>
                    <span>&nbsp;</span>
        			<input class = "button" type = "submit" value = "Sign Up" /> 
                    Already registered? <a href = "login.jsp">login</a>
                </label>  
			</form>
		</div>
        
        <%@ include file = "footer.html" %>
    </body>
</html>