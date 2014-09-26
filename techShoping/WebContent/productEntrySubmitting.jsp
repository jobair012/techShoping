<%@ page import = "java.io.File"%>
<%@ page import = "org.apache.commons.fileupload.FileItem"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import = "org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%@ include file = "dbConnection.jsp" %>

<%
	String brandName = "", model = "", processor = "", ram = "", cacheMemory = "", battery = "", graphics = "", description = "", color = "", price = "", quantity = "", noOfSell = "";	

	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	
	if(isMultipart)
	{
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(new File("/home/jobair012/"));
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		List items = upload.parseRequest(request);
		Iterator itr = items.iterator();
		
		while(itr.hasNext())
		{
			FileItem item = (FileItem)itr.next();
			
			if(item.isFormField())
			{
				String name = item.getFieldName();
				String value = item.getString();
				
				if(name.equals("brandName"))	{	brandName = value;	}
				if(name.equals("model"))		{	model = value;		}
				if(name.equals("processor"))	{	processor = value;	}
				if(name.equals("ram"))			{	ram = value;		}
				if(name.equals("cacheMemory"))	{	cacheMemory = value;}
				if(name.equals("battery"))		{	battery = value;	}
				if(name.equals("graphics"))		{	graphics = value;	}
				if(name.equals("description"))	{	description = value;}
				if(name.equals("color"))		{	color = value;		}
				if(name.equals("price"))		{	price = value;		}
				if(name.equals("quantity"))		{	quantity = value;	}
				if(name.equals("noOfSell"))		{	noOfSell = value;	}
				
			}
			
			if(!item.isFormField())
			{
				String name = item.getFieldName();
				String fileName = item.getName();
		//		String path = item.
				out.println("</br>" +name+ ": " +fileName+ "</br>");
			}
		}
		
	}
	
	String sql = "INSERT INTO laptop (brand, model, processor, ram, cacheMemory, battery, graphics, price, quantity, noOfSell, description, color) VALUES ('"+brandName+"', '"+model+"', '"+processor+"', '"+ram+"', '"+cacheMemory+"', '"+battery+"', '"+graphics+"', '"+price+"', '"+quantity+"', '"+noOfSell+"', '"+description+"', '"+color+"')";
	stmnt.executeUpdate(sql);
%>