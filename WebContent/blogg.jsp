<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" import="java.util.List, java.sql.SQLException, java.util.Date, blog.*" %>
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
	Blogg bloggSystem = new Blogg();

	bloggSystem.setAuthors(BlogFactory.getAllAuthors());
	bloggSystem.setCategories(BlogFactory.getAllCategories());
	bloggSystem.setPosts(BlogFactory.getAllPosts(bloggSystem));

%>	
	<div class="new-post">
	    <h1>Skapa nytt inlägg</h1>
		<form class="blogg" method="post" action="">
			<label for="title">Titel:</label>
			<input name="title" id="title-input" placeholder="Skriv titeln här" required pattern=".{2,200}" maxlength="200">
			<br />
			
			<label for="author">Författare:</label>
			<select name="author">
				<% if (bloggSystem.getAuthors().size() > 0) {%>
					<% for (Author author : bloggSystem.getAuthors()){ %>
						<option value="<%= author.getId() %>"> <%= author.getName() %></option>
					<% } %>
				<% }else{ %>
					<option>Inga författare hittades</option>
				<% } %>
			</select>
			<br />
			
			<label for="category">Kategori:</label>
			<select name="category">
				<% if (bloggSystem.getCategories().size() > 0) { %>
					<% for ( Category category : bloggSystem.getCategories()){ %>
						<option value="<%= category.getId()%>"> <%= category.getCategory() %></option>
					<% } %>
				<%} else { %>
					<option>Inga kategories hittades</option>
				<%} %>
			</select>
			<br />
			
			<label for="content">Meddelande</label>
			<textarea name="content" placeholder="Skriv inlägg här" id="content-input" required maxlength="2000"></textarea>
			<br />
			
			<input name="submit" id="submit-button" type="submit" value="Posta inlägg">
		</form> 
		<br />
		<a href="#">Skapa ny författare</a>
		<br />
		<br />
		<a href="">Skapa ny kategori</a>
	</div>
    <br />
    <br />




<ul>
	
	<% 
	for (Post post : bloggSystem.getPosts()) { %>
		<li>
		  <h1><%= post.getTitle() %></h1>
		  <p>Kategori: <%= post.getCategory().getCategory() %></p>
		  <p><%= post.getContent() %></p>
		  <p>Skrivet av: <%= post.getAuthor().getName() %></p>
		  <p><%= post.getDate() %></p>
		<div class="divider"></div>
		<br />
		</li>
	<% } %>

</ul>

</body>
</html>
