<%@ include file = "dbConnection.jsp" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Online Shopping</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"/>
	</head>

    <body>
        <%@ include file = "header.html" %>  
           
        <img id="pixx" src="image/one.png"/>
       
        <div class = "homeContent">
        	<div class = "first">
        		<%
        			String sql1 = "SELECT * FROM laptop lap1 WHERE (1) = (SELECT COUNT(DISTINCT (lap2.noOfSell)) FROM laptop lap2 WHERE lap2.noOfSell >= lap1.noOfSell)";
            		ResultSet rs1 = stmnt.executeQuery(sql1);

        			while(rs1.next()) { %>
        				<img id = "pix" src = "<%= rs1.getString(14) %>">
            			<%= rs1.getString(2) %>
        				<%= rs1.getString(3) %> <br/>
        				<%= rs1.getString(4) %> <br/>
        				RAM: <%= rs1.getString(5) %> <br/>
        				Graphics: <%= rs1.getString(8) %> <br/>
        				
                <%	break; } %>
        	</div>
        	
        	<div class = "second">
        		<%
        			String sql2 = "SELECT * FROM laptop lap1 WHERE (2) = (SELECT COUNT(DISTINCT (lap2.noOfSell)) FROM laptop lap2 WHERE lap2.noOfSell >= lap1.noOfSell)";
            		ResultSet rs2 = stmnt.executeQuery(sql2);

        			while(rs2.next()) { %>
        				<img id = "pix" src = "<%= rs2.getString(14) %>">
            			<%= rs2.getString(2) %>
        				<%= rs2.getString(3) %> <br/>
        				<%= rs2.getString(4) %> <br/>
        				RAM: <%= rs2.getString(5) %> <br/>
        				Graphics: <%= rs2.getString(8) %> <br/>
        				
                <%	break; } %>
        		
        	</div>
        	
        	<div class = "third">
        	<%
        			String sql3 = "SELECT * FROM laptop lap1 WHERE (3) = (SELECT COUNT(DISTINCT (lap2.noOfSell)) FROM laptop lap2 WHERE lap2.noOfSell >= lap1.noOfSell)";
            		ResultSet rs3 = stmnt.executeQuery(sql3);

        			while(rs3.next()) { %>
        				<img id = "pix" src = "<%= rs3.getString(14) %>">
            			<%= rs3.getString(2) %>
        				<%= rs3.getString(3) %> <br/>
        				<%= rs3.getString(4) %> <br/>
        				RAM: <%= rs3.getString(5) %> <br/>
        				Graphics: <%= rs3.getString(8) %> <br/>
        				
                <%	break; } %>
        	
        	</div>
        	<div class = "fourth">
        	<%
        			String sql4 = "SELECT * FROM laptop lap1 WHERE (4) = (SELECT COUNT(DISTINCT (lap2.noOfSell)) FROM laptop lap2 WHERE lap2.noOfSell >= lap1.noOfSell)";
            		ResultSet rs4 = stmnt.executeQuery(sql1);

        			while(rs4.next()) { %>
        				<img id = "pix" src = "<%= rs4.getString(14) %>">
            			<%= rs4.getString(2) %>
        				<%= rs4.getString(3) %> <br/>
        				<%= rs4.getString(4) %> <br/>
        				RAM: <%= rs4.getString(5) %> <br/>
        				Graphics: <%= rs4.getString(8) %> <br/>
        				
                <%	break; } %>

        	</div> 
      	</div>
      	 
        <%@ include file = "footer.html" %>
    </body>
</html>
