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
<title>Admin Main Page..</title>
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
.style2 {
	font-size: 26px;
	color: #FF00FF;
}
.style4 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
</style>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Slashdot's Menu</title>
	<link rel="stylesheet" type="text/css" href="sdmenu/sdmenu.css" />
	<script type="text/javascript" src="sdmenu/sdmenu.js">
		
	</script>
	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
	</script>

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
				
				<h2 class="title"><a href="#"><span class="style2">Welcome To Admin Main..</span></a></h2>
				<div class="entry">
					<p align="justify">Nowadays, a big part of people rely on available content in social media in their decisions (e.g. reviews and feedback on a topic or product). The possibility that anybody can leave a review provide a golden opportunity for spammers to write spam reviews about products and services for different interests. Identifying these spammers and the spam content is a hot topic of research and although a considerable number of studies have been done recently toward this end, but so far the methodologies put forth still barely detect spam reviews, and none of them show the importance of each extracted feature type. In this study, we propose a novel framework, named NetSpam, which utilizes spam features for modeling review datasets as heterogeneous information networks to map spam detection procedure into a classification problem in such networks. Using the importance of spam features help us to obtain better results in terms of different metrics experimented on real-world review datasets from Yelp and Amazon websites. The results show that NetSpam outperforms the existing methods and among four categories of features; including review-behavioral, user-behavioral, reviewlinguistic, user-linguistic, the first type of features performs better than the other categories.</p>
			  </div>
		  </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				
					<h2>Admin Menu</h2>
					
					
					<div style="float: left" id="my_menu" class="sdmenu">
      <div>
        <span>Users Details</span>
        <a href="A_AuthorizeUsers.jsp"><strong>View Users and Authorize</strong></a>
         <a href="A_FRR.jsp">View Friend Request and Response</a>
		 <a href="A_SpamUsers.jsp">View All Spam Accounts </a>
        
      </div>
      <div>
        <span>Products</span>
        <a href="A_AddCategory.jsp"><strong> Add Products Category </strong></a>
		<a href="A_AddPosts.jsp">Add Products Posts</a>
		<a href="A_DeletePosts.jsp">Delete Products Posts</a>
		<a href="A_AllPurchase.jsp"><strong>View Purchased Products </strong></a>
      </div>
	  <div>
        <span>Products Operations </span>
       <a href="A_ListPosts.jsp"><strong>View All Products Posts</strong></a>
	   <a href="A_PostsComments.jsp"><strong>View Products Reviews On Posts </strong></a>
		<a href="A_PosNegComments.jsp">View +ve and -ve Products Reviews </a> 
		<a href="A_SpamReviews.jsp">View All Spam Reviews </a> 
		<a href="A_RecommendedPosts.jsp"><strong>View Recommended Posts </strong></a>
		
      </div>
	  
      <div class="collapsed">
        <span>Chart Results</span>
      <a href="PositiveCommentChart.jsp"><strong>View +ve Products  Chart </strong></a>
      <a href="NegativeCommentChart.jsp"><strong>View -ve Products  Chart </strong></a>
      </div>
      <div>
        <span>Log Out</span>
         <a href="index.html"><strong>Log Out</strong></a>
		 
      </div>
	  
	  
	  
	  
   </div>

					
					
				
           
			</ul>
      </div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p class="style4">Automated Detecting Spammers In Social Media</p>
</div>
<!-- end #footer -->

</html>
