<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nazwa Firmy</title>
    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }


        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            margin: 0;
            font-size: 36px;
        }

        .top-menu ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .top-menu li {
            margin-right: 20px;
        }

        .top-menu li:last-child {
            margin-right: 0;
        }

        .top-menu a {
            color: #fff;
            text-decoration: none;
            font-size: 16px;
        }

        .top-menu a:hover {
            border-bottom: 2px solid #fff;
        }

        .side-menu {
            background-color: #f0f0f0;
            height: 100%;
            width: 200px;
            position: fixed;
            top: 100px;
            left: 0;
            padding: 20px;
        }

        .side-menu ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .side-menu li {
            margin-bottom: 10px;
        }

        .side-menu a {
            color: #333;
            text-decoration: none;
            font-size: 16px;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .side-menu a:hover {
            background-color: #ccc;
        }


        .content {
            margin-top: 100px;
            margin-left: 250px;
            padding: 20px;
        }

        .content h2 {
            margin-top: 0;
            font-size: 24px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 30;
            margin-left: 14;
        }

        table th,
        table td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        table th {
            background-color: #f0f0f0;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
        }
        .button-section {
            color: #fff;
            float: right;
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
        }
        .button-section button:hover {
            background-color: #ccc;
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        form input[type="text"],
        form input[type="password"],
        form input[type="email"]
        form input[type="mail"] {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            margin-right: 20px;

        }

        form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: #3e8e41;
        }

    </style>
</head>
<body>
<section class="form-section">

    <form:form method="post" modelAttribute="user" class="form-section">
        <h2 style="position: sticky">Add user</h2>
        <div>First Name: <form:input path="firstName"/></div>
        <div>Last Name: <form:input path="lastName"/></div>
        <div>Email: <form:input path="email"/></div>
        <div>Password: <form:input path="password" /></div>
        <input type="submit" value="Add user">
    </form:form>
</section>

</body>
</html>


</main>
<%@ include file="/WEB-INF/footer.jsp" %>
