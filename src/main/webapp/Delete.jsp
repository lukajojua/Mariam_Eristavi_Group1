<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="DbProperties.jsp" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

<%
  String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>" />
<sql:update var="count" dataSource="${db}">
  DELETE FROM movies WHERE Movie_ID = ?
  <sql:param value="${id}" />
</sql:update>


<a href="./index.jsp">Home</a>

</body>
</html>-