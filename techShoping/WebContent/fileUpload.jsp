<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.UUID"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%
	MultipartRequest m = new MultipartRequest(request, "/home/jobair012/Development/Project/eclipse j2ee project/techShoping/WebContent/image/laptop");  
	String fileName = m.getFilesystemName("fileName");
	String abc = m.getOriginalFileName("fileName");
	Enumeration def = m.getParameterNames();
	
	while(def.hasMoreElements())
	{
		out.println(def);
	}
	
	String key = UUID.randomUUID().toString();
	out.println(key);
%>