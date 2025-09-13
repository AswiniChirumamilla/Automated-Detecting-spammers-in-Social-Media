<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Throughout 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100423

-->
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>All Friend Requests/Response..</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.slidertron-0.1.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
@import "slidertron.css";
.style1 {
	font-size: 23px;
	font-weight: bold;
	color: #00FF00;
}
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style22 {font-size: 14px}
.style12 {color: #0000FF}
.style35 {font-size: 25px}
.style54 {color: #009900}
.style56 {color: #FF0000}
.style33 {	font-size: 13px;
	color: #6666FF;
	font-weight: bold;
}
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style48 {font-size: 14px; color: #FFFFFF; }
.style49 {
	color: #990000;
	font-size: 13.5px;
}
.style50 {	color: #FF9900;
	font-size: 13.5px;
	font-weight: bold;
}
.style52 {font-size: 12px}
.style55 {font-size: 16px}
.style64 {color: #0099FF}
.style65 {
	color: #FF9900;
	font-size: 13.5px;
}
.style67 {color: #993300}
.style70 {font-size: 13.5px}
</style>
</head>
<body>
<!-- end #header-wrapper -->
<div class="style1" id="logo">
	Automated Detecting Spammers In Social Media</div>
<div id="header">
	<div id="menu">
		<ul>
			<li><a href="index.html" class="first">Home</a></li>
			<li class="current_page_item"><a href="UserLogin.jsp"> User </a></li>
			<li><a href="AdminLogin.jsp">Admin</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="search">
		<form method="get" action="">
			<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
			</fieldset>
		</form>
	</div>
	<!-- end #search -->
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a></div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/img04.jpg" width="726" height="335" alt="" /> <span>Brand-Related Microblogs..</span> </div>
					<div class="slide"><img src="images/img07.jpg" width="726" height="335" alt="" /> <span>Social-Smooth Multiview Embedding..</span> </div>
					<div class="slide"><img src="images/img08.jpg" width="726" height="335" alt="" /> <span>Social Media Platforms..</span> </div>
				</div>
			</div>
		</div>
		<div id="col3"><a href="#" class="next">&nbsp;</a></div>
	</div>
	<script type="text/javascript">

						$('#foobar').slidertron({
							viewerSelector:			'.viewer',
							reelSelector:			'.viewer .reel',
							slidesSelector:			'.viewer .reel .slide',
							navPreviousSelector:	'.previous',
							navNextSelector:		'.next',
							navFirstSelector:		'.first',
							navLastSelector:		'.last'
						});
						
					</script>
	<!-- end -->
</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style31 style46 style30">All Friend Requests/Response..</span></span></span></a></h2>
			    <div class="entry">
			      <table width="831" border="1" align="center">
                    <tr>
                      <td width="36" height="47" align="center" valign="middle"><div align="center" class="style33 style49"><span class="style3 style67">Id </span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Request From </span></strong></div></td>
                      <td width="138" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Requested User </span></strong></div></td>
                      <td width="102" align="center" valign="middle"><div align="center" class="style55 style34 style65"><strong><span class="style3 ">Request To </span></strong></div></td>
                      <td width="185" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style3 "> Request To Name </span></div></td>
                      <td width="96" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Status</span></strong></div></td>
                      <td width="128" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Date</span></strong></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><%=s2 %></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><%=s3 %></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s5%></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s4%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		          </table>
			      <p class="style22">&nbsp;</p>
			      <div align="right" class="style22"><a href="AdminMain.jsp" class="style11">Back</a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
		<!-- end #sidebar -->
<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style56">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
</body>
</html>
