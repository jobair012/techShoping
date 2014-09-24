<%@ include file = "dbConnection.jsp" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Online Shopping</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"/>
	</head>

    <body>
    <%@ include file = "header.html" %>
    
	<% 
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String sql = "SELECT * FROM user  WHERE email = '"+email+"' AND password = '"+password+"'";
		
		ResultSet rs = stmnt.executeQuery(sql);
	
		if(rs.next())
		{		
			out.println("<h1>Successfully Logged In!!!</h1>");
		}

		else
		{
			out.println("Login Failed");
		}
	%>
	
	<%@ include file = "footer.html" %>
	</body>
</html>
