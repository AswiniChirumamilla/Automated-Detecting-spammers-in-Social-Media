<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Throughout 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100423

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Friend Requests..</title>
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
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style35 {font-size: 25px}
.style36 {color: #FF00FF; font-size: 25px; }
.style42 {color: #66CCFF; font-weight: bold; }
.style7 {color: #FFFFFF}
.style44 {
	color: #FF0000;
	font-weight: bold;
}
.style45 {color: #00CC00}
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">friend requests To</span> <span class="style23"><%=(String)application.getAttribute("uname")%></span></span><span class="style36">..</span></span></a></h2>
			    <div class="entry">
			
                    <table width="554" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="132" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Username</div></td>
                        <td  width="119" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Mobile</div></td>
                        <td  width="117" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Address</div></td>
                        <td  width="74" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Gender</div></td>
                        <td  width="78" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Status</div></td>
                      </tr>
                      <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
										
											
						
					%>
                      <tr>
                        <td  width="132" height="54" align="center" valign="middle" class="style7" style="color:#FFFFFF;">&nbsp;&nbsp;
                              <%out.println(s1);%>                        </td>
                        <td  width="119" height="54" align="center" valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s3);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s4);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s5);%>                        </td>
                        <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="78" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>" class="style44">waiting</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="16" height="54"align="center" valign="middle" class="style7" style="color:#000000;">
                          <span class="style45">
                          <%out.println(status);%>
                          </span>&nbsp;</td>
                        <%
						}
						%>
                      </tr>
                      <%
						}
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
                    </table>
		   
			      <p>&nbsp;</p>
			      <div align="right"><a href="UserMain.jsp" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
					<h2>Sidebar Menu</h2>
				      <p align="center"><a href="ViewRequest.jsp">Home</a></p>
                      <p align="center"><a href="index.html">Log Out</a></p>
                      <p align="center">&nbsp;</p>
                  <li><h2>&nbsp;</h2>
			  </li>
			</ul>
      </div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style44">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
