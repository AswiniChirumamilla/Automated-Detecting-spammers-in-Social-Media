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
<title>Adding Posts..</title>
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
.style35 {font-size: 25px}
.style36 {font-size: 25px; color: #FF00FF; }
.style8 {font-size: 16px}
.style38 {font-size: 15px; color: #00CC00;}
.style39 {color: #FF0000}
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
				
				<h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35">Adding Posts..</span></a></h2>
			    <div class="entry">
			      <form action="A_AddPosts1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			        <%@page import ="java.util.*"%>
                    <%@ include file="connect.jsp" %>
                    <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select category FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
		
	   }
	   
		
		
%>

                    <table width="433" border="0" align="center">
                      <tr>
                        <td width="149" height="33"><div align="justify"><span class="style3 style8 style38">Select  Category </span></div></td>
                        <td width="274"><label>
                          <select id="s1" name="categorie">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36"><div align="justify"><span class="style3 style8 style38"> Post Name </span> </div></td>
                        <td><label>
                          <input type="text" id="t1" name="name" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Price </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="price" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="53"><div align="justify"><span class="style3 style8 style38">Uses</span></div></td>
                        <td><label>
                          <textarea name="uses" cols="40" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="51"><div align="justify"><span class="style3 style8 style38"> Description </span></div></td>
                        <td><label>
                          <textarea name="desc" cols="40" rows="5" id="t2"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="38"><div align="justify"><span class="style3 style8 style38"> Select Image </span></div></td>
                        <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Post" />
                          </div></td>
                      </tr>
                    </table>
		            <p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            </p>
</form>
			      <p>&nbsp;</p>
		
					<div align="right"><a href="AdminMain.jsp" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
	  <div id="sidebar">
		  <ul>
				
				  <h2>Sidebar Menu</h2>
			        <p align="center"><a href="A_AddPosts.jsp">Home</a></p>
                    <p align="center"><a href="index.html">Log Out </a></p>
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
	<p class="style39">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
