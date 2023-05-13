<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<main>
    <section class="content">
        <h2>Zarejestruj się:</h2>
        <form:form method="post" modelAttribute="user" class="form-section">

        <div>Name: <form:input path="firstName"/></div>
        <div>Surname: <form:input path="lastName"/></div>
        <div>City: <form:input path="email"/></div>
        <div>Email: <form:input path="password"/></div>
        <input type="submit" value="Register">
        </form:form>




</main>
<%@ include file="/WEB-INF/footer.jsp" %>
