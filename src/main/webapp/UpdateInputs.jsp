<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="DbProperties.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String releaseDate = request.getParameter("release_date");
    String rating = request.getParameter("rating");
    String description = request.getParameter("description");
    String id=request.getParameter("id");%>

<c:set var="title" value="<%=title%>" />
<c:set var="director" value="<%=director%>" />
<c:set var="releaseDate" value="<%=releaseDate%>" />
<c:set var="rating" value="<%=rating%>" />
<c:set var="description" value="<%=description%>" />
<c:set var="id" value="<%=id%>" />

<sql:update dataSource="${db}" var="table">
    UPDATE movies
    SET TITLE = ?,
    DIRECTOR = ?,
    RELEASEDATE = ?,
    RATING = ?,
    DESCRIPTION = ?
    WHERE Movie_ID = ?
    <sql:param value="${title}" />
    <sql:param value="${director}" />
    <sql:param value="${releaseDate}" />
    <sql:param value="${rating}" />
    <sql:param value="${description}" />
    <sql:param value="${id}" />
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>