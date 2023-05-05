<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <nav class="side-menu">
        <ul>
            <li><a href="/supplier/list">Lista Dostawców</a></li>
            <li><a href="#">Lista Produktów</a></li>
            <li><a href="/supplier/add">Dodaj dostawcę</a></li>
            <li><a href="#">Dodaj produkt</a></li>
            <br>
            <li>Wyświetl dla producenta:</li>
            <br>
            <li><select>
                <option><a href="#">Jan Nowak</a></option>
                <option><a href="#">Jan Kowalski</a></option>
                <option><a href="#">Damian Sołkowicz</a></option>
                <option><a href="#">Jan Pączek</a></option>
                <option><a href="#">Polska Papryka sp. z o.o. </a></option>

            </select><li>

        </ul>
    </nav>
    <section class="content">
        <h2>Dodaj nowego dostawcę:</h2>
        <form:form method="post" modelAttribute="supplier" class="form-section">

        <div>Name: <form:input path="name"/></div>
        <div>Surname: <form:input path="surname"/></div>
        <div>City: <form:input path="city"/></div>
        <div>Email: <form:input path="email"/></div>
        <input type="submit" value="Add supplier">
        </form:form>




</main>
<%@ include file="/WEB-INF/footer.jsp" %>
