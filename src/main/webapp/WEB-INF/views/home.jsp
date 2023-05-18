<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Supply Manager</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
        }
        a {
            display: block;
            width: 300px;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            background-color: #333;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #666;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Witaj na Menadżerze Dostaw</h1>
    <a href="/login">Zaloguj</a>
    <a href="/registration">Zarejestruj</a>
    <a href="/pesel">Wyszukaj po PESEL</a>
</div>
</body>
</html>
<%@ include file="/WEB-INF/footer.jsp" %>
