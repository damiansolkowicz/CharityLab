<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <%@ include file="/WEB-INF/sidenav.jsp" %>
    <section class="content">
        <h2>Add unit:</h2>
        <form:form method="post" modelAttribute="unit" class="form-section">
        <div>Full name: <form:input path="fullName"/></div>
        <div>Abbreviation: <form:input path="abbreviation"/></div>
        <input type="submit" value="Add new unit">
        </form:form>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
