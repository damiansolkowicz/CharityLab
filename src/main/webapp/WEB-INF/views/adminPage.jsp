<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Panel Administratora</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        #navbar {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        #navbar a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
        }

        #content {
            margin-top: 20px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        .user {
            background-color: #f4f4f4;
            padding: 10px;
            display: inline-block;
            text-align: left;
        }

        .user-details {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .user-email {
            color: #888;
        }
    </style>
</head>
<body>
<div id="navbar">
    <a href="/institutions/list">Lista Organizacji</a>
    <a href="#">Lista Użytkowników</a>
    <a href="#">Lista Administratorów</a>
    <a href="/admin/add">Dodaj Administratora</a>
    <a href="/logout">Wyloguj</a>
</div>
<%--<section>
    <h1>Lista urzytkowników</h1>
    <table>
        <tr>
            <th>Nazwa</th>

    </table>        <th>Opis</th>
    <th>Akcja</th>
    </tr>
    <c:forEach items="${institutions}" var="institution">
        <tr>
            <td>${institution.name}</td>
            <td>${institution.description}</td>
            <td><a href="<c:out value="edit?id=${institution.id}"/>">Edit</a>
                <a href="<c:out value="delete?id=${institution.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
</section>--%>
</body>
</html>
