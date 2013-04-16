<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.List, java.sql.*, blog.*, java.util.ArrayList, java.util.Date"%>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<%  

	int id = Integer.parseInt(request.getParameter("id"));
	BlogFactory.removePost(id); 
%> 

<script>window.location = '/Blogg_webb/blogg.jsp';</script>