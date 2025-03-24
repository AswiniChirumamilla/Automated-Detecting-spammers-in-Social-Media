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
<title>User Registration..</title>
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
.style32 {
	font-size: 25px;
	font-weight: bold;
	color: #FF00FF;
}
.style14 {color: #FF00FF}
.style33 {color: #00CC00}
.style34 {
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
				
				<h2 class="title"><span class="style32">Welcome To User Registration</span></h2>
			    <div class="entry">
			      <form action="UserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
                    <label for="name"><span class="style33">User Name (required)</span></label>
                    <p class="style33">
                      <input id="name" name="userid" class="text" />
                    </p>
			        <span class="style33">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style33">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style33">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style33">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style33">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style33">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style33">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style33">
                      <textarea id="address" name="address" rows="3" cols="50"></textarea>
                    </p>
			        <span class="style33">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style33">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style33">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style33">
                      <select id="s1" name="gender" style="width:480px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>
			        <span class="style33">
			        <label for="pincode"></label>
			        <label for="location"></label>
                    </span>
			        <p class="style33">
                      <label for="pic">Select Profile Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="index.html" class="style11">Back</a></p>
		          </form>
		      </div>
			</div>
	  </div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
					<h2>Sidebar Menu</h2>
				      <p align="center"><a href="UserRegister.jsp">Home</a></p>
                      <p align="center"><a href="UserLogin.jsp">User Login </a></p>
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
	<p class="style34">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
