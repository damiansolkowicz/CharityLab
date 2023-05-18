<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/headerNotLoggedIn.jsp" %>
<body>
<section class="content">
    <h1>Search Deliveries</h1>
    <form:form action="/pesel" method="GET">
    <label for="pesel">Supplier PESEL:</label>
    <input type="text" id="pesel" name="pesel" required>
    <button type="submit">Search</button>
    </form:form>
</body>
<%@ include file="/WEB-INF/footer.jsp" %>
