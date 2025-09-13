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
<title>User Search History..</title>
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
.style30 {color: #FF00FF}
.style12 {color: #0000FF}
.style35 {font-size: 25px}
.style49 {color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style4 {font-size: 14px}
.style75 {	color: #00CC00;
	font-weight: bold;
}
.style76 {color: #FF0000; font-weight: bold; }
.style72 {font-family: Arial, Helvetica, sans-serif}
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">Search Friends.. </span></span><span class="style30"></span></span></a></h2>
			    <div class="entry">
			      <form id="form1" method="post" action="SearchFriends.jsp">
                    <table width="392" border="0" align="center" cellpadding="2" cellspacing="2">
                      <tr>
                        <td width="145"><span class="style49">Enter Friend Name:</span></td>
                        <td width="214"><input type="text" name="keyword" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                      </tr>
                    </table>
			        <p align="center">&nbsp;</p>
			        <p align="center"><a href="UserMain.jsp" class="style75">Back</a></p>
		          </form>
		      </div>
			</div>
			<div class="post">
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">Results Found.. </span></span><span class="style30"></span></span></a></h2>
				<div class="entry"><span class="news_content">
				  <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(username,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3); 	   
								
							
											String query="select * from user where username!='"+user+"' and username  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(9);
												
										
										
										
			  %>
				</span>
					<table border="3" width="518" style="margin:5px 10px 10px 5px;">
                      <tr>
                        <td rowspan="7" width="148" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />                        </td>
                        <td width="118" height="27" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>User Name :</strong></span></div></td>
                        <td width="249" style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s1%></div></td>
                      </tr>
                      <tr>
                        <td height="25" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>E-Mail :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s2%></div></td>
                      </tr>
                      <tr>
                        <td height="30" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>Mobile :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s3%></div></td>
                      </tr>
                      <tr>
                        <td height="22" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>Address :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s4%></div></td>
                      </tr>
                      <tr>
                        <td height="26" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>DOB :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s5%></div></td>
                      </tr>
                      <tr>
                        <td height="24" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>Gender :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s6%></div></td>
                      </tr>
                      
                      <tr>
                        <td height="46" align="left"><div align="left" class="style30"><span class="style4" style="margin-left:20px;"><strong>Status :</strong></span></div></td>
                        <td style="margin-left:20px; color:#000000;"><p align="left" class="style76"><%=s7%><span style="float:right"><a href="updaterequest.jsp?rname=<%=s1%>&amp;site=<%=s8%>">
                            <input class="art-button" name="button2" type="button" value="Request" />
                        </a></span></p></td>
                      </tr>
                    </table>
					<p><span class="style72">
					  <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
					</span></p>
				</div>
				<div><a href="#" class="links">View Details</a></div>
		  </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
					<h2>Sidebar Menu</h2>
				      <p align="center"><a href="SearchFriends.jsp">Home</a></p>
                      <p align="center"><a href="index.html">Log Out</a></p>
                      <p align="center">&nbsp;</p>
                  <li><h2>&nbsp;</h2>
			  </li>
			</ul>
		    <ul>
		      <li></li>
	      </ul>
      </div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style76">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
