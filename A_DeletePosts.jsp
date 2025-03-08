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
<title>Deleting Posts ..</title>
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
.style81 {
	font-weight: bold;
	font-size: 12px;
	color: #FF9900;
}
.style82 {font-size: 12px}
.style37 {font-size: 14px}
.style40 {color: #FF9900}
.style84 {color: #009900}
.style85 {font-size: 15px}
.style86 {color: #FF0000}
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
				
				<h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35">More Than Five Negative Comments Posts..</span></a></h2>
			    <div class="entry">
				 
				    <table width="809" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="42"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style84 style85"><strong>Si No. </strong></div></td>
                        <td  width="156" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style84 style85"><strong>Post  Image</strong></div></td>
                        <td  width="118" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style85"><strong>Post Name</strong></div></td>
                        <td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style85"><strong>Category</strong></div></td>
                        <td  width="199" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style85"><strong>Reason</strong></div></td>
                        <td  width="176" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
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
						int j=1;
						try 
						{
					
							String reason="More Than Five Users Posted Negative Comment On This Post.";
						   	String strQuery9 = "select distinct(p_name),categorie from negcomments";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(strQuery9);
					   		while ( rs.next() )
					   		{
										s1=rs.getString(1);
										s2=rs.getString(2);
							
										int i=0;
										ArrayList al=new ArrayList();
										String strQuery1 = "select distinct(user) from negcomments where p_name='"+s1+"' and categorie='"+s2+"'";
										Statement st1=connection.createStatement();
										ResultSet rs1=st1.executeQuery(strQuery1);
										while ( rs1.next() )
										{

											//i=+1;
											al.add(rs1.getString(1));
											//out.print(rs1.getString(1));
										}
											
									if(al.size()>5)
									{
										al.clear();
									%>
                      <tr>
                        <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style82 style40"><strong>
                            <%out.println(j);%>
                        </strong></div></td>
                        <td width="156" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <input  name="image" type="image" src="images.jsp?Name=<%=s1%>&amp;Categorie=<%=s2%>" style="width:130px; height:130px;" />
                        </strong></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                          <a href="S_PostDetails4.jsp?p_Name=<%=s1%>&amp;p_Categorie=<%=s2%>">
                          <%out.println(s1);%>
                          </a></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                          <%out.println(s2);%>
                        </div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(reason);%>

                        </div></td>
                        <td height="172" align="center"  valign="middle">
							<form id="form1" name="form1" method="post" action="deletepost.jsp">
							<input type="hidden" value="<%=s1%>" name="p_Name"/>
							<input type="hidden" value="<%=s2%>" name="p_Categorie"/>							
                          <input type="submit" name="Submit" value="Remove Post" />
                          </label>  
						  </form><br/>
						  <form id="form1" name="form1" method="post" action="-vecommentusers.jsp">
							<input type="hidden" value="<%=s1%>" name="p_Name"/>
							<input type="hidden" value="<%=s2%>" name="p_Categorie"/>							
                          <input type="submit" name="Submit" value="Negative Comments" />
                          </label>  
						  </form>
				    </td>
                      </tr>
                      <%
												j+=1;	
											}
											else
											{
												al.clear();
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
				    <p>&nbsp;</p>
		
					<div align="right"><a href="AdminMain.jsp" class="style11"><strong>Back</strong></a></div>
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
	<p class="style86">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
