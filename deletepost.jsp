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
	String p_Name =  request.getParameter("p_Name");
	String p_Categorie=  request.getParameter("p_Categorie");
  	try
	{            
    	/*
		Statement st=connection.createStatement();
    	String strQuery = "select * from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'";
    	ResultSet rs = st.executeQuery(strQuery);
    	int k=0;
    	if(rs.next()==true)
		{*/
					Statement st12=connection.createStatement();
					String strQuery12 = "delete from posts where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st12.executeUpdate(strQuery12);
     	//} 
					Statement st3=connection.createStatement();
					String strQuery3 = "delete from allcomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st3.executeUpdate(strQuery3);
					
					Statement st2=connection.createStatement();
					String strQuery2 = "delete from negcomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st2.executeUpdate(strQuery2);
					
					Statement st4=connection.createStatement();
					String strQuery4 = "delete from poscomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st4.executeUpdate(strQuery4);
					
					/*Statement st5=connection.createStatement();
					String strQuery5 = "delete from postsearch where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st5.executeUpdate(strQuery5);*/
					
					Statement st6=connection.createStatement();
					String strQuery6 = "delete from purchase where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st6.executeUpdate(strQuery6);
					
				/*
				  if(k>0)
				  {*/
				  				  %><br/><p class="style46">Product Post Deleted Successfully..</p>
								  <p class="style17"><br/>
							      <a href="A_DeletePosts.jsp">Back</a></p>
									<%
								
				 // }
  	}
	
  	catch (Exception e)
	{
    	e.printStackTrace();
  	}
%>

</body>
</html>
