<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Check Input</title>
</head>

<style>

  body {
    font-family: Arial, sans-serif;
  }

  ul {
    list-style: none;
    padding: 0;
    margin: 20px 0;
  }

  li {
    margin-bottom: 10px;
  }

  a {
    background-color: skyblue;
    color: white;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 4px;
  }

  a:hover {
    background-color: green;
  }

</style>

<body>

<%
  String title = request.getParameter("title");
  String director = request.getParameter("director");
  String releaseDate = request.getParameter("release_date");
  String rating = request.getParameter("rating");
  String description = request.getParameter("description");
%>

<ul>
  <li>Title: <%= title %></li>
  <li>Director: <%= director %></li>
  <li>Release Date: <%= releaseDate %></li>
  <li>Rating: <%= rating %></li>
  <li>Description: <%= description %></li>
</ul>

<a href="SaveInputs.jsp?title=<%= title %>&director=<%= director %>&release_date=<%= releaseDate %>&rating=<%= rating %>&description=<%= description %>">Save</a>
</body>
</html>