<%@ include file = "dbConnection.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Product Entry</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"/>
	</head>

    <body>
        <%@ include file = "header.html" %> 
               
        <div class = "container">
			<form action = "productEntrySubmitting.jsp" method = "post">
				<h1>
					Product Entry
					<span>Please fill all the texts in the fields </span>
				</h1>
				
				<label>
					<span>Brand: </span>				
					<select id = "dropDown" name = "brandName">
					<% 
						ResultSet rs = stmnt.executeQuery("SELECT * FROM brand");
						while(rs.next()) { %>
						<option>
							<%= rs.getString(2) %>
						</option>
					<% } %>
					</select>
				</label>
				
				<label>
					<span>Model: </span>
					<input id = "text" type="text" name="model" placeholder = "Enter the model number of product" />
				</label>
				
				<label>
					<span>Processor: </span>
					<input id = "text" type="text" name="processor" placeholder = "Enter the processor detail" />
				</label>
				
				<label>
					<span>RAM: </span>
					<input id = "text" type="text" name="ram" placeholder = "Enter the description of RAM" />
				</label>
				
				<label>
					<span>Cache Memory: </span>
					<input id = "text" type="text" name="cache" placeholder = "Enter the amount of cache memory" />
				</label>
				
				<label>
					<span>Battery: </span>
					<input id = "text" type="text" name="battery" placeholder = "Enter the detail of battery" />
				</label>
				
				<label>
					<span>Graphics: </span>
					<input id = "text" type="text" name="graphics" placeholder = "Enter the graphics detail" />
				</label>
				
				<label>
					<span>Description: </span>
					<input id = "text" type="text" name="description" placeholder = "Enter the product description shortly" />
				</label>
				
				<label>
					<span>Color: </span>
					<input id = "text" type="text" name="color" placeholder = "Available color" />
				</label>
				
				<label>
					<span>Price: </span>
					<input id = "text" type="text" name="price" placeholder = "Price of the porduct" />
				</label>
				
				<label>
					<span>Quantity: </span>
					<input id = "text" type="text" name="quantity" placeholder = "How many product having of this model" />
				</label> 
				
				<label>
					<span>Number Of Sell: </span>
					<input id = "text" type="text" name="noOfSell" placeholder = "How many product of this model has sold" />
				</label>
				
	 			<label>
	 				<span>Image: </span>
					<iframe src = "file.jsp">Some went wrong!!!</iframe>					
				</label>
				
				<label>
                    <span>&nbsp;</span>
        			<input class = "button" type = "submit" value = "Submit" /> 
               	</label>  
			</form>
		</div>
        
        <%@ include file = "footer.html" %>
    </body>
</html>