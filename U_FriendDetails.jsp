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
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Friend Profile..</title>
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
.style26 {color: #3366FF}
.style9 {color: #FF0000; font-weight: bold; }
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style35 {font-size: 25px}
.style36 {color: #00CCFF}
.style38 {color: #FF6600}
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">Friend</span> <span class="style23"><%=request.getParameter("friendname")%><span class="style30">'s</span></span> <span class="style30">Profile</span></span><span class="style30">..</span></span></a></h2>
			    <div class="entry">
			      <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                    <%@ include file="connect.jsp" %>
                    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                    <%
						
						String user=request.getParameter("friendname");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
                    <tr>
                      <td width="230" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
                      </a></strong></div></td>
                    </tr>
                    <tr>
                      <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
                      <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td  width="164" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Address</strong></div></td>
                      <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
                      <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
                      <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                            <%out.println(s4);%>
                        </div></td>
                    </tr>
                    <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                  </table>
			      <p>&nbsp;</p>
			      <div align="right"><a href="U_MyFriends.jsp" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
					<h2>Sidebar Menu</h2>
				      <p align="center"><a href="#">Home</a></p>
                      <p align="center"><a href="index.html">Log Out</a></p>
                      <p align="center">&nbsp;</p>
                  <li><h2>&nbsp;</h2>
			  </li>
			</ul>
		    <ul><li></li>
	      </ul>
      </div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style9">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
