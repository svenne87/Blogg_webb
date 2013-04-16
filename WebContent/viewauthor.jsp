<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.sql.SQLException, java.util.Date, blog.*" %>
<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bloggen</title>
 <link href="bootstrap-min.css" rel="stylesheet" media="screen">   
 <link href="style.css" rel="stylesheet" media="screen"> 
</head>
<body>
<% 
	int id = Integer.parseInt(request.getParameter("id"));
	Author author = BlogFactory.getAuthor(id);
 
%>	
	<div class="new">
		<br />
		<br />
		<p><b>Namn:</b> <%= author.getName() %></p> 
		<p><b>Ålder:</b> <%= author.getAge() %></p> 
		<p><b>Kön:</b> <%= author.getGender() %></p> 
		<p><b>Land:</b> <%= author.getCountry() %></p> 
		<p><b>Email:</b> <%= author.getEmail() %></p> 
		
		<br />
		<br />
	 
		<a href="/Blogg_webb/blogg.jsp">Gå tillbaka</a>
	</div>
    <br />
    <br />

	

</body>
</html>
