<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }

        tbody tr:hover {
            background-color: #eaeaea;
        }

        .action-links a {
            margin-right: 5px;
        }
    </style>

</head>
<body>
<div id="navbar">
    <a href="/institutions/list">Lista Organizacji</a>
    <a href="/institutions/add">Dodaj organizacje</a>
    <a href="/admin/listUsers">Lista Użytkowników</a>
    <a href="/admin/listAdmins">Lista Administratorów</a>
    <a href="/admin/add">Dodaj Administratora</a>
    <a href="/logout">Wyloguj</a>
</div>
<section>
    <h1>Lista urzytkowników</h1>
    <table>
        <tr>
            <th>Nazwa</th>
            <th>Opis</th>
            <th>Akcja</th>
        </tr>
        <c:forEach items="${regularUsers}" var="users">
            <tr>
                <td><c:out value="${users.name}" /></td>
                <td><c:out value="${users.email}" /></td>
                <td>
                    <a href="<c:out value='deleteUsers?id=${users.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>
