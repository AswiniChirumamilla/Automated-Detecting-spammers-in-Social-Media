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
<title>Account Creation Status..</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style48 {	color: #FF0000;
	font-weight: bold;
}
.style49 {color: #00FF00}
.style50 {color: #00FF00; font-weight: bold; }
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">Adding Money To Account..</span></span></span></a></h2>
		        <div class="entry">
		          <div>
                    <%
		  	String user=(String)application.getAttribute("uname");
			String account="";
		    String sql="SELECT account_no FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					account=rs.getString(1);
					
			}
		  
		  
		  
		  %>
                    <form action="addmoneyAuthentication.jsp" method="post" >
                      <span class="style48">
                      <label for="name"><span class="style49">Account Number(required)</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="accno" value="<%=account%>" readonly/>
                      </p>
                      <span class="style50">
                      <label for="amount">Amount (required)</label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="amount" class="text" />
                      </p>
                      <span class="style50">
                      <label for="email"></label>
                      </span>
                      <p class="style48"><br />
                          <input name="submit" type="submit" value="Add Money" />
                      </p>
                      <p align="left"><a href="useraccount.jsp" class="style10">Back</a></p>
                    </form>
	              </div>
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
	<p class="style48">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
