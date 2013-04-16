<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.List, java.sql.*, blog.*, java.util.ArrayList, java.util.Date"%>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<% 

Blogg bloggSystem = new Blogg();

bloggSystem = BlogFactory.createBlogSystem(bloggSystem);

Post post = new Post();
String title = request.getParameter("title");
String content = request.getParameter("content");

String[] authorIdStringArray = request.getParameterValues("author"); 
String[] categoryIdStringArray = request.getParameterValues("category");
String authorIdString = authorIdStringArray[0];
String categoryIdString = categoryIdStringArray[0];

Date date = new Date();

boolean error = false;

if(title != null && content != null){
	post.setValues(title, content, date);
}else{
	error = true;
}

if(authorIdString != null){
	int authorId = Integer.parseInt(authorIdString);
	authorId--; //remove 1 from the authorId to make it match the id in the database
	post.setAuthor(bloggSystem.getAuthors().get(authorId));
}else{
	error = true;
}

if(categoryIdString != null){
	int categoryId = Integer.parseInt(categoryIdString);
	categoryId--; //remove 1 from the categoryId to make it match the id in the database
	post.setCategory(bloggSystem.getCategories().get(categoryId));
}else{
	error = true;
}


if(error != true){
	BlogFactory.insertPost(post);	
}

	//Om fel? skicka till annan sida
	//create author, create category, remove alla 3.
    //lösa denna metod bättre?:Blogg bloggSystem = BlogFactory.createBlogSystem(); 
	//insertar inte med utf-8 och datum blir fel
	
%>
<script>window.location = '/Blogg_webb/blogg.jsp';</script>