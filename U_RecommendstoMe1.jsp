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
<title>Recommended Post Details..</title>
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
.style22 {font-size: 14px}
.style35 {font-size: 25px}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style70 {	color: #FF6600;
	font-weight: bold;
}
.style73 {color: #FF6600}
.style83 {color: #009900}
.style84 {
	color: #3399FF;
	font-weight: bold;
}
.style85 {color: #3399FF; }
.style86 {color: #FF00FF}
.style88 {color: #FFFFFF}
.style89 {font-family: "Courier New", Courier, monospace}
.style90 {font-size: 13px}
.style91 {
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
			
				<h2 class="title"><a href="#"><span class="style83 style35">Recommended  Post  <span class="style86"><%=request.getParameter("p_Name")%></span> Details.. </span></a></h2>
		      <div class="entry">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
					String username=request.getParameter("username");
			
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Categorie=request.getParameter("p_Categorie");
					
					
					String uname = (String)application.getAttribute("uname");
			
					String str1="select * from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(5);
						String description = rs1.getString(6);
						String price = rs1.getString(4);
						String date = rs1.getString(8);
							
							/*SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%>
			      <table width="581" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="4" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:160px; height:250px;" />
                          </a> </div>
                      </div></td>
                      <td width="97" height="47" ><div align="center" class="style70 style73"><span class="style70">Category </span></div></td>
                      <td width="290"><div align="center" class="style84"><%= p_Categorie%></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style70"> Price </div></td>
                      <td><div align="center" class="style84"><%= price%> Rs/-</div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style70"> Description </div></td>
                      <td><div align="center" class="style85"></div>
                      
                        
                              <div align="center"><span class="style85">
                              <textarea name="textarea" cols="40" rows="8"><%= description%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="56" ><div align="center" class="style70">Date</div></td>
                      <td><div align="center" class="style85"><strong><%= date%></strong></div></td>
                    </tr>
                    
					 <%
						int a=0;
						String str2="select * from allcomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							Statement stmt3=connection.createStatement();
							String strQuery3 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname+"' and requestto='"+c_user+"') ||(requestfrom ='"+c_user+"' and requestto='"+uname+"'))and status ='Accepted' ";
							ResultSet rs3 = stmt3.executeQuery(strQuery3);
							if(rs3.next()==true)
							{
								if(a==0){
					%>
					 <tr>
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style90" style="margin-left:20px;">
                           <div align="center">Reviewed By</div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style90" style="margin-left:20px;">
                           <div align="center">Date</div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style90" style="margin-left:20px;">
                           <div align="center">Reviewed  Details</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_date%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_comment%></strong></div></td>
			        </tr>
					<%}}%>
	            </table>
			      <p>&nbsp;</p>
			    
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="right"><a href="U_RecommendsToMe12.jsp?username=<%=username%>" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
			<div class="post">
				
				<h2 class="title"><a href="#"></a></h2>
				<div><a href="#" class="links">View Details</a></div>
		  </div>
		</div>
		<!-- end #content -->
	  <div id="sidebar">
		  <ul>
				
				  <h2>Sidebar Menu</h2>
			        <p align="center"><a href="#">Home</a></p>
                    <p align="center"><a href="index.html">Log Out</a></p>
                    <p align="center">&nbsp;</p>
                <li><h2>
                    <!-- end #sidebar -->
		</h2>
		    </li>
		  </ul>
      </div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style91">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
