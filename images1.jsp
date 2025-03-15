<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post display page</title>
</head>
<body>
<%
	int i =  Integer.parseInt(request.getParameter("imgid"));
  	try{            
    	Statement st=connection.createStatement();
    	String strQuery = "select p_image from posts where id='"+i+"' ";
    	ResultSet rs = st.executeQuery(strQuery);
    	String imgLen="";
    	if(rs.next()){
      		imgLen = rs.getString(1);
     	}  
    	rs = st.executeQuery(strQuery);
    	if(rs.next()){
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	st.close();
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
		}
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>
