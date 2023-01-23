<%@page import="com.js.dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
<h1>LIST OF ALL BOOKS </h1>
<table border ="2 solid Brown">
<tr>
	<th>Book_ID </th>
	<th>BOOK_Name </th>
	<th>Author_Name </th>
	<th>No_of_Pages </th>
	<th>Price</th>
	<th>Delete</th>
	<th>Update</th>
</tr>

<% ArrayList<Book> books = (ArrayList)request.getAttribute("data"); 
for (Book b : books) {
%>
<tr>
<td><%= b.getBook_id() %> </td>
<td><%= b.getBook_name()%> </td>
<td><%= b.getAuthor_name() %> </td>
<td><%= b.getNo_of_pages() %> </td>
<td><%= b.getPrice()%> </td>
<td><a href="delete?id=<%= b.getBook_id()%>">Delete</a></td>
<td><a href="update1?id=<%= b.getBook_id()%>">Edit</a></td>
</tr>
<% }%>

</table>
	<a href= "welcome.html">Home</a>
</body>
</html>