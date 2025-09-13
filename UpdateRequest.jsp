<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<html><title>Structured Learning: user status changing</title>
<body>
	<center>&nbsp;</center>
	<%
  		String rto =request.getParameter("rname");
		String rfrom=(String)application.getAttribute("uname");
   		try {
	   						String query="select * from frequest where  (requestfrom='"+rfrom+"' and requestto='"+rto+"')|| (requestfrom='"+rto+"' and requestto='"+rfrom+"')";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if( rs.next()==true)
					   		{
								String status=rs.getString(5);
								if(status.equals("Accepted"))
								{
									out.print("He is Already Friend....");%>
									<br/><br/><a href="SearchFriends.jsp">Back</a><%
								}
								else
								{
								
										out.print("Friend Request Already Sent....");%>
										<br/><br/><a href="SearchFriends.jsp">Back</a><%
								}
							}
							else
							{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								Date now = new Date();
													
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								
										
								
								Statement st1 = connection.createStatement();
								String query1 ="insert into frequest (requestfrom,requestto,dt,status) values ('"+rfrom+"','"+rto+"','"+dt+"','waiting')";
								st1.executeUpdate (query1);
								
								out.print("Friend Request Sent....");%>
								<br/><br/><a href="SearchFriends.jsp">Back</a><%
								
								}
										
								
	   		
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
		
   		
	
	%>
</body>
</html>
