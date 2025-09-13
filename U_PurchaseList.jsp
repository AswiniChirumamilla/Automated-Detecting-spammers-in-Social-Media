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
<title>User Purchased products..</title>
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
.style22 {font-size: 14px}
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style35 {font-size: 25px}
.style38 {color: #FF6600}
.style81 {	font-weight: bold;
	font-size: 12px;
	color: #FF9900;
}
.style83 {color: #FFFFFF}
.style84 {
	color: #FF0000;
	font-weight: bold;
}
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
				
			  <h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">User</span> <span class="style23"><%=(String)application.getAttribute("uname")%><span class="style30">'s </span></span><span class="style30">Purchased products..</span></span></span></a></h2>
			    <div class="entry">
			      <table width="730" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Si No. </strong></div></td>
                      <td  width="176" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Product Image</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Product Name</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Category</strong></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Price</strong></div></td>
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Date</strong></div></td>
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*"%>
                    <%@ page import="java.util.*" %>
                    <%@ page import="java.util.Date" %>
                    <%@ page import="com.oreilly.servlet.*"%>
                    <%@ page import ="java.text.SimpleDateFormat" %>
                    <%@ page import ="javax.crypto.Cipher" %>
                    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
                    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
						   	String query="select *  from purchase where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
						
									s2=rs.getString(4);
									s3=rs.getString(5);
									s4=rs.getString(7);
									s5=rs.getString(6);

									
										
												%>
                    <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style83"><strong>
                          <%out.println(j);%>
                      </strong></div></td>
                      <td width="176" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style83" style="margin:10px 13px 10px 13px;" ><strong>
                          <input  name="image" type="image" src="images.jsp?Name=<%=s2%>&amp;Categorie=<%=s3%>" style="width:150px; height:150px;" />
                      </strong></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s2);%>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s3);%>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s4);%>Rs/-
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <%
												j+=1;	
						
						
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
			      <div align="right"><strong><a href="UserMain.jsp">Back</a></strong></div>
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
	<p class="style84">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
