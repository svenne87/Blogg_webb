<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" import="java.util.List, blog.*" %>
<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Blogg bloggSystem = new Blogg();
		
	bloggSystem.setAuthors(BlogFactory.getAllAuthors());
	bloggSystem.setCategories(BlogFactory.getAllCategories());
	bloggSystem.setPosts(BlogFactory.getAllPosts(bloggSystem));

%>	
<ul>
	
	<% 
	for (Post post : bloggSystem.getPosts()) { %>
		<li>
		<%= post.getBlogPost() %>
		</li>
	<% } %>

</ul>

</body>
</html>
