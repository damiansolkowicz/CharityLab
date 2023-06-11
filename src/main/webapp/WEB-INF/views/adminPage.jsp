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
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .tile {
            width: 200px;
            height: 150px;
            background-color: lightblue;
            margin: 10px;
            padding: 10px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .tile:hover {
            background-color: gray;
        }

        .tile h3 {
            color: white;
        }

        .tile p {
            font-size: 24px;
            font-weight: bold;
        }

    </style>
</head>
<body>
<div id="navbar">
    <a href="/institutions/list">Lista Organizacji</a>
    <a href="/admin/listUsers">Lista Użytkowników</a>
    <a href="/admin/listAdmins">Lista Administratorów</a>
    <a href="/admin/add">Dodaj Administratora</a>
    <a href="/logout">Wyloguj</a>
</div>
<section>
    <div class="container">
        <div class="tile">
            <h3>Zarejestrowani użytkownicy</h3>
            <p id="userCount">${regularUsersQuantity}</p>
        </div>
        <div class="tile">
            <h3>Zarejestrowani administratorzy</h3>
            <p id="adminCount">${adminsQuantity}</p>
        </div>
    </div>

</section>
</body>
</html>
