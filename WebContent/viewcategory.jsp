<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.sql.SQLException, java.util.Date, blog.*" %>
<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Visar Kategori</title>
 <link href="bootstrap-min.css" rel="stylesheet" media="screen">   
 <link href="style.css" rel="stylesheet" media="screen"> 
</head>
<body>
<% 
	int id = Integer.parseInt(request.getParameter("id"));
	Category category = BlogFactory.getCategory(id);
	
	Blogg bloggSystem = new Blogg();
	
	bloggSystem = BlogFactory.createBlogSystem(bloggSystem);
 
%>	
	<div class="new">
		<br />
		<br />
		<h2>Inlägg under <%= category.getCategory() %>:</h2>
		<br />
		<br />
		<%
       		for (Post post : bloggSystem.getPosts()) { 
       			if(post.getCategory().getId() == id){ 
       				out.print("<h3>" + post.getTitle() + "</h3>"); 
       			}
       		}
       	%>
       	
		
		<br />
		<br />
	 
		<a href="/Blogg_webb/blogg.jsp">Gå tillbaka</a>
	</div>
    <br />
    <br />

	

</body>
</html>
