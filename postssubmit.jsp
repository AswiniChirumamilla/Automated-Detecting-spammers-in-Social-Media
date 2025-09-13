<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
			 
//Positive words				  
String TYPES[]={"good","fine"};
String ta1="attractive";
String ta2="clean";
String t1="beautiful";
			 	String t2="comfy";
			 	String t3="covenient";
			 	String t4="delicious";
			 	String t5="delicate";
			 	String t6="exciting";
			 	String t7="fresh";
			 	String t8="happy";
			 	String t9="homelike";
			 	String t10="nice";
			 	String t11="ok";
			 	String t12="yum";
				
			 	String t13="most";
			 	String t14="best";
			 	String t15="greatest";
			 	String t16="absolutely";
			 	String t17="highly";
			 	String t18="excessively";
			 	String t19="completely";
			 	String t20="entirely";
			 	String t21="100%";
			 	String t22="highest";
			 	String t23="sharply";
			 	String t24="superb";				
			 	String t25="awfully";
			 	String t26="better";
			 	String t27="lot";
			 	String t28="very";
			 	String t29="much";
			 	String t30="over";
			 	String t31="greatly";
			 	String t32="super";
			 	String t33="pretty";
			 	String t34="unsual";
				
				String t35="buoyant";
			 	String t36="calm";
			 	String t37="capable";
			 	String t38="centered";
			 	String t39="certain";
			 	String t40="charming";
			 	String t41="cheerful";
			 	String t42="clear";
			 	String t43="clever";
			 	String t44="competent";
			 	String t45="complete";
			 	String t46="confident";
			 	String t47="connected";
			 	String t48="conscious";
			 	String t49="considerate";
			 	String t50="convenient";
			 	String t51="courageous";
			 	String t52="creative";
			 	String t53="daring";
			 	String t54="dazzling";
			 	String t55="delicious";
			 	String t56="delightful";
			 	String t57="desirable";
			 	String t58="determined";
			 	String t59="diligent";
			 	String t60="discerning";
			 	String t61="discover";
			 	String t62="dynamic";
			 	String t63="eager";
			 	String t64="easy";
			 	String t65="efficient";
			 	String t66="effortless";
			 	String t67="elegant";
			 	String t68="eloquent";
			 	String t69="energetic";
			 	String t70="endless";
			 	String t71="enhancing";
			 	String t72="engaging";
			 	String t73="enormous";
			 	String t74="enterprising";
			 	String t75="enthusiastic";
			 	String t76="enticing";
			 	String t77="excellent";
			 	String t78="exceptional";
			 	String t79="exciting";
			 	String t80="experienced";
			 	String t81="exquisite";
			 	String t82="fabulous";
			 	String t83="fair";
			 	String t84="far-Sighted";
			 	String t85="fascinating";
			 	String t86="fine";
			 	String t87="flattering";
			 	String t88="flourishing";
			 	String t89="fortunate";
			 	String t90="free";
			 	String t91="friendly";
			 	String t92="fulfilled";
			 	String t93="fun";
			 	String t94="generousGenuine";
			 	String t95="gifted";
			 	String t96="glorious";
			 	String t97="glowing";
			 	String t98="good";
			 	String t99="good-Looking";
			 	String t100="gorgeous";
			 	String t101="graceful";
			 	String t102="gracious";
			 	String t103="grand";
			 	String t104="great";
			 	String t105="handsome";
			 	String t106="happy";
			 	String t107="hardy";
			 	String t108="harmonious";
			 	String t109="healed";
			 	String t110="healthy";
			 	String t111="helpful";
			 	String t112="honest";
			 	String t113="humorous";
			 	String t114="ideal";
			 	String t115="imaginative";
			 	String t116="impressive";
			 	String t117="industrious";
			 	String t118="ingenious";
			 	String t119="innovative";
			 	String t120="inspired";
			 	String t121="intelligent";
			 	String t122="interested";
			 	String t123="interesting";
			 	String t124="intuitive";
			 	String t125="inventive";
			 	String t126="invincible";
			 	String t127="inviting";
			 	String t128="irresistible";
			 	String t129="joyous";
			 	String t130="judicious";
			 	String t131="jeen";
			 	String t132="kind";
			 	String t133="knowing";
			 	String t134="limitless";
			 	String t135="lively";
			 	String t136="loving";
			 	String t137="lucky";
			 	String t138="luminous";
			 	String t139="magical";
			 	String t140="magnificent";
			 	String t141="marvelous";
			 	String t142="masterful";
			 	String t143="mighty";
			 	String t144="miraculous";
			 	String t145="motivated";
			 	String t146="natural";
			 	String t147="neat";
			 	String t148="nice";
			 	String t149="nurturing";
			 	String t150="noble";
			 	String t151="optimistic";
			 	String t152="outstanding";
			 	String t153="passionate";
			 	String t154="peaceful";
			 	String t155="perfect";
			 	String t156="persevering";
			 	String t157="persistent";
			 	String t158="playful";
			 	String t159="pleasing";
			 	String t160="plentiful";
			 	String t161="positive";
			 	String t162="powerful";
			 	String t163="precious";
			 	String t164="prepared";
			 	String t165="productive";
			 	String t166="profound";
			 	String t167="prompt";
			 	String t168="prosperous";
			 	String t169="proud";
			 	String t170="qualified";
			 	String t171="quick";
			 	String t172="radiant";
			 	String t173="reasonable";
			 	String t174="refined";
			 	String t175="refreshing";
			 	String t176="relaxing";
			 	String t177="reliable";
			 	String t178="remarkable";
			 	String t179="resolute";
			 	String t180="resourceful";
			 	String t181="respected";
			 	String t182="rewarding";
			 	String t183="robust";
			 	String t184="safe";
			 	String t185="satisfied";
			 	String t186="secure";
			 	String t187="seductive";
			 	String t188="self-Reliant";
			 	String t189="sensational";
			 	String t190="sensible";
			 	String t191="sensitive";
			 	String t192="serene";
			 	String t193="sharing";
			 	String t194="skillful";
			 	String t195="smart";
			 	String t196="smashing";
			 	String t197="smooth";
			 	String t198="sparkling";
			 	String t199="spiritual";
			 	String t200="splendid";
			 	String t201="strong";
			 	String t202="stunning";
			 	String t203="successful";
			 	String t204="superb";
			 	String t205="swift";
			 	String t206="talented";
			 	String t207="tenacious";
			 	String t208="terrific";
			 	String t209="thankful";
			 	String t210="thrilling";
			 	String t211="thriving";
			 	String t212="timely";
			 	String t213="trusting";
			 	String t214="truthful";
			 	String t215="ultimate";
			 	String t216="unique";
			 	String t217="valiant";
			 	String t218="valuable";
			 	String t219="versatile";
			 	String t220="vibrant";
			 	String t221="victorious";
			 	String t222="vigorous";
			 	String t223="vivacious";
			 	String t224="vivid";
			 	String t225="warm";
			 	String t226="wealthy";
			 	String t227="well";
			 	String t228="whole";
			 	String t229="wise";
			 	String t230="wonderful";
				
				
//Negative Words
				
				
				
				
String na1="annoyed ";
String na2="awful";
String n1="bad";
String n2="poor";
String n3="boring";
String n4="complain";
String n5="crowed";
String n6="dirty";
String n7="expensive";
String n8="hostile";
String n9="sucks";
String n10="terribly";
String n11="unfortunate";
String n12="worse";


String n13="abruptly";
String n14="abscond";
String n15="absence";
String n16="absent-minded";
String n17="absentee";
String n18="absurd";
String n19="absurdity";
String n20="absurdly";
String n21="absurdness";

String n22="abused";
String n23="abuses";
String n24="abusive";
String n25="abysmal";
String n26="abysmally";
String n27="abyss";
String n28="accidental";
String n29="accost";
String n30="accursed";
String n31="accusation";
String n32="accusations";
String n33="accuse";
String n34="accuses";
String n35="accusing";
String n36="accusingly";
String n37="acerbate";
String n38="acerbic";
String n39="acerbically";
String n40="ache";
String n41="ached";
String n42="aches";
String n43="achey";
String n44="aching";
String n45="acrid";
String n46="acridly";
String n47="acridness";
String n48="acrimonious";
String n49="acrimoniously";
String n50="acrimony";
String n51="adamant";
String n52="adamantly";
String n53="addict";
String n54="addicted";
String n55="addicting";
String n56="addicts";
String n57="admonish";
String n58="admonisher";
String n59="admonishingly";
String n60="admonishment";
String n61="admonition";
String n62="adulterate";
String n63="adulterated";
String n64="adulteration";
String n65="adulterier";
String n66="adversarial";
String n67="adversary";
String n68="adverse";
String n69="adversity";
String n70="afflict";
String n71="affliction";
String n72="afflictive";
String n73="affront";
String n74="afraid";
String n75="aggravate";
String n76="aggravating";
String n77="aggravation";
String n78="aggression";
String n79="aggressive";
String n80="aggressiveness";
String n81="aggressor";
String n82="aggrieve";
String n83="aggrieved";
String n84="aggrivation";
String n85="aghast";
String n86="agonies";
String n87="agonize";
String n88="agonizing";
String n89="agonizingly";
String n90="agony";
String n91="aground";
String n92="ail";
String n93="ailing";
String n94="ailment";
String n95="aimless";
String n96="alarm";
String n97="alarmed";
String n98="alarming";
String n99="alarmingly";
String n100="alienate";%>
<%
String p_Name =  request.getParameter("p_Name");
String p_Categorie =  request.getParameter("p_Categorie");
String s5 =  request.getParameter("comment");
			
String uname = (String)application.getAttribute("uname");

  try{      
         		if(!s5.equals(""))
				{
   		
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
					   
				Statement st1 = connection.createStatement();
				String query1 ="insert into allcomments (p_name,categorie,user,comment,date) values ('"+p_Name+"','"+p_Categorie+"','"+uname+"','"+s5+"','"+date+"')";
				
						//Checking For Negative Comments Starts..
				
				if ((s5.indexOf(na1)>=0 || s5.indexOf(na2)>=0|| s5.indexOf(n1)>=0   || s5.indexOf(n2)>=0  || s5.indexOf(n3)>=0  || s5.indexOf(n4)>=0  || s5.indexOf(n5)>=0 
									 || s5.indexOf(n6)>=0	|| s5.indexOf(n7)>=0  || s5.indexOf(n8)>=0  || s5.indexOf(n9)>=0  || s5.indexOf(n10)>=0  
									 || s5.indexOf(n11)>=0	|| s5.indexOf(n12)>=0 || s5.indexOf(n13)>=0 || s5.indexOf(n14)>=0 || s5.indexOf(n15)>=0  
									 || s5.indexOf(n16)>=0	|| s5.indexOf(n17)>=0 || s5.indexOf(n18)>=0 || s5.indexOf(n19)>=0 || s5.indexOf(n20)>=0 
									 || s5.indexOf(n21)>=0	|| s5.indexOf(n22)>=0 || s5.indexOf(n23)>=0 || s5.indexOf(n24)>=0 || s5.indexOf(n25)>=0
									 || s5.indexOf(n26)>=0	|| s5.indexOf(n27)>=0 || s5.indexOf(n28)>=0 || s5.indexOf(n29)>=0 || s5.indexOf(n30)>=0
									 || s5.indexOf(n31)>=0	|| s5.indexOf(n32)>=0 || s5.indexOf(n33)>=0 || s5.indexOf(n34)>=0 || s5.indexOf(n35)>=0
									 || s5.indexOf(n36)>=0	|| s5.indexOf(n37)>=0 || s5.indexOf(n38)>=0 || s5.indexOf(n39)>=0 || s5.indexOf(n40)>=0
									 || s5.indexOf(n41)>=0	|| s5.indexOf(n42)>=0 || s5.indexOf(n43)>=0 || s5.indexOf(n44)>=0 || s5.indexOf(n45)>=0
									 || s5.indexOf(n46)>=0	|| s5.indexOf(n47)>=0 || s5.indexOf(n48)>=0 || s5.indexOf(n49)>=0 || s5.indexOf(n50)>=0
									 || s5.indexOf(n51)>=0	|| s5.indexOf(n52)>=0 || s5.indexOf(n53)>=0 || s5.indexOf(n54)>=0 || s5.indexOf(n55)>=0
									 || s5.indexOf(n56)>=0	|| s5.indexOf(n57)>=0 || s5.indexOf(n58)>=0 || s5.indexOf(n59)>=0 || s5.indexOf(n60)>=0
									 || s5.indexOf(n61)>=0	|| s5.indexOf(n62)>=0 || s5.indexOf(n63)>=0 || s5.indexOf(n64)>=0 || s5.indexOf(n65)>=0
									 || s5.indexOf(n66)>=0	|| s5.indexOf(n67)>=0 || s5.indexOf(n68)>=0 || s5.indexOf(n69)>=0 || s5.indexOf(n70)>=0
									 || s5.indexOf(n71)>=0	|| s5.indexOf(n72)>=0 || s5.indexOf(n73)>=0 || s5.indexOf(n74)>=0 || s5.indexOf(n75)>=0
									 || s5.indexOf(n76)>=0	|| s5.indexOf(n77)>=0 || s5.indexOf(n78)>=0 || s5.indexOf(n79)>=0 || s5.indexOf(n80)>=0
									 || s5.indexOf(n81)>=0	|| s5.indexOf(n82)>=0 || s5.indexOf(n83)>=0 || s5.indexOf(n84)>=0 || s5.indexOf(n85)>=0
									 || s5.indexOf(n86)>=0	|| s5.indexOf(n87)>=0 || s5.indexOf(n88)>=0 || s5.indexOf(n89)>=0 || s5.indexOf(n90)>=0
									 || s5.indexOf(n91)>=0	|| s5.indexOf(n92)>=0 || s5.indexOf(n93)>=0 || s5.indexOf(n94)>=0 || s5.indexOf(n95)>=0
									 || s5.indexOf(n96)>=0	|| s5.indexOf(n97)>=0 || s5.indexOf(n98)>=0 || s5.indexOf(n99)>=0 || s5.indexOf(n100)>=0) &&! (s5.indexOf(ta1)>=0 || s5.indexOf(ta2)>=0 
									 || s5.indexOf(t1)>=0   || s5.indexOf(t2)>=0  || s5.indexOf(t3)>=0  || s5.indexOf(t4)>=0  || s5.indexOf(t5)>=0 
									 || s5.indexOf(t6)>=0	|| s5.indexOf(t7)>=0  || s5.indexOf(t8)>=0  || s5.indexOf(t9)>=0  || s5.indexOf(t10)>=0  
									 || s5.indexOf(t11)>=0	|| s5.indexOf(t12)>=0 || s5.indexOf(t13)>=0 || s5.indexOf(t14)>=0 || s5.indexOf(t15)>=0  
									 || s5.indexOf(t16)>=0	|| s5.indexOf(t17)>=0 || s5.indexOf(t18)>=0 || s5.indexOf(t19)>=0 || s5.indexOf(t20)>=0 
									 || s5.indexOf(t21)>=0	|| s5.indexOf(t22)>=0 || s5.indexOf(t23)>=0 || s5.indexOf(t24)>=0 || s5.indexOf(t25)>=0
									 || s5.indexOf(t26)>=0	|| s5.indexOf(t27)>=0 || s5.indexOf(t28)>=0 || s5.indexOf(t29)>=0 || s5.indexOf(t30)>=0
									 || s5.indexOf(t31)>=0	|| s5.indexOf(t32)>=0 || s5.indexOf(t33)>=0 || s5.indexOf(t34)>=0 || s5.indexOf(t35)>=0
									 || s5.indexOf(t36)>=0	|| s5.indexOf(t37)>=0 || s5.indexOf(t38)>=0 || s5.indexOf(t39)>=0 || s5.indexOf(t40)>=0
									 || s5.indexOf(t41)>=0	|| s5.indexOf(t42)>=0 || s5.indexOf(t43)>=0 || s5.indexOf(t44)>=0 || s5.indexOf(t45)>=0
									 || s5.indexOf(t46)>=0	|| s5.indexOf(t47)>=0 || s5.indexOf(t48)>=0 || s5.indexOf(t49)>=0 || s5.indexOf(t50)>=0
									 || s5.indexOf(t51)>=0	|| s5.indexOf(t52)>=0 || s5.indexOf(t53)>=0 || s5.indexOf(t54)>=0 || s5.indexOf(t55)>=0
									 || s5.indexOf(t56)>=0	|| s5.indexOf(t57)>=0 || s5.indexOf(t58)>=0 || s5.indexOf(t59)>=0 || s5.indexOf(t60)>=0
									 || s5.indexOf(t61)>=0	|| s5.indexOf(t62)>=0 || s5.indexOf(t63)>=0 || s5.indexOf(t64)>=0 || s5.indexOf(t65)>=0
									 || s5.indexOf(t66)>=0	|| s5.indexOf(t67)>=0 || s5.indexOf(t68)>=0 || s5.indexOf(t69)>=0 || s5.indexOf(t70)>=0
									 || s5.indexOf(t71)>=0	|| s5.indexOf(t72)>=0 || s5.indexOf(t73)>=0 || s5.indexOf(t74)>=0 || s5.indexOf(t75)>=0
									 || s5.indexOf(t76)>=0	|| s5.indexOf(t77)>=0 || s5.indexOf(t78)>=0 || s5.indexOf(t79)>=0 || s5.indexOf(t80)>=0
									 || s5.indexOf(t81)>=0	|| s5.indexOf(t82)>=0 || s5.indexOf(t83)>=0 || s5.indexOf(t84)>=0 || s5.indexOf(t85)>=0
									 || s5.indexOf(t86)>=0	|| s5.indexOf(t87)>=0 || s5.indexOf(t88)>=0 || s5.indexOf(t89)>=0 || s5.indexOf(t90)>=0
									 || s5.indexOf(t91)>=0	|| s5.indexOf(t92)>=0 || s5.indexOf(t93)>=0 || s5.indexOf(t94)>=0 || s5.indexOf(t95)>=0
									 || s5.indexOf(t96)>=0	|| s5.indexOf(t97)>=0 || s5.indexOf(t98)>=0 || s5.indexOf(t99)>=0 || s5.indexOf(t100)>=0
									 || s5.indexOf(t101)>=0 || s5.indexOf(t102)>=0 || s5.indexOf(t103)>=0 || s5.indexOf(t104)>=0 || s5.indexOf(t105)>=0 
									 || s5.indexOf(t106)>=0	|| s5.indexOf(t107)>=0 || s5.indexOf(t108)>=0 || s5.indexOf(t109)>=0 || s5.indexOf(t110)>=0  
									 || s5.indexOf(t111)>=0	|| s5.indexOf(t112)>=0 || s5.indexOf(t113)>=0 || s5.indexOf(t114)>=0 || s5.indexOf(t115)>=0  
									 || s5.indexOf(t116)>=0	|| s5.indexOf(t117)>=0 || s5.indexOf(t118)>=0 || s5.indexOf(t119)>=0 || s5.indexOf(t120)>=0 
									 || s5.indexOf(t121)>=0	|| s5.indexOf(t122)>=0 || s5.indexOf(t123)>=0 || s5.indexOf(t124)>=0 || s5.indexOf(t125)>=0
									 || s5.indexOf(t126)>=0	|| s5.indexOf(t127)>=0 || s5.indexOf(t128)>=0 || s5.indexOf(t129)>=0 || s5.indexOf(t130)>=0
									 || s5.indexOf(t131)>=0	|| s5.indexOf(t132)>=0 || s5.indexOf(t133)>=0 || s5.indexOf(t134)>=0 || s5.indexOf(t135)>=0
									 || s5.indexOf(t136)>=0	|| s5.indexOf(t137)>=0 || s5.indexOf(t138)>=0 || s5.indexOf(t139)>=0 || s5.indexOf(t140)>=0
									 || s5.indexOf(t141)>=0	|| s5.indexOf(t142)>=0 || s5.indexOf(t143)>=0 || s5.indexOf(t144)>=0 || s5.indexOf(t145)>=0
									 || s5.indexOf(t146)>=0	|| s5.indexOf(t147)>=0 || s5.indexOf(t148)>=0 || s5.indexOf(t149)>=0 || s5.indexOf(t150)>=0
									 || s5.indexOf(t151)>=0	|| s5.indexOf(t152)>=0 || s5.indexOf(t153)>=0 || s5.indexOf(t154)>=0 || s5.indexOf(t155)>=0
									 || s5.indexOf(t156)>=0	|| s5.indexOf(t157)>=0 || s5.indexOf(t158)>=0 || s5.indexOf(t159)>=0 || s5.indexOf(t160)>=0
									 || s5.indexOf(t161)>=0	|| s5.indexOf(t162)>=0 || s5.indexOf(t163)>=0 || s5.indexOf(t164)>=0 || s5.indexOf(t165)>=0
									 || s5.indexOf(t166)>=0	|| s5.indexOf(t167)>=0 || s5.indexOf(t168)>=0 || s5.indexOf(t169)>=0 || s5.indexOf(t70)>=0
									 || s5.indexOf(t171)>=0	|| s5.indexOf(t172)>=0 || s5.indexOf(t173)>=0 || s5.indexOf(t174)>=0 || s5.indexOf(t175)>=0
									 || s5.indexOf(t176)>=0	|| s5.indexOf(t177)>=0 || s5.indexOf(t178)>=0 || s5.indexOf(t179)>=0 || s5.indexOf(t180)>=0
									 || s5.indexOf(t181)>=0	|| s5.indexOf(t182)>=0 || s5.indexOf(t183)>=0 || s5.indexOf(t184)>=0 || s5.indexOf(t185)>=0
									 || s5.indexOf(t186)>=0	|| s5.indexOf(t187)>=0 || s5.indexOf(t188)>=0 || s5.indexOf(t189)>=0 || s5.indexOf(t190)>=0
									 || s5.indexOf(t191)>=0	|| s5.indexOf(t192)>=0 || s5.indexOf(t193)>=0 || s5.indexOf(t194)>=0 || s5.indexOf(t195)>=0
									 || s5.indexOf(t196)>=0	|| s5.indexOf(t197)>=0 || s5.indexOf(t198)>=0 || s5.indexOf(t199)>=0 || s5.indexOf(t200)>=0
									 || s5.indexOf(t201)>=0 || s5.indexOf(t202)>=0 || s5.indexOf(t203)>=0 || s5.indexOf(t204)>=0 || s5.indexOf(t205)>=0 
									 || s5.indexOf(t206)>=0	|| s5.indexOf(t207)>=0 || s5.indexOf(t208)>=0 || s5.indexOf(t209)>=0 || s5.indexOf(t210)>=0  
									 || s5.indexOf(t211)>=0	|| s5.indexOf(t212)>=0 || s5.indexOf(t213)>=0 || s5.indexOf(t214)>=0 || s5.indexOf(t215)>=0  
									 || s5.indexOf(t216)>=0	|| s5.indexOf(t217)>=0 || s5.indexOf(t218)>=0 || s5.indexOf(t219)>=0 || s5.indexOf(t220)>=0 
									 || s5.indexOf(t221)>=0	|| s5.indexOf(t222)>=0 || s5.indexOf(t223)>=0 || s5.indexOf(t224)>=0 || s5.indexOf(t225)>=0
									 || s5.indexOf(t226)>=0	|| s5.indexOf(t227)>=0 || s5.indexOf(t228)>=0 || s5.indexOf(t229)>=0 || s5.indexOf(t230)>=0))
				
				
								{
								
								//out.print("Checking Negative");
									Statement stmt8=connection.createStatement();
									String strQuery8 = "select negative from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'"; 
									ResultSet rs8 = stmt8.executeQuery(strQuery8);
									if(rs8.next()==true)
									{
											int count=rs8.getInt(1);
											
											int total=count+1;
												Statement stmt0=connection.createStatement();
												String strQuery0 = "update posts set negative='"+total+"' where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'";
												stmt0.executeUpdate(strQuery0);
									}
									/*else
									{
												int s=1;
												Statement stmt6=connection.createStatement();
												String strQuery6 = "insert into negcount(p_name,categorie,count) values('"+p_Name+"','"+p_Categorie+"','"+s+"')"; 	
												stmt6.executeUpdate(strQuery6);
									}*/	
								
								
												Statement stmt6=connection.createStatement();
												String strQuery6 = "insert into negcomments(p_name,categorie,user,comment,date) values('"+p_Name+"','"+p_Categorie+"','"+uname+"','"+s5+"','"+date+"')"; 	
												stmt6.executeUpdate(strQuery6);
								
								}
							//Checking For Negative Comments Ends..
							//Checking For Positive Comments Starts..
							
								if ((s5.indexOf(ta1)>=0 || s5.indexOf(ta2)>=0 
									 || s5.indexOf(t1)>=0   || s5.indexOf(t2)>=0  || s5.indexOf(t3)>=0  || s5.indexOf(t4)>=0  || s5.indexOf(t5)>=0 
									 || s5.indexOf(t6)>=0	|| s5.indexOf(t7)>=0  || s5.indexOf(t8)>=0  || s5.indexOf(t9)>=0  || s5.indexOf(t10)>=0  
									 || s5.indexOf(t11)>=0	|| s5.indexOf(t12)>=0 || s5.indexOf(t13)>=0 || s5.indexOf(t14)>=0 || s5.indexOf(t15)>=0  
									 || s5.indexOf(t16)>=0	|| s5.indexOf(t17)>=0 || s5.indexOf(t18)>=0 || s5.indexOf(t19)>=0 || s5.indexOf(t20)>=0 
									 || s5.indexOf(t21)>=0	|| s5.indexOf(t22)>=0 || s5.indexOf(t23)>=0 || s5.indexOf(t24)>=0 || s5.indexOf(t25)>=0
									 || s5.indexOf(t26)>=0	|| s5.indexOf(t27)>=0 || s5.indexOf(t28)>=0 || s5.indexOf(t29)>=0 || s5.indexOf(t30)>=0
									 || s5.indexOf(t31)>=0	|| s5.indexOf(t32)>=0 || s5.indexOf(t33)>=0 || s5.indexOf(t34)>=0 || s5.indexOf(t35)>=0
									 || s5.indexOf(t36)>=0	|| s5.indexOf(t37)>=0 || s5.indexOf(t38)>=0 || s5.indexOf(t39)>=0 || s5.indexOf(t40)>=0
									 || s5.indexOf(t41)>=0	|| s5.indexOf(t42)>=0 || s5.indexOf(t43)>=0 || s5.indexOf(t44)>=0 || s5.indexOf(t45)>=0
									 || s5.indexOf(t46)>=0	|| s5.indexOf(t47)>=0 || s5.indexOf(t48)>=0 || s5.indexOf(t49)>=0 || s5.indexOf(t50)>=0
									 || s5.indexOf(t51)>=0	|| s5.indexOf(t52)>=0 || s5.indexOf(t53)>=0 || s5.indexOf(t54)>=0 || s5.indexOf(t55)>=0
									 || s5.indexOf(t56)>=0	|| s5.indexOf(t57)>=0 || s5.indexOf(t58)>=0 || s5.indexOf(t59)>=0 || s5.indexOf(t60)>=0
									 || s5.indexOf(t61)>=0	|| s5.indexOf(t62)>=0 || s5.indexOf(t63)>=0 || s5.indexOf(t64)>=0 || s5.indexOf(t65)>=0
									 || s5.indexOf(t66)>=0	|| s5.indexOf(t67)>=0 || s5.indexOf(t68)>=0 || s5.indexOf(t69)>=0 || s5.indexOf(t70)>=0
									 || s5.indexOf(t71)>=0	|| s5.indexOf(t72)>=0 || s5.indexOf(t73)>=0 || s5.indexOf(t74)>=0 || s5.indexOf(t75)>=0
									 || s5.indexOf(t76)>=0	|| s5.indexOf(t77)>=0 || s5.indexOf(t78)>=0 || s5.indexOf(t79)>=0 || s5.indexOf(t80)>=0
									 || s5.indexOf(t81)>=0	|| s5.indexOf(t82)>=0 || s5.indexOf(t83)>=0 || s5.indexOf(t84)>=0 || s5.indexOf(t85)>=0
									 || s5.indexOf(t86)>=0	|| s5.indexOf(t87)>=0 || s5.indexOf(t88)>=0 || s5.indexOf(t89)>=0 || s5.indexOf(t90)>=0
									 || s5.indexOf(t91)>=0	|| s5.indexOf(t92)>=0 || s5.indexOf(t93)>=0 || s5.indexOf(t94)>=0 || s5.indexOf(t95)>=0
									 || s5.indexOf(t96)>=0	|| s5.indexOf(t97)>=0 || s5.indexOf(t98)>=0 || s5.indexOf(t99)>=0 || s5.indexOf(t100)>=0
									 || s5.indexOf(t101)>=0 || s5.indexOf(t102)>=0 || s5.indexOf(t103)>=0 || s5.indexOf(t104)>=0 || s5.indexOf(t105)>=0 
									 || s5.indexOf(t106)>=0	|| s5.indexOf(t107)>=0 || s5.indexOf(t108)>=0 || s5.indexOf(t109)>=0 || s5.indexOf(t110)>=0  
									 || s5.indexOf(t111)>=0	|| s5.indexOf(t112)>=0 || s5.indexOf(t113)>=0 || s5.indexOf(t114)>=0 || s5.indexOf(t115)>=0  
									 || s5.indexOf(t116)>=0	|| s5.indexOf(t117)>=0 || s5.indexOf(t118)>=0 || s5.indexOf(t119)>=0 || s5.indexOf(t120)>=0 
									 || s5.indexOf(t121)>=0	|| s5.indexOf(t122)>=0 || s5.indexOf(t123)>=0 || s5.indexOf(t124)>=0 || s5.indexOf(t125)>=0
									 || s5.indexOf(t126)>=0	|| s5.indexOf(t127)>=0 || s5.indexOf(t128)>=0 || s5.indexOf(t129)>=0 || s5.indexOf(t130)>=0
									 || s5.indexOf(t131)>=0	|| s5.indexOf(t132)>=0 || s5.indexOf(t133)>=0 || s5.indexOf(t134)>=0 || s5.indexOf(t135)>=0
									 || s5.indexOf(t136)>=0	|| s5.indexOf(t137)>=0 || s5.indexOf(t138)>=0 || s5.indexOf(t139)>=0 || s5.indexOf(t140)>=0
									 || s5.indexOf(t141)>=0	|| s5.indexOf(t142)>=0 || s5.indexOf(t143)>=0 || s5.indexOf(t144)>=0 || s5.indexOf(t145)>=0
									 || s5.indexOf(t146)>=0	|| s5.indexOf(t147)>=0 || s5.indexOf(t148)>=0 || s5.indexOf(t149)>=0 || s5.indexOf(t150)>=0
									 || s5.indexOf(t151)>=0	|| s5.indexOf(t152)>=0 || s5.indexOf(t153)>=0 || s5.indexOf(t154)>=0 || s5.indexOf(t155)>=0
									 || s5.indexOf(t156)>=0	|| s5.indexOf(t157)>=0 || s5.indexOf(t158)>=0 || s5.indexOf(t159)>=0 || s5.indexOf(t160)>=0
									 || s5.indexOf(t161)>=0	|| s5.indexOf(t162)>=0 || s5.indexOf(t163)>=0 || s5.indexOf(t164)>=0 || s5.indexOf(t165)>=0
									 || s5.indexOf(t166)>=0	|| s5.indexOf(t167)>=0 || s5.indexOf(t168)>=0 || s5.indexOf(t169)>=0 || s5.indexOf(t70)>=0
									 || s5.indexOf(t171)>=0	|| s5.indexOf(t172)>=0 || s5.indexOf(t173)>=0 || s5.indexOf(t174)>=0 || s5.indexOf(t175)>=0
									 || s5.indexOf(t176)>=0	|| s5.indexOf(t177)>=0 || s5.indexOf(t178)>=0 || s5.indexOf(t179)>=0 || s5.indexOf(t180)>=0
									 || s5.indexOf(t181)>=0	|| s5.indexOf(t182)>=0 || s5.indexOf(t183)>=0 || s5.indexOf(t184)>=0 || s5.indexOf(t185)>=0
									 || s5.indexOf(t186)>=0	|| s5.indexOf(t187)>=0 || s5.indexOf(t188)>=0 || s5.indexOf(t189)>=0 || s5.indexOf(t190)>=0
									 || s5.indexOf(t191)>=0	|| s5.indexOf(t192)>=0 || s5.indexOf(t193)>=0 || s5.indexOf(t194)>=0 || s5.indexOf(t195)>=0
									 || s5.indexOf(t196)>=0	|| s5.indexOf(t197)>=0 || s5.indexOf(t198)>=0 || s5.indexOf(t199)>=0 || s5.indexOf(t200)>=0
									 || s5.indexOf(t201)>=0 || s5.indexOf(t202)>=0 || s5.indexOf(t203)>=0 || s5.indexOf(t204)>=0 || s5.indexOf(t205)>=0 
									 || s5.indexOf(t206)>=0	|| s5.indexOf(t207)>=0 || s5.indexOf(t208)>=0 || s5.indexOf(t209)>=0 || s5.indexOf(t210)>=0  
									 || s5.indexOf(t211)>=0	|| s5.indexOf(t212)>=0 || s5.indexOf(t213)>=0 || s5.indexOf(t214)>=0 || s5.indexOf(t215)>=0  
									 || s5.indexOf(t216)>=0	|| s5.indexOf(t217)>=0 || s5.indexOf(t218)>=0 || s5.indexOf(t219)>=0 || s5.indexOf(t220)>=0 
									 || s5.indexOf(t221)>=0	|| s5.indexOf(t222)>=0 || s5.indexOf(t223)>=0 || s5.indexOf(t224)>=0 || s5.indexOf(t225)>=0
									 || s5.indexOf(t226)>=0	|| s5.indexOf(t227)>=0 || s5.indexOf(t228)>=0 || s5.indexOf(t229)>=0 || s5.indexOf(t230)>=0) && !(s5.indexOf(na1)>=0 || s5.indexOf(na2)>=0|| s5.indexOf(n1)>=0   || s5.indexOf(n2)>=0  || s5.indexOf(n3)>=0  || s5.indexOf(n4)>=0  || s5.indexOf(n5)>=0 
									 || s5.indexOf(n6)>=0	|| s5.indexOf(n7)>=0  || s5.indexOf(n8)>=0  || s5.indexOf(n9)>=0  || s5.indexOf(n10)>=0  
									 || s5.indexOf(n11)>=0	|| s5.indexOf(n12)>=0 || s5.indexOf(n13)>=0 || s5.indexOf(n14)>=0 || s5.indexOf(n15)>=0  
									 || s5.indexOf(n16)>=0	|| s5.indexOf(n17)>=0 || s5.indexOf(n18)>=0 || s5.indexOf(n19)>=0 || s5.indexOf(n20)>=0 
									 || s5.indexOf(n21)>=0	|| s5.indexOf(n22)>=0 || s5.indexOf(n23)>=0 || s5.indexOf(n24)>=0 || s5.indexOf(n25)>=0
									 || s5.indexOf(n26)>=0	|| s5.indexOf(n27)>=0 || s5.indexOf(n28)>=0 || s5.indexOf(n29)>=0 || s5.indexOf(n30)>=0
									 || s5.indexOf(n31)>=0	|| s5.indexOf(n32)>=0 || s5.indexOf(n33)>=0 || s5.indexOf(n34)>=0 || s5.indexOf(n35)>=0
									 || s5.indexOf(n36)>=0	|| s5.indexOf(n37)>=0 || s5.indexOf(n38)>=0 || s5.indexOf(n39)>=0 || s5.indexOf(n40)>=0
									 || s5.indexOf(n41)>=0	|| s5.indexOf(n42)>=0 || s5.indexOf(n43)>=0 || s5.indexOf(n44)>=0 || s5.indexOf(n45)>=0
									 || s5.indexOf(n46)>=0	|| s5.indexOf(n47)>=0 || s5.indexOf(n48)>=0 || s5.indexOf(n49)>=0 || s5.indexOf(n50)>=0
									 || s5.indexOf(n51)>=0	|| s5.indexOf(n52)>=0 || s5.indexOf(n53)>=0 || s5.indexOf(n54)>=0 || s5.indexOf(n55)>=0
									 || s5.indexOf(n56)>=0	|| s5.indexOf(n57)>=0 || s5.indexOf(n58)>=0 || s5.indexOf(n59)>=0 || s5.indexOf(n60)>=0
									 || s5.indexOf(n61)>=0	|| s5.indexOf(n62)>=0 || s5.indexOf(n63)>=0 || s5.indexOf(n64)>=0 || s5.indexOf(n65)>=0
									 || s5.indexOf(n66)>=0	|| s5.indexOf(n67)>=0 || s5.indexOf(n68)>=0 || s5.indexOf(n69)>=0 || s5.indexOf(n70)>=0
									 || s5.indexOf(n71)>=0	|| s5.indexOf(n72)>=0 || s5.indexOf(n73)>=0 || s5.indexOf(n74)>=0 || s5.indexOf(n75)>=0
									 || s5.indexOf(n76)>=0	|| s5.indexOf(n77)>=0 || s5.indexOf(n78)>=0 || s5.indexOf(n79)>=0 || s5.indexOf(n80)>=0
									 || s5.indexOf(n81)>=0	|| s5.indexOf(n82)>=0 || s5.indexOf(n83)>=0 || s5.indexOf(n84)>=0 || s5.indexOf(n85)>=0
									 || s5.indexOf(n86)>=0	|| s5.indexOf(n87)>=0 || s5.indexOf(n88)>=0 || s5.indexOf(n89)>=0 || s5.indexOf(n90)>=0
									 || s5.indexOf(n91)>=0	|| s5.indexOf(n92)>=0 || s5.indexOf(n93)>=0 || s5.indexOf(n94)>=0 || s5.indexOf(n95)>=0
									 || s5.indexOf(n96)>=0	|| s5.indexOf(n97)>=0 || s5.indexOf(n98)>=0 || s5.indexOf(n99)>=0 || s5.indexOf(n100)>=0))
									 {
									 								//out.print("Checking Positive");
												Statement stmt81=connection.createStatement();
												String strQuery81 = "select positive from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'"; 
												ResultSet rs81 = stmt81.executeQuery(strQuery81);
												if(rs81.next()==true)
												{
														int count1=rs81.getInt(1);
														
														int total1=count1+1;
															Statement stmt01=connection.createStatement();
															String strQuery01 = "update posts set positive='"+total1+"' where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'";
															stmt01.executeUpdate(strQuery01);
												}
												/*else
												{
															int s1=1;
															Statement stmt61=connection.createStatement();
															String strQuery61 = "insert into poscount(p_name,categorie,count) values('"+p_Name+"','"+p_Categorie+"','"+s1+"')"; 	
															stmt61.executeUpdate(strQuery61);
												}	*/
											
											
															Statement stmt61=connection.createStatement();
															String strQuery61 = "insert into poscomments(p_name,categorie,user,comment,date) values('"+p_Name+"','"+p_Categorie+"','"+uname+"','"+s5+"','"+date+"')"; 	
															stmt61.executeUpdate(strQuery61);
												 
									 
									 }
				
				
				
					//Checking For Positive Comments Ends..
				
				
				int k=st1.executeUpdate (query1);
				  if(k>0)
				  {
				  				  %><br/>
<p class="style46">Reviewed Successfully..</p>
								  <p class="style17"><br/>
							      <a href="SearchPostsDetails.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a></p>
									<%
								
				  }

		}
		else
		{
		
								 %><br/>
									<p class="style46">Enter Your Review !!..</p>
								    <p class="style17"><br/>
							      <a href="SearchPostsDetails.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a></p>
					<%								  
		}

  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

</body>
</html>
