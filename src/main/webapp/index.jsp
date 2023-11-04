<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="DbProperties.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>

<style>

    table {
        width: 100%;
    }

    th, td {
        padding: 5px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    a {
        color: skyblue;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

</style>

<body>

<sql:query var="rs" dataSource="${db}">
    SELECT * FROM MOVIES;
</sql:query>

<a href="./AddToDB.jsp">Add Movie</a>

<table>

    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Director</th>
        <th>Release Date</th>
        <th>Rating</th>
        <th>Description</th>
        <th>Action</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${rs.rows}" var="movie">
        <tr>
            <td>${movie.Movie_ID}</td>
            <td>${movie.Title}</td>
            <td>${movie.Director}</td>
            <td>${movie.ReleaseDate}</td>--
            <td>${movie.Rating}</td>
            <td>${movie.Description}</td>
            <td><a href="./Delete.jsp?id=${movie.Movie_ID}">Delete</a></td>
            <td><a href="./InputUpdateFields.jsp?id=${movie.Movie_ID}">Update</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>-