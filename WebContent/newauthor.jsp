<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.sql.SQLException, java.util.Date, blog.*" %>
<% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Skapa författare</title>
 <link href="bootstrap-min.css" rel="stylesheet" media="screen">   
 <link href="style.css" rel="stylesheet" media="screen"> 
</head>
<body>
<% 


%>	
	<div class="new">
	    <h1>Skapa ny författare</h1>
		<form class="blogg" method="post" action="createauthor.jsp">
			<label for="firstName">Förnamn:</label>
			<input name="firstName" id="firstName-input" placeholder="Skriv förnamn" required pattern=".{2,200}" maxlength="200">
			<br />
			
			<label for="lastName">Efternamn:</label>
			<input name="lastName" id="lastName-input" placeholder="Skriv efternamn" required pattern=".{2,200}" maxlength="200">
			<br />
	
			<label for="age">Ålder:</label>
			<select name="age">
			<% for (int i = 1; i <= 100; i++) { %>
				<option value="<%= i%>"><%= i %></option>
			<% } %>
			</select>
			<br />
			
			<label for="gender">Kön:</label>
			<select name="gender">
				<option value="1">Man</option>
				<option value="2">Kvinna</option>
			</select>
			<br />
			
			<label for="country">Land:</label>
			<input name="country" placeholder="Skriv land" id="country-input" required pattern=".{2,200}">
			<br />
			
			<label for="mail">Epost:</label>
			<input type="email" name="mail" placeholder="Skriv epost" id="mail-input">
			<br />
			
			<input name="submit" id="submit-button" type="submit" value="Skapa författare">
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
