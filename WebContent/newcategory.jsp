<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.sql.SQLException, java.util.Date, blog.*" %>
<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Skapa kategori</title>
 <link href="bootstrap-min.css" rel="stylesheet" media="screen">   
 <link href="style.css" rel="stylesheet" media="screen"> 
</head>
<body>
<% 


%>	
	<div class="new">
	    <h1>Skapa ny kategori</h1>
		<form class="blogg" method="post" action="createcategory.jsp">
			<label for="category-name">Namn:</label>
			<input name="category-name" placeholder="Skriv förnamn" required pattern=".{2,200}" maxlength="200">
			<br />
			<br />
			<input name="submit" id="submit-button" type="submit" value="Skapa kategori">
		</form> 
		<br />
		<a href="/Blogg_webb/blogg.jsp">Gå tillbaka</a>
		<br />
		<br />
	</div>
    <br />
    <br />

	

</body>
</html>
