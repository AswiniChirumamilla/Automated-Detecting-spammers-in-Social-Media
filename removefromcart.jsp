<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

  try{      
        
			String p_name = request.getParameter("p_Name");
			String categorie = request.getParameter("p_Categorie");
		
			String user=(String)application.getAttribute("uname");
			
			Statement st=connection.createStatement();
			String strQuery = "delete from cart where (p_name='"+p_name+"' and categorie='"+categorie+"') and user='"+user+"'" ;
		 
			int k=st.executeUpdate(strQuery);
			if(k>0)
			{
				response.sendRedirect("U_MyCartProducts.jsp");
			
			}
		
		 
   
 
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

</body>
</html>
