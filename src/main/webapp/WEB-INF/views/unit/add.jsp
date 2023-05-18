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
        <div>Name: <form:input path="name"/></div>
        <input type="submit" value="Add new unit">
        </form:form>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
