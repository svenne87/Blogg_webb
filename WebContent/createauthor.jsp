<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.List, java.sql.*, blog.*, java.util.ArrayList, java.util.Date"%>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<%  

Author author = new Author();

request.setCharacterEncoding("UTF-8");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");

String[] ageStringArray = request.getParameterValues("age"); 
String ageString = ageStringArray[0];

String[] genderStringArray = request.getParameterValues("gender");
String genderString = genderStringArray[0];

String country = request.getParameter("country");
String email = request.getParameter("mail");


boolean error = false;
int age = 0;
String gender = null;

if(ageString != null){
	age = Integer.parseInt(ageString);
}else{
	error = true;
}

genderString = genderString.trim();

if(genderString != null){
	if(genderString.indexOf("1")!=-1){
		gender = "male";
	}else{
		gender = "female";
	}
}else{
	error = true;
}



if(firstName != null && lastName != null && country != null && email != null && gender != null && age != 0){
	author.setValues(firstName, lastName, age, gender, country, email);
}else{
	error = true;
}


//missar gender
if(error != true){
	BlogFactory.insertAuthor(author);	
	%>
	<script>window.location = '/Blogg_webb/blogg.jsp';</script>
<%}else{%>
    <script>alert("Något gick fel, försök igen!"); window.location = '/Blogg_webb/newauthor.jsp';</script>
<%} %>

