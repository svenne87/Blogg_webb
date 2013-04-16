<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.List, java.sql.*, blog.*, java.util.ArrayList, java.util.Date"%>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<%  

Blogg bloggSystem = new Blogg();

bloggSystem = BlogFactory.createBlogSystem(bloggSystem);

Category category = new Category();

request.setCharacterEncoding("UTF-8");
String title = request.getParameter("category-name");

boolean error = false;


if(title != null){
	category.setValues(title);
}else{
	error = true;
}


if(error != true){
	BlogFactory.insertCategory(category);	
	%>
	<script>window.location = '/Blogg_webb/blogg.jsp';</script>
<%}else{%>
    <script>alert("Något gick fel, försök igen!"); window.location = '/Blogg_webb/createpost.jsp';</script>
<%} %>

