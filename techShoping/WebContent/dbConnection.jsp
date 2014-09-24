<%@ page import = "java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techShopping", "root", "cse-1133");
	Statement stmnt = conn.createStatement();
%>