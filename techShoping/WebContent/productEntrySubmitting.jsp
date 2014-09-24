<%@ include file = "dbConnection.jsp" %>
<%@page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 

<%  
	String brand = request.getParameter("brandName");
	String model = request.getParameter("model");
	String processor = request.getParameter("processor");
	String ram = request.getParameter("ram");
	String cacheMemory = request.getParameter("cache");
	String battery = request.getParameter("battery");
	String graphics = request.getParameter("graphics");
	String description = request.getParameter("description");
	String color = request.getParameter("color");
	double price = Double.parseDouble(request.getParameter("price"));
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	int noOfSell = Integer.parseInt(request.getParameter("noOfSell"));


	out.println(brand);
	out.println(model);
	out.println(processor);
	out.println(ram);
	out.println(cacheMemory);
	out.println(battery);
	out.println(graphics);
	out.println(description);
	out.println(color);
	out.println(price);
	out.println(quantity);


	

	out.println();
//	stmnt.executeUpdate("INSERT INTO laptop (brand, model, processor, ram, cacheMemory, battery, graphics, description, color, price, quantity, noOfSell, imageUrl) VALUES ('"+brand+"', '"+model+"', '"+processor+"', '"+ram+"', '"+cacheMemory+"', '"+battery+"', '"+graphics+"', '"+description+"', '"+color+"', '"+price+"', '"+quantity+"', '"+noOfSell+"', '"+filename+"')");
//	String sql = "INSERT INTO laptop (brand, model, processor, ram, cacheMemory, battery, graphics, description, color, price, quantity, noOfSell) VALUES ('"+brand+"', '"+model+"', '"+processor+"', '"+ram+"', '"+cacheMemory+"', '"+battery+"', '"+graphics+"', '"+description+"', '"+color+"', '"+price+"' '"+quantity+"', '"+noOfSell+"')";
	
	String sql = "INSERT INTO laptop (brand, model, processor, ram, cacheMemory, battery, graphics, price, quantity, noOfSell, description, color) VALUES ('"+brand+"', '"+model+"', '"+processor+"', '"+ram+"', '"+cacheMemory+"', '"+battery+"', '"+graphics+"', '"+price+"', '"+quantity+"', '"+noOfSell+"', '"+description+"', '"+color+"');";
	
	stmnt.executeUpdate(sql);
	
	
//	out.println(filename);

	
	
	
	out.println("Congratualution!!! Your entry is successfully shifted to database");
%>