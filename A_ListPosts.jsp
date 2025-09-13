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
<title>Searched Post Details..</title>
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
.style35 {
	font-size: 25px;
	color: #FF00FF;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style6 {color: #f69722}
.style89 {font-size: 13px}
.style91 {color: #FFFFFF}
.style92 {
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
			
				<h2 class="title"><a href="#"></a><a href="#" class="style35"><span class="style36 style35">List Of Posts</span></a><a href="#" class="style35"><span class="style36 style35">..</span></a></h2>
		        <div class="entry">
<table width="574" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
  <tr>
    <td  width="46" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Si No.</strong></div></td>
    <td  width="132" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Post Image</strong></div></td>
    <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Post Name</strong></div></td>
    <td  width="108" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Categorie</strong></div></td>
    <td  width="130" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
  </tr>
  <%@ include file="connect.jsp" %>
  <%@ page import="java.sql.*,java.io.*,java.util.*" %>
  <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1,j=0;
						try 
						{
						   	String query="select * from posts"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							
								
								
								
								
							
						
					%>
  <tr>
    <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
        <div align="center" class="style5 style89 style91">
          <%out.println(i);%>
        </div></td>
    <td width="132" rowspan="1" ><div class="style5 style89 style91" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
      <input  name="image" type="image" src="images1.jsp?imgid=<%=j%>" style="width:120px; height:120px;" />
    </a> </div></td>
    <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
        <div align="center" class="style5 style89 style91">  
          <%out.println(s1);%>
          </div></td>
		   <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
        <div align="center" class="style5 style89 style91">
          <%out.println(s2);%>
        </div></td>
    <td  valign="baseline" height="0"><p class="style91 style5 style89">&nbsp;</p>
       
         
          <form id="form1" method="post" action="S_PostDetails2.jsp">
          
			    <div align="center">
			      <input type="hidden" value=<%=s1%> name="p_Name"/>
			      <input type="hidden" value=<%=s2%> name="p_Categorie"/>
			      <input type="submit" name="Submit" value="View Details" />
			      
		          </div>
          </form>
       </td>
    </tr>
  <%
					i=i+1;
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
				   <div align="right"><a href="SearchPosts.jsp" class="style11"></a><a href="AdminMain.jsp" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
	  <div id="sidebar">
		  <ul>
				
				  <h2>Sidebar Menu</h2>
			        <p align="center"><a href="A_ListPosts.jsp">Home</a></p>
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
	<p class="style92">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
