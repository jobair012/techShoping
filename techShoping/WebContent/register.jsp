<%@ include file = "dbConnection.jsp" %>

<% 
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String city = request.getParameter("city");

	String sql = "INSERT INTO user (name, email, password, city) VALUES ('"+name+"', '"+email+"', '"+password+"', '"+city+"')";	
	
	stmnt.executeUpdate(sql);
	
	out.println("Congratualution you have successfully registered on our server");
%>