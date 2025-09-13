<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%


   
    try
	{
			int amount1 =0,amount2 =10,pprice=0,uamount=0,sub=0;
  			String s1,s2,s3,s4;
			
			String p_Name=request.getParameter("p_Name");
	
			String p_Categorie=request.getParameter("p_Categorie");			
		
			String user=(String)application.getAttribute("uname");
		
String credit="";
			
			String sql="SELECT account_no,amount FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
								credit=rs.getString(1);
								uamount=Integer.parseInt(rs.getString(2));				
																
								String sql1="SELECT * FROM posts where (p_name='"+p_Name+"' and categorie='"+p_Categorie+"')";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt.executeQuery(sql1);
								if(rs1.next()==true)
								{
										pprice=Integer.parseInt(rs1.getString(4));
										if(pprice>uamount)
										{
											 %><br/><%
											out.println("Insufficiant Amount");
											 %><br/><br/><a href="U_MyCartProducts.jsp">Back</a><%
										}
										else
										{
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												String sql2="Update account set amount='"+leftamount+"'  where user='"+user+"' and account_no='"+credit+"'";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
												//ResultSet rs2=
												//if(rs2.next()==true)
									//{
											   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
														PreparedStatement ps1=connection.prepareStatement("insert into purchase(account_no,user,p_name,categorie,date,price) values(?,?,?,?,?,?)");
														ps1.setString(1,credit);
														ps1.setString(2,user);
														ps1.setString(3,p_Name);
														ps1.setString(4,p_Categorie);
														ps1.setInt(6,pprice);	
														ps1.setString(5,date);
														
														
														int k=ps1.executeUpdate();
														if(k>0)
														{
															
															Statement st12=connection.createStatement();
															String strQuery12 = "delete from cart where (p_name='"+p_Name+"'  and categorie='"+p_Categorie+"') and user='"+user+"' ";
															st12.executeUpdate(strQuery12);
																									
															%><br/><%
															out.println("Purchase Successfull..");
															%><br/><br/><a href="U_MyCartProducts.jsp">Back</a><%

														}																
											}
								
									}
									else
									{
									
											%><br/><%
											out.print("Product Details Not Found..");
											 %><br/><br/><a href="U_MyCartProducts.jsp">Back</a><%
									
									}
					}
					
					else
					{	 
						%><br/><%
						out.print("Account Not Found..");
						 %><br/><br/><a href="U_MyCartProducts.jsp">Back</a><%
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		
