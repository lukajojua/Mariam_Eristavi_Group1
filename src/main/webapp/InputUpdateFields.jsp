<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Record</title>
</head>
<style>

    form {
        width: 300px;
        margin: 20px auto;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 10px;
    }

    input[type="date"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 10px;
    }

    input[type="submit"] {
        background-color: green;
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

</style>

<body>

<form action="CheckInputUpdate.jsp" method="post" target="_self">
    <input type="hidden" id="id" name="id" value="<%= request.getParameter("id") %>">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title"><br><br>

    <label for="director">Director:</label>
    <input type="text" id="director" name="director"><br><br>

    <label for="release_date">Release Date:</label>
    <input type="date" id="release_date" name="release_date"><br><br>

    <label for="rating">Rating:</label>
    <input type="text" id="rating" name="rating"><br><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description"></textarea><br><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
