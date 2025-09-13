<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="connect.jsp" %>

<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html>
<title>Product Recommendation</title>
<head></head>
<body>
	<center>&nbsp;</center>
	
	<%
	//String msg=null;
		try {
  			
				String recommendto = request.getParameter("recommendto");
				
				String p_Name = request.getParameter("p_Name");
				String p_Categorie = request.getParameter("p_Categorie");

	
				String uname = (String)application.getAttribute("uname");

				if(recommendto.equals("Select Friend"))
				{
						out.println("Please select your Friend...");
						%><br/><br/><a href="U_Recommend.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
				}
				
			
				else
				{
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select * from postrecommend where ((recommendto ='"+recommendto+"' and recommendfrom ='"+uname+"') ||(recommendto ='"+uname+"' and recommendfrom ='"+recommendto+"')) and (p_name='"+p_Name+"' and categorie='"+p_Categorie+"')";
								ResultSet rs1 = stmt1.executeQuery(strQuery1);
								if(rs1.next())
								{
										
										out.println("Already Recommended this Post !!");
										%><br/><br/><a href="SearchPostsDetails.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
						
								}
								else
								{
											SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
											
											Date now = new Date();
											
											String strDate = sdfDate.format(now);
											String strTime = sdfTime.format(now);
											String dt = strDate + "   " + strTime;
										
										
									
										//out.println("hi");
										Statement st1 = connection.createStatement();
										String query1 ="insert into postrecommend(recommendfrom,recommendto,p_name,categorie,dt) values('"+uname+"','"+recommendto+"','"+p_Name+"','"+p_Categorie+"','"+dt+"')";
										st1.executeUpdate(query1);
										
										
										//Retrieving Old Rank
										/*Statement stmt3=connection.createStatement();
										String strQuery3 = "select rank from products where p_name='"+p_Name+"'";
										ResultSet rs3 = stmt3.executeQuery(strQuery3);
										if(rs3.next())
										{
											int rank=rs3.getInt(1);
											
														//Rank Increase	
														if(((brand.equals("good"))&& (quality.equals("high"))) && (price.equals("cheap")))
														{		
																	int ranks=rank+2;
																	Statement st9 = connection.createStatement();
																	String query9 ="update products set rank='"+ranks+"' where  p_name='"+p_Name+"'";
																	st9.executeUpdate(query9);
														}
														else
														{
																	int ranks1=rank+1;
																	Statement st9 = connection.createStatement();
																	String query9 ="update products set rank='"+ranks1+"' where  p_name='"+p_Name+"'";
																	st9.executeUpdate(query9);
														}
																	
										}*/
										out.println("Post Successfully Recommended..");
										%><br/><br/><a href="SearchPostsDetails.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
								}						connection.close();
							}
							
		//request.setAttribute("msg",msg);
		}
      	catch(Exception e)
     	{
		out.println(e);
   		}
	
   		//response.sendRedirect("recommendlistofimages.jsp");  
	%>
		
                
</body>
</html>
