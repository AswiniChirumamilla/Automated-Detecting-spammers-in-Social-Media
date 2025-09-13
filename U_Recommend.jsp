<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
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
<title>Recommend on Post..</title>
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
.style86 {color: #FF00FF}
.style57 {font-size: 21px}
.style88 {color: #00FF00}
.style8 {
	color: #999999;
	font-weight: bold;
}
.style90 {color: #33FF00}
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
			
				<h2 class="title"><a href="#"><span class="style57 style86">Recommend on Post <span class="style88"><%=request.getParameter("p_Name")%></span></span></a></h2>
		        <div class="entry"><span class="content_panel_3col_section margin_right_60">
		        <%
		try{
					 String p_Name = request.getParameter("p_Name");
					 String p_Categorie = request.getParameter("p_Categorie");%>
				</span>
				  <form action="U_Recommend1.jsp" method="post" id="form1">
		          <table width="428" border="0">
                    <tr>
                      <td width="188" height="35"><div align="center" class="style14 style90"><strong>Post Name </strong></div></td>
                      <td width="230"><label>
                        <input type="text" name="p_Name" value="<%=p_Name%>" readonly="readonly" />
                      </label></td>
                    </tr>
                    <tr>
				    <tr>
                      <td width="188" height="35"><div align="center" class="style14 style90"><strong>Post Name </strong></div></td>
                      <td width="230"><label>
                        <input type="text" name="p_Categorie" value="<%=p_Categorie%>" readonly="readonly" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="44"><div align="center" class="style8 style14 style90">Recommend To </div></td>
                      <td><select name="recommendto" >
                          <option>Select Friend</option>
                          <%


	int uid=0;
	String uuu=null,site=null,us=null;
	String uname1 = (String)application.getAttribute("uname");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select username from user where username!='"+uname1+"'";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		//uid = rs1.getInt(1);
		String username = rs1.getString(1);
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname1+"' and  requestto='"+username+"') ||(requestto='"+uname1+"' and requestfrom ='"+username+"'))and status ='Accepted' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		if(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			
			}
			else
			{
				uuu = rs2.getString(1);
				
			}
%>
                          <option> <%=uuu%></option>
                          <%
		}
	}
%>
                      </select></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="hidden" value="<%=us%>" name="rectosite"/>
                        <input type="submit" name="Submit" value="Recommend" />
			      </form>
                        <%



}

catch(Exception e)
{
out.println(e.getMessage());
}
%>
                      </label></td>
                    </tr>
                  </table>
		          <p>&nbsp;</p>
		          <div align="right"><a href="SearchPosts.jsp" class="style11"></a><a href="SearchPosts.jsp" class="style11"><strong>Back</strong></a></div>
		  </div></div>
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
